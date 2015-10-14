// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.cache;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.cache:
//            Entry

public class FileCache
{
    class EntriesReader
        implements Runnable
    {

        FileCache cache;
        SettableFuture entriesFuture;
        final FileCache this$0;

        private JSONArray read()
            throws Exception
        {
            if ((cache.getDirectory() == null || !cache.getDirectory().mkdirs()) && !cache.getDirectory().isDirectory())
            {
                break MISSING_BLOCK_LABEL_133;
            }
            Object obj;
            Object obj1;
            Exception exception;
            StringBuilder stringbuilder;
            String s;
            try
            {
                obj = new FileInputStream(getEntriesFile());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return null;
            }
            catch (JSONException jsonexception)
            {
                return null;
            }
            obj1 = new BufferedReader(new InputStreamReader(((InputStream) (obj))));
            stringbuilder = new StringBuilder();
_L1:
            s = ((BufferedReader) (obj1)).readLine();
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            stringbuilder.append(s);
              goto _L1
            exception;
            ((InputStream) (obj)).close();
            throw exception;
            exception = (new JSONObject(stringbuilder.toString())).getJSONArray(FileCache.ROOT_ENTRIES_ELEMENT);
            ((InputStream) (obj)).close();
            return exception;
            return null;
        }

        public void run()
        {
            Object obj;
            int i = 0;
            JSONArray jsonarray;
            Entry entry;
            int j;
            try
            {
                jsonarray = read();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Logger.trace(((Throwable) (obj)));
                entriesFuture.setException(((Throwable) (obj)));
                return;
            }
            if (jsonarray == null)
            {
                break MISSING_BLOCK_LABEL_222;
            }
            if (jsonarray.length() <= 0)
            {
                break MISSING_BLOCK_LABEL_222;
            }
_L3:
            j = jsonarray.length();
            if (i >= j)
            {
                break MISSING_BLOCK_LABEL_222;
            }
            obj = jsonarray.getJSONObject(i);
_L4:
            if (obj != null) goto _L2; else goto _L1
_L1:
            i++;
              goto _L3
            obj;
            Logger.log(obj);
            obj = null;
              goto _L4
_L2:
            entry = (Entry)Class.forName(((JSONObject) (obj)).getString(FileCache.KLASS_ELEMENT)).getDeclaredMethod("fromJSONObject", new Class[] {
                org/json/JSONObject
            }).invoke(null, new Object[] {
                obj
            });
            if (entry == null) goto _L1; else goto _L5
_L5:
            if (!entry.fileExists().booleanValue() || entry.isDirty().booleanValue()) goto _L1; else goto _L6
_L6:
            cache.put(entry);
              goto _L1
            Exception exception;
            exception;
            Logger.trace(exception);
            obj = Entry.fromJSONObject(((JSONObject) (obj)));
_L9:
            if (obj == null) goto _L1; else goto _L7
_L7:
            if (!((Entry) (obj)).fileExists().booleanValue() || ((Entry) (obj)).isDirty().booleanValue()) goto _L1; else goto _L8
_L8:
            cache.put(((Entry) (obj)));
              goto _L1
            Object obj1;
            obj1;
            Logger.log(exception);
            obj1 = null;
              goto _L9
            obj1;
            if (true)
            {
                break MISSING_BLOCK_LABEL_220;
            }
            throw new NullPointerException();
            throw obj1;
            cache.open.set(true);
            SettableFuture settablefuture = cache.sync();
            entriesFuture.set(settablefuture.get());
            return;
              goto _L3
        }

        public EntriesReader(FileCache filecache1, SettableFuture settablefuture)
        {
            this$0 = FileCache.this;
            super();
            cache = filecache1;
            entriesFuture = settablefuture;
        }
    }

    class SyncRunnable
        implements Runnable
    {

        FileCache cache;
        SettableFuture entriesFuture;
        final FileCache this$0;

        private void clean()
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = cache.all().iterator(); iterator.hasNext(); arraylist.add(((Entry)iterator.next()).getFile().getAbsolutePath())) { }
            arraylist.add(cache.getEntriesFile().getAbsolutePath());
            File afile[] = cache.getDirectory().listFiles();
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                File file = afile[i];
                if (!arraylist.contains(file.getAbsolutePath()))
                {
                    file.delete();
                }
            }

        }

        private void writeEntriesFile()
            throws Exception
        {
            JSONObject jsonobject = new JSONObject();
            Object obj = new JSONArray();
            Iterator iterator = entries.values().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Entry entry = (Entry)iterator.next();
                if (!entry.isDirty().booleanValue())
                {
                    try
                    {
                        ((JSONArray) (obj)).put(entry.asJSONObject());
                    }
                    catch (JSONException jsonexception)
                    {
                        Logger.trace(jsonexception);
                    }
                }
            } while (true);
            jsonobject.put(FileCache.ROOT_ENTRIES_ELEMENT, obj);
            jsonobject.put(FileCache.ROOT_VERSION_ELEMENT, FileCache.VERSION_UID);
            obj = new FileWriter(cache.getEntriesFile());
            ((FileWriter) (obj)).write(jsonobject.toString());
            ((FileWriter) (obj)).flush();
            ((FileWriter) (obj)).close();
        }

        public void run()
        {
            long l = System.currentTimeMillis();
            writeEntriesFile();
            clean();
            Logger.format("(CACHE) Sync took %dms", new Object[] {
                Long.valueOf(System.currentTimeMillis() - Long.valueOf(l).longValue())
            });
            entriesFuture.set(Boolean.valueOf(true));
            return;
            Object obj;
            obj;
            Logger.trace(((Throwable) (obj)));
            entriesFuture.setException(((Throwable) (obj)));
            return;
            obj;
            throw obj;
        }

        public SyncRunnable(FileCache filecache1, SettableFuture settablefuture)
        {
            this$0 = FileCache.this;
            super();
            cache = filecache1;
            entriesFuture = settablefuture;
        }
    }


    public static String ENTRIES_FILENAME = "entries.json";
    public static String KLASS_ELEMENT = "klass";
    public static String ROOT_ENTRIES_ELEMENT = "entries";
    public static String ROOT_VERSION_ELEMENT = "version";
    public static final String SUPER_FILE_PREFIX = "hz";
    public static Long UNLIMITED_SIZE = Long.valueOf(0L);
    public static Long VERSION_UID = Long.valueOf(0L);
    private File cacheDir;
    private ConcurrentHashMap entries;
    private File entriesFile;
    private Executor executor;
    private Long maxSizeBytes;
    private AtomicBoolean open;

    public FileCache(Executor executor1, File file, Long long1)
    {
        maxSizeBytes = UNLIMITED_SIZE;
        executor = executor1;
        cacheDir = file;
        maxSizeBytes = long1;
        open = new AtomicBoolean(false);
    }

    private File getEntriesFile()
    {
        return new File((new StringBuilder()).append(getDirectory()).append(File.separator).append(ENTRIES_FILENAME).toString());
    }

    public ArrayList all()
    {
        return new ArrayList(entries.values());
    }

    public SettableFuture close()
    {
        open.set(false);
        entries = null;
        return sync();
    }

    public void destroy()
    {
        getEntriesFile().delete();
        open.set(false);
        for (Iterator iterator = entries.values().iterator(); iterator.hasNext(); ((Entry)iterator.next()).deleteHardReference()) { }
    }

    public SettableFuture flush()
    {
        Object obj;
        SettableFuture settablefuture;
        LinkedList linkedlist;
        settablefuture = SettableFuture.create();
        if (maxSizeBytes == UNLIMITED_SIZE)
        {
            settablefuture.set(Boolean.valueOf(true));
            return settablefuture;
        }
        obj = size();
        for (Iterator iterator = entries.values().iterator(); iterator.hasNext();)
        {
            Entry entry = (Entry)iterator.next();
            obj = Long.valueOf(((Long) (obj)).longValue() + entry.getSize());
        }

        linkedlist = new LinkedList(entries.values());
        Collections.sort(linkedlist);
_L1:
        Entry entry1;
        if (((Long) (obj)).longValue() <= maxSizeBytes.longValue())
        {
            break MISSING_BLOCK_LABEL_170;
        }
        entry1 = (Entry)linkedlist.removeFirst();
        if (entry1 != null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        try
        {
            throw new Exception("Error in popping!");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            throw exception;
        }
        settablefuture.setException(((Throwable) (obj)));
        return settablefuture;
        remove(entry1);
        obj = Long.valueOf(((Long) (obj)).longValue() - entry1.getSize());
          goto _L1
        obj = sync();
        return ((SettableFuture) (obj));
    }

    public Entry get(String s)
    {
        if (open.get())
        {
            s = (Entry)entries.get(s);
            if (s != null)
            {
                if (s.fileExists().booleanValue())
                {
                    return s;
                }
                remove(s);
            }
        }
        return null;
    }

    public File getDirectory()
    {
        return cacheDir;
    }

    public Boolean isOpen()
    {
        return Boolean.valueOf(open.get());
    }

    public SettableFuture open()
    {
        SettableFuture settablefuture = SettableFuture.create();
        if (!open.get())
        {
            entries = new ConcurrentHashMap();
            executor.execute(new EntriesReader(this, settablefuture));
            return settablefuture;
        } else
        {
            settablefuture.set(Boolean.valueOf(true));
            return settablefuture;
        }
    }

    public void put(Entry entry)
    {
        if (!entries.contains(entry.getIdentifier()))
        {
            entries.put(entry.getIdentifier(), entry);
        }
    }

    public void remove(Entry entry)
    {
        entry.deleteHardReference();
        entries.remove(entry);
    }

    public void remove(String s)
    {
        s = (Entry)entries.get(s);
        if (s != null)
        {
            remove(((Entry) (s)));
        }
    }

    public Long size()
    {
        long l = 0L;
        for (Iterator iterator = entries.values().iterator(); iterator.hasNext();)
        {
            l += ((Entry)iterator.next()).getSize();
        }

        return Long.valueOf(l);
    }

    public SettableFuture sync()
    {
        SettableFuture settablefuture = SettableFuture.create();
        executor.execute(new SyncRunnable(this, settablefuture));
        return settablefuture;
    }




}
