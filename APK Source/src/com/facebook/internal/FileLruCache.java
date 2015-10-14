// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.Settings;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            Utility, Logger

public final class FileLruCache
{
    private static class BufferFile
    {

        private static final String FILE_NAME_PREFIX = "buffer";
        private static final FilenameFilter filterExcludeBufferFiles = new _cls1();
        private static final FilenameFilter filterExcludeNonBufferFiles = new _cls2();

        static void deleteAll(File file)
        {
            file = file.listFiles(excludeNonBufferFiles());
            if (file != null)
            {
                int j = file.length;
                for (int i = 0; i < j; i++)
                {
                    file[i].delete();
                }

            }
        }

        static FilenameFilter excludeBufferFiles()
        {
            return filterExcludeBufferFiles;
        }

        static FilenameFilter excludeNonBufferFiles()
        {
            return filterExcludeNonBufferFiles;
        }

        static File newFile(File file)
        {
            return new File(file, (new StringBuilder("buffer")).append(Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString()).toString());
        }


        private BufferFile()
        {
        }

        class _cls1
            implements FilenameFilter
        {

            public final boolean accept(File file, String s)
            {
                return !s.startsWith("buffer");
            }

                _cls1()
                {
                }
        }


        class _cls2
            implements FilenameFilter
        {

            public final boolean accept(File file, String s)
            {
                return s.startsWith("buffer");
            }

                _cls2()
                {
                }
        }

    }

    private static class CloseCallbackOutputStream extends OutputStream
    {

        final StreamCloseCallback callback;
        final OutputStream innerStream;

        public void close()
        {
            innerStream.close();
            callback.onClose();
            return;
            Exception exception;
            exception;
            callback.onClose();
            throw exception;
        }

        public void flush()
        {
            innerStream.flush();
        }

        public void write(int i)
        {
            innerStream.write(i);
        }

        public void write(byte abyte0[])
        {
            innerStream.write(abyte0);
        }

        public void write(byte abyte0[], int i, int j)
        {
            innerStream.write(abyte0, i, j);
        }

        CloseCallbackOutputStream(OutputStream outputstream, StreamCloseCallback streamclosecallback)
        {
            innerStream = outputstream;
            callback = streamclosecallback;
        }
    }

    private static final class CopyingInputStream extends InputStream
    {

        final InputStream input;
        final OutputStream output;

        public final int available()
        {
            return input.available();
        }

        public final void close()
        {
            input.close();
            output.close();
            return;
            Exception exception;
            exception;
            output.close();
            throw exception;
        }

        public final void mark(int i)
        {
            throw new UnsupportedOperationException();
        }

        public final boolean markSupported()
        {
            return false;
        }

        public final int read()
        {
            int i = input.read();
            if (i >= 0)
            {
                output.write(i);
            }
            return i;
        }

        public final int read(byte abyte0[])
        {
            int i = input.read(abyte0);
            if (i > 0)
            {
                output.write(abyte0, 0, i);
            }
            return i;
        }

        public final int read(byte abyte0[], int i, int j)
        {
            j = input.read(abyte0, i, j);
            if (j > 0)
            {
                output.write(abyte0, i, j);
            }
            return j;
        }

        public final void reset()
        {
            this;
            JVM INSTR monitorenter ;
            throw new UnsupportedOperationException();
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public final long skip(long l)
        {
            byte abyte0[] = new byte[1024];
            int i;
            long l1;
            for (l1 = 0L; l1 < l; l1 += i)
            {
                i = read(abyte0, 0, (int)Math.min(l - l1, abyte0.length));
                if (i < 0)
                {
                    return l1;
                }
            }

            return l1;
        }

        CopyingInputStream(InputStream inputstream, OutputStream outputstream)
        {
            input = inputstream;
            output = outputstream;
        }
    }

    public static final class Limits
    {

        private int byteCount;
        private int fileCount;

        final int getByteCount()
        {
            return byteCount;
        }

        final int getFileCount()
        {
            return fileCount;
        }

        final void setByteCount(int i)
        {
            if (i < 0)
            {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            } else
            {
                byteCount = i;
                return;
            }
        }

        final void setFileCount(int i)
        {
            if (i < 0)
            {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            } else
            {
                fileCount = i;
                return;
            }
        }

        public Limits()
        {
            fileCount = 1024;
            byteCount = 0x100000;
        }
    }

    private static final class ModifiedFile
        implements Comparable
    {

        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        public final int compareTo(ModifiedFile modifiedfile)
        {
            if (getModified() < modifiedfile.getModified())
            {
                return -1;
            }
            if (getModified() > modifiedfile.getModified())
            {
                return 1;
            } else
            {
                return getFile().compareTo(modifiedfile.getFile());
            }
        }

        public final volatile int compareTo(Object obj)
        {
            return compareTo((ModifiedFile)obj);
        }

        public final boolean equals(Object obj)
        {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile)obj) == 0;
        }

        final File getFile()
        {
            return file;
        }

        final long getModified()
        {
            return modified;
        }

        public final int hashCode()
        {
            return (file.hashCode() + 1073) * 37 + (int)(modified % 0x7fffffffL);
        }

        ModifiedFile(File file1)
        {
            file = file1;
            modified = file1.lastModified();
        }
    }

    private static interface StreamCloseCallback
    {

        public abstract void onClose();
    }

    private static final class StreamHeader
    {

        private static final int HEADER_VERSION = 0;

        static JSONObject readHeader(InputStream inputstream)
        {
            if (inputstream.read() != 0)
            {
                return null;
            }
            int i = 0;
            int k = 0;
            for (; i < 3; i++)
            {
                int i1 = inputstream.read();
                if (i1 == -1)
                {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                k = (k << 8) + (i1 & 0xff);
            }

            byte abyte0[] = new byte[k];
            int l;
            for (int j = 0; j < abyte0.length; j += l)
            {
                l = inputstream.read(abyte0, j, abyte0.length - j);
                if (l <= 0)
                {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: stream.read stopped at ")).append(Integer.valueOf(j)).append(" when expected ").append(abyte0.length).toString());
                    return null;
                }
            }

            inputstream = new JSONTokener(new String(abyte0));
            inputstream = ((InputStream) (inputstream.nextValue()));
            if (inputstream instanceof JSONObject)
            {
                break MISSING_BLOCK_LABEL_197;
            }
            Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: expected JSONObject, got ")).append(inputstream.getClass().getCanonicalName()).toString());
            return null;
            try
            {
                inputstream = (JSONObject)inputstream;
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new IOException(inputstream.getMessage());
            }
            return inputstream;
        }

        static void writeHeader(OutputStream outputstream, JSONObject jsonobject)
        {
            jsonobject = jsonobject.toString().getBytes();
            outputstream.write(0);
            outputstream.write(jsonobject.length >> 16 & 0xff);
            outputstream.write(jsonobject.length >> 8 & 0xff);
            outputstream.write(jsonobject.length >> 0 & 0xff);
            outputstream.write(jsonobject);
        }

        private StreamHeader()
        {
        }
    }


    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG = com/facebook/internal/FileLruCache.getSimpleName();
    private static final AtomicLong bufferIndex = new AtomicLong();
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private AtomicLong lastClearCacheTime;
    private final Limits limits;
    private final Object lock = new Object();
    private final String tag;

    public FileLruCache(Context context, String s, Limits limits1)
    {
        lastClearCacheTime = new AtomicLong(0L);
        tag = s;
        limits = limits1;
        directory = new File(context.getCacheDir(), s);
        if (directory.mkdirs() || directory.isDirectory())
        {
            BufferFile.deleteAll(directory);
        }
    }

    private void postTrim()
    {
        synchronized (lock)
        {
            if (!isTrimPending)
            {
                isTrimPending = true;
                Settings.getExecutor().execute(new _cls3());
            }
        }
    }

    private void renameToTargetAndTrim(String s, File file)
    {
        if (!file.renameTo(new File(directory, Utility.md5hash(s))))
        {
            file.delete();
        }
        postTrim();
    }

    private void trim()
    {
        File afile[];
        File file1;
        int i;
        int j;
        long l;
        long l1;
        long l2;
        synchronized (lock)
        {
            isTrimPending = false;
            isTrimInProgress = true;
        }
        Logger.log(LoggingBehavior.CACHE, TAG, "trim started");
        obj = new PriorityQueue();
        afile = directory.listFiles(BufferFile.excludeBufferFiles());
        if (afile == null) goto _L2; else goto _L1
_L1:
        j = afile.length;
        l = 0L;
        i = 0;
        l1 = 0L;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        file1 = afile[i];
        ModifiedFile modifiedfile = new ModifiedFile(file1);
        ((PriorityQueue) (obj)).add(modifiedfile);
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("  trim considering time=")).append(Long.valueOf(modifiedfile.getModified())).append(" name=").append(modifiedfile.getFile().getName()).toString());
        l2 = file1.length();
        l += l2;
        l1++;
        i++;
        if (true) goto _L4; else goto _L3
_L6:
        File file;
        if (l1 <= (long)limits.getByteCount() && l <= (long)limits.getFileCount())
        {
            break MISSING_BLOCK_LABEL_290;
        }
        file = ((ModifiedFile)((PriorityQueue) (obj)).remove()).getFile();
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("  trim removing ")).append(file.getName()).toString());
        l1 -= file.length();
        l--;
        file.delete();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        synchronized (lock)
        {
            isTrimInProgress = false;
            lock.notifyAll();
        }
        throw exception1;
        synchronized (lock)
        {
            isTrimInProgress = false;
            lock.notifyAll();
        }
        return;
_L3:
        long l3 = l;
        l = l1;
        l1 = l3;
        continue; /* Loop/switch isn't completed */
_L2:
        l1 = 0L;
        l = 0L;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void clearCache()
    {
        final File filesToDelete[] = directory.listFiles(BufferFile.excludeBufferFiles());
        lastClearCacheTime.set(System.currentTimeMillis());
        if (filesToDelete != null)
        {
            Settings.getExecutor().execute(new _cls2());
        }
    }

    public final InputStream get(String s)
    {
        return get(s, null);
    }

    public final InputStream get(String s, String s1)
    {
        File file;
        Object obj;
        JSONObject jsonobject;
        file = new File(directory, Utility.md5hash(s));
        try
        {
            obj = new FileInputStream(file);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        obj = new BufferedInputStream(((InputStream) (obj)), 8192);
        jsonobject = StreamHeader.readHeader(((InputStream) (obj)));
        if (jsonobject == null)
        {
            ((BufferedInputStream) (obj)).close();
            return null;
        }
        String s2 = jsonobject.optString("key");
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        boolean flag = s2.equals(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        ((BufferedInputStream) (obj)).close();
        return null;
        s = jsonobject.optString("tag", null);
        if (s1 == null && s != null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        flag = s1.equals(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        ((BufferedInputStream) (obj)).close();
        return null;
        long l = (new Date()).getTime();
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("Setting lastModified to ")).append(Long.valueOf(l)).append(" for ").append(file.getName()).toString());
        file.setLastModified(l);
        return ((InputStream) (obj));
        s;
        if (true)
        {
            ((BufferedInputStream) (obj)).close();
        }
        throw s;
    }

    public final InputStream interceptAndPut(String s, InputStream inputstream)
    {
        return new CopyingInputStream(inputstream, openPutStream(s));
    }

    final OutputStream openPutStream(String s)
    {
        return openPutStream(s, null);
    }

    public final OutputStream openPutStream(String s, String s1)
    {
        Object obj;
        obj = BufferFile.newFile(directory);
        ((File) (obj)).delete();
        if (!((File) (obj)).createNewFile())
        {
            throw new IOException((new StringBuilder("Could not create file at ")).append(((File) (obj)).getAbsolutePath()).toString());
        }
        Object obj1;
        try
        {
            obj1 = new FileOutputStream(((File) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error creating buffer output stream: ")).append(s).toString());
            throw new IOException(s.getMessage());
        }
        obj = new BufferedOutputStream(new CloseCallbackOutputStream(((OutputStream) (obj1)), new _cls1()), 8192);
        obj1 = new JSONObject();
        ((JSONObject) (obj1)).put("key", s);
        if (!Utility.isNullOrEmpty(s1))
        {
            ((JSONObject) (obj1)).put("tag", s1);
        }
        StreamHeader.writeHeader(((OutputStream) (obj)), ((JSONObject) (obj1)));
        return ((OutputStream) (obj));
        s;
        Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error creating JSON header for cache file: ")).append(s).toString());
        throw new IOException(s.getMessage());
        s;
        if (true)
        {
            ((BufferedOutputStream) (obj)).close();
        }
        throw s;
    }

    final long sizeInBytesForTest()
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
_L4:
        if (isTrimPending) goto _L2; else goto _L1
_L1:
        boolean flag = isTrimInProgress;
        if (!flag) goto _L3; else goto _L2
_L2:
        Exception exception;
        long l;
        try
        {
            lock.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            obj;
        }
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        JVM INSTR monitorexit ;
        obj = directory.listFiles();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        int j = obj.length;
        l = 0L;
        for (int i = 0; i < j; i++)
        {
            l += obj[i].length();
        }

        if (true)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        JVM INSTR monitorexit ;
        throw exception;
        return l;
        return 0L;
    }

    public final String toString()
    {
        return (new StringBuilder("{FileLruCache: tag:")).append(tag).append(" file:").append(directory.getName()).append("}").toString();
    }






    private class _cls3
        implements Runnable
    {

        final FileLruCache this$0;

        public void run()
        {
            trim();
        }

        _cls3()
        {
            this$0 = FileLruCache.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final FileLruCache this$0;
        final File val$filesToDelete[];

        public void run()
        {
            File afile[] = filesToDelete;
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                afile[i].delete();
            }

        }

        _cls2()
        {
            this$0 = FileLruCache.this;
            filesToDelete = afile;
            super();
        }
    }


    private class _cls1
        implements StreamCloseCallback
    {

        final FileLruCache this$0;
        final File val$buffer;
        final long val$bufferFileCreateTime;
        final String val$key;

        public void onClose()
        {
            if (bufferFileCreateTime < lastClearCacheTime.get())
            {
                buffer.delete();
                return;
            } else
            {
                renameToTargetAndTrim(key, buffer);
                return;
            }
        }

        _cls1()
        {
            this$0 = FileLruCache.this;
            bufferFileCreateTime = l;
            buffer = file;
            key = s;
            super();
        }
    }

}