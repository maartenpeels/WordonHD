// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, FileInfo

public final class ApplicationFileManager
{

    private static final String APP_PREFIX = "app";
    private static final String APP_XML_PATH = "META-INF/AIR/application.xml";
    private static final String ASSET_STRING = "assets";
    public static String sAndroidPackageName;
    public static String sApkPath;
    public static String sAppDataPath;
    public static String sInitialContentName;
    private final int BUFFER_SIZE = 8192;
    private final int DEFAULT_SIZE = -1;
    private HashMap mFileInfoMap;

    ApplicationFileManager()
    {
        mFileInfoMap = new HashMap();
        procZipContents(getApkPathFile());
    }

    private static void RefreshAppCache(String s, String s1)
    {
        if ((new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString())).exists())
        {
            return;
        } else
        {
            deleteDir(new File(s));
            return;
        }
    }

    public static void checkAndCreateAppDataDir()
    {
        File file;
        file = new File(sAppDataPath);
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_23;
        }
        file.mkdirs();
        return;
        SecurityException securityexception;
        securityexception;
    }

    private void closeInputStream(InputStream inputstream)
        throws Exception
    {
        inputstream.close();
    }

    private void closeOutputStream(OutputStream outputstream)
        throws Exception
    {
        outputstream.flush();
        outputstream.close();
    }

    public static boolean deleteDir(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                if (!deleteDir(afile[i]))
                {
                    return false;
                }
            }

        }
        return file.delete();
    }

    public static boolean deleteUnzippedContents(String s)
    {
        s = new File(s);
        if (s.isDirectory())
        {
            File afile[] = s.listFiles();
            for (int i = 0; i < afile.length; i++)
            {
                deleteUnzippedContents(afile[i].getAbsolutePath());
            }

        }
        return s.delete();
    }

    public static String getAndroidApkPath()
    {
        return sApkPath;
    }

    public static String getAndroidAppDataPath()
    {
        return sAppDataPath;
    }

    public static String getAndroidUnzipContentPath()
    {
        return sAppDataPath;
    }

    private File getApkPathFile()
    {
        return new File(getAndroidApkPath());
    }

    public static String getAppRoot()
    {
        return (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).append("assets").toString();
    }

    public static String getAppXMLRoot()
    {
        return (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).append("META-INF/AIR/application.xml").toString();
    }

    public static void processAndroidDataPath(String s)
    {
        String s3 = (new StringBuilder()).append(s).append(File.separator).append("app").toString();
        String s1 = null;
        String s2;
        NullPointerException nullpointerexception;
        Bundle bundle;
        try
        {
            bundle = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getPackageManager().getActivityInfo(AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getComponentName(), 128).metaData;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = "app";
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = "app";
            continue; /* Loop/switch isn't completed */
        }
        if (bundle == null) goto _L2; else goto _L1
_L1:
        s = (String)bundle.get("uniqueappversionid");
label0:
        {
            try
            {
                if (!AndroidActivityWrapper.IsGamePreviewMode())
                {
                    break label0;
                }
                s2 = UUID.randomUUID().toString();
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                continue; /* Loop/switch isn't completed */
            }
            // Misplaced declaration of an exception variable
            catch (NullPointerException nullpointerexception)
            {
                continue; /* Loop/switch isn't completed */
            }
            s = s2;
        }
        try
        {
            RefreshAppCache(s3, s);
            s2 = (String)bundle.get("initialcontent");
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1)
        {
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (NullPointerException nullpointerexception)
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = s2;
_L4:
        setAndroidDataPath((new StringBuilder()).append(s3).append(File.separator).append(s).toString());
        (new File((new StringBuilder()).append(s3).append(File.separator).append(s).toString())).mkdirs();
        setInitialContentName(s1);
        return;
_L2:
        s = "app";
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void setAndroidAPKPath(String s)
    {
        sApkPath = s;
    }

    private static void setAndroidDataPath(String s)
    {
        sAppDataPath = s;
    }

    public static void setAndroidPackageName(String s)
    {
        sAndroidPackageName = s;
    }

    private static void setInitialContentName(String s)
    {
        sInitialContentName = s;
    }

    public boolean addToCache(String s)
    {
        return sInitialContentName != null && s.indexOf(sInitialContentName) != -1;
    }

    public String[] appDirectoryNameList(String s)
    {
        Iterator iterator;
        ArrayList arraylist;
        if (!s.equals(""))
        {
            s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s = "assets";
        }
        iterator = mFileInfoMap.keySet().iterator();
        arraylist = new ArrayList();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (!s1.equals(s) && s1.startsWith(s) && -1 == s1.indexOf(File.separator, s.length() + 1))
            {
                arraylist.add(s1.substring(s.length() + 1));
            }
        } while (true);
        return (String[])arraylist.toArray(new String[0]);
    }

    public boolean[] appDirectoryTypeList(String s)
    {
        ArrayList arraylist;
        Iterator iterator;
        if (!s.equals(""))
        {
            s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s = "assets";
        }
        iterator = mFileInfoMap.keySet().iterator();
        arraylist = new ArrayList();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (!s1.equals(s) && s1.startsWith(s) && -1 == s1.indexOf(File.separator, s.length() + 1))
            {
                arraylist.add(new Boolean(((FileInfo)mFileInfoMap.get(s1)).mIsFile));
            }
        } while (true);
        s = new boolean[arraylist.size()];
        for (int i = 0; i < s.length; i++)
        {
            s[i] = ((Boolean)arraylist.get(i)).booleanValue();
        }

        return s;
    }

    public void copyFolder(String s)
    {
        Object obj;
        Object obj1;
        String s1;
        byte abyte0[];
        int i;
        if (!s.equals(""))
        {
            s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s = "assets";
        }
        s1 = (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).toString();
        obj = getApkPathFile();
        obj = new ZipInputStream(new BufferedInputStream(new FileInputStream(((File) (obj))), 8192));
_L2:
        obj1 = ((ZipInputStream) (obj)).getNextEntry();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        obj1 = ((ZipEntry) (obj1)).getName();
        if (!((String) (obj1)).substring(0, "assets".length()).equals("assets") || !((String) (obj1)).startsWith(s)) goto _L2; else goto _L1
_L1:
        obj1 = new File((new StringBuilder()).append(s1).append(((String) (obj1))).toString());
        (new File(((File) (obj1)).getParent())).mkdirs();
        obj1 = new BufferedOutputStream(new FileOutputStream(((File) (obj1))), 8192);
        abyte0 = new byte[8192];
_L3:
        i = ((ZipInputStream) (obj)).read(abyte0, 0, 8192);
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                ((BufferedOutputStream) (obj1)).write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }
        }
          goto _L3
        closeOutputStream(((OutputStream) (obj1)));
          goto _L2
        closeInputStream(((InputStream) (obj)));
        return;
    }

    public void deleteFile(String s)
    {
        (new File(s)).delete();
    }

    public boolean fileExists(String s)
    {
        if (!s.equals(""))
        {
            s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s = "assets";
        }
        return mFileInfoMap.containsKey(s);
    }

    public long getLSize(String s)
    {
        s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        s = (FileInfo)mFileInfoMap.get(s);
        if (s != null && ((FileInfo) (s)).mFileSize != -1L)
        {
            return ((FileInfo) (s)).mFileSize;
        } else
        {
            return 0L;
        }
    }

    public boolean isDirectory(String s)
    {
        if (!s.equals(""))
        {
            s = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s = "assets";
        }
        s = (FileInfo)mFileInfoMap.get(s);
        return s != null && ((FileInfo) (s)).mIsDirectory;
    }

    public void procZipContents(File file)
    {
        ZipFile zipfile;
        try
        {
            zipfile = new ZipFile(file);
            Enumeration enumeration = zipfile.entries();
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    break;
                }
                Object obj = (ZipEntry)enumeration.nextElement();
                file = ((ZipEntry) (obj)).getName();
                if (file.substring(0, "assets".length()).equals("assets"))
                {
                    obj = new FileInfo(((ZipEntry) (obj)).getSize(), true, false);
                    mFileInfoMap.put(file, obj);
                    file = new File(file);
                    while (file.getParent() != null && (FileInfo)mFileInfoMap.get(file.getParent()) == null) 
                    {
                        FileInfo fileinfo = new FileInfo(-1L, false, true);
                        mFileInfoMap.put(file.getParent(), fileinfo);
                        file = new File(file.getParent());
                    }
                }
            } while (true);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return;
        }
        zipfile.close();
        return;
    }

    public boolean readFileName(String s)
    {
        Object obj;
        Object obj1;
        String s1;
        obj1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        s1 = (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).toString();
        obj = new File((new StringBuilder()).append(s1).append(((String) (obj1))).toString());
        if (((File) (obj)).exists())
        {
            return true;
        }
        s = getApkPathFile();
        s = new ZipFile(s);
        Enumeration enumeration = s.entries();
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        ZipEntry zipentry;
        String s2;
        zipentry = (ZipEntry)enumeration.nextElement();
        s2 = zipentry.getName();
        if (!s2.substring(0, "assets".length()).equals("assets")) goto _L4; else goto _L3
_L3:
        if (!s2.equals(obj1))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = s.getInputStream(zipentry);
        (new File(((File) (obj)).getParent())).mkdirs();
        obj = new BufferedOutputStream(new FileOutputStream(((File) (obj))), 8192);
        s1 = new byte[8192];
_L7:
        int i = ((InputStream) (obj1)).read(s1);
        if (i == -1) goto _L6; else goto _L5
_L5:
        ((BufferedOutputStream) (obj)).write(s1, 0, i);
          goto _L7
        obj;
_L13:
        Exception exception;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
_L9:
        return true;
_L6:
        closeInputStream(((InputStream) (obj1)));
        closeOutputStream(((OutputStream) (obj)));
_L2:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (true) goto _L9; else goto _L8
_L8:
        if (!s2.startsWith((new StringBuilder()).append(((String) (obj1))).append("/").toString())) goto _L4; else goto _L10
_L10:
        (new File((new StringBuilder()).append(s1).append(((String) (obj1))).toString())).mkdirs();
          goto _L2
        exception;
        obj = s;
        s = exception;
_L12:
        if (obj != null)
        {
            try
            {
                ((ZipFile) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw s;
        s;
        obj = null;
        if (true) goto _L12; else goto _L11
_L11:
        s;
        s = null;
          goto _L13
    }
}
