// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Scanner;

public class Utils
{

    private static String sRuntimePackageName;

    public Utils()
    {
    }

    public static String GetExternalStorageDirectory()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static View GetLayoutViewFromRuntime(String s, Resources resources, LayoutInflater layoutinflater)
    {
        int i = resources.getIdentifier(s, "layout", sRuntimePackageName);
        if (i != 0)
        {
            return layoutinflater.inflate(i, null);
        } else
        {
            return null;
        }
    }

    public static String GetLibCorePath(Context context)
    {
        return GetNativeLibraryPath(context, "libCore.so");
    }

    public static String GetLibSTLPath(Context context)
    {
        return GetNativeLibraryPath(context, "libstlport_shared.so");
    }

    public static String GetNativeExtensionPath(Context context, String s)
    {
        ApplicationInfo applicationinfo;
        Field field;
        Field field1;
        applicationinfo = context.getPackageManager().getApplicationInfo(sRuntimePackageName, 0);
        field = android/content/pm/ApplicationInfo.getField("nativeLibraryDir");
        field1 = android/content/pm/ApplicationInfo.getField("sourceDir");
        if (field == null) goto _L2; else goto _L1
_L1:
        if (!((String)field1.get(applicationinfo)).startsWith("/system/app/")) goto _L4; else goto _L3
_L3:
        context = new String((new StringBuilder()).append("/system/lib/").append(sRuntimePackageName).append("/").append(s).toString());
_L6:
        Object obj = context;
        if (context == null)
        {
            obj = new String((new StringBuilder()).append("/data/data/").append(sRuntimePackageName).append("/lib/").append(s).toString());
        }
        return ((String) (obj));
_L4:
        try
        {
            context = new String((new StringBuilder()).append("/data/data/").append(context.getPackageName()).append("/lib/").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = null;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        context = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String GetNativeLibraryPath(Context context, String s)
    {
        Object obj = null;
        ApplicationInfo applicationinfo;
        Field field;
        Field field1;
        applicationinfo = context.getPackageManager().getApplicationInfo(sRuntimePackageName, 0);
        field = android/content/pm/ApplicationInfo.getField("nativeLibraryDir");
        field1 = android/content/pm/ApplicationInfo.getField("sourceDir");
        context = ((Context) (obj));
        if (field == null) goto _L2; else goto _L1
_L1:
        if (!((String)field1.get(applicationinfo)).startsWith("/system/app/")) goto _L4; else goto _L3
_L3:
        context = new String((new StringBuilder()).append("/system/lib/").append(sRuntimePackageName).append("/").append(s).toString());
_L2:
        obj = context;
        if (context == null)
        {
            obj = new String((new StringBuilder()).append("/data/data/").append(sRuntimePackageName).append("/lib/").append(s).toString());
        }
        return ((String) (obj));
_L4:
        try
        {
            context = ((String)field.get(applicationinfo)).concat((new StringBuilder()).append("/").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = ((Context) (obj));
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public static String GetResourceStringFromRuntime(String s, Resources resources)
    {
        return resources.getString(resources.getIdentifier(s, "string", sRuntimePackageName));
    }

    public static String GetSharedDataDirectory()
    {
        return Environment.getDataDirectory().getAbsolutePath();
    }

    public static String GetTelemetrySettings(Context context, String s, String s1)
    {
        s = context.getResources().getAssets().open(s, 1);
        Object obj = new ByteArrayOutputStream();
        String s2;
        copyTo(s, ((OutputStream) (obj)));
        s2 = ((ByteArrayOutputStream) (obj)).toString();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        s.close();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        ((ByteArrayOutputStream) (obj)).close();
        s = s2;
_L1:
        obj = s;
        if (s == null)
        {
            try
            {
                obj = context.createPackageContext(s1, 0).getSharedPreferences("telemetry", 1).getString("content", "");
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return s;
            }
        }
        return ((String) (obj));
        s;
        s = s2;
          goto _L1
        s;
        s2 = null;
        s = null;
_L4:
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        s2.close();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        s.close();
        s = null;
          goto _L1
        s;
        s = null;
          goto _L1
        context;
        s = null;
        s1 = null;
_L3:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        s.close();
        if (s1 != null)
        {
            try
            {
                s1.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        throw context;
        context;
        s1 = null;
        continue; /* Loop/switch isn't completed */
        context;
        s1 = ((String) (obj));
        if (true) goto _L3; else goto _L2
_L2:
        obj;
        obj = null;
        s2 = s;
        s = ((String) (obj));
          goto _L4
        Exception exception;
        exception;
        exception = s;
        s = ((String) (obj));
          goto _L4
    }

    public static View GetWidgetInViewByName(String s, Resources resources, View view)
    {
        return view.findViewById(resources.getIdentifier(s, "id", sRuntimePackageName));
    }

    static void KillProcess()
    {
        Process.killProcess(Process.myPid());
    }

    public static String ReplaceTextContentWithStars(String s)
    {
        int j = s.length();
        s = new char[j];
        for (int i = 0; i < j; i++)
        {
            s[i] = '*';
        }

        return new String(s);
    }

    public static void copyTo(File file, File file1)
        throws IOException
    {
        if (file.isDirectory())
        {
            file1.mkdirs();
            file = file.listFiles();
            int j = file.length;
            for (int i = 0; i < j; i++)
            {
                File file2 = file[i];
                copyTo(file2, new File(file1, file2.getName()));
            }

        } else
        {
            file = new FileInputStream(file);
            file1 = new FileOutputStream(file1);
            copyTo(((InputStream) (file)), ((OutputStream) (file1)));
            file.close();
            file1.close();
        }
    }

    public static void copyTo(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i > 0)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static String getRuntimePackageName()
    {
        return sRuntimePackageName;
    }

    public static boolean hasCaptiveRuntime()
    {
        return !"com.adobe.air".equals(sRuntimePackageName);
    }

    public static boolean isNetworkAvailable(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return context != null && context.isConnected();
    }

    public static native boolean nativeConnectDebuggerSocket(String s);

    public static HashMap parseKeyValuePairFile(File file, String s)
        throws FileNotFoundException, IllegalStateException
    {
        return parseKeyValuePairFile(((InputStream) (new FileInputStream(file))), s);
    }

    public static HashMap parseKeyValuePairFile(InputStream inputstream, String s)
        throws IllegalStateException
    {
        HashMap hashmap = new HashMap();
        Scanner scanner;
        for (inputstream = new Scanner(inputstream); inputstream.hasNextLine(); scanner.close())
        {
            scanner = new Scanner(inputstream.nextLine());
            scanner.useDelimiter(s);
            if (scanner.hasNext())
            {
                String s1 = scanner.next();
                String s2 = scanner.next();
                hashmap.put(s1.trim(), s2.trim());
            }
        }

        inputstream.close();
        return hashmap;
    }

    public static void setRuntimePackageName(String s)
    {
        sRuntimePackageName = s;
    }

    public static void writeBufferToFile(StringBuffer stringbuffer, File file)
        throws IOException
    {
        file = new FileWriter(file);
        file.write(stringbuffer.toString());
        file.close();
    }

    public static void writeOut(InputStream inputstream, File file)
        throws IOException
    {
        file = new FileOutputStream(file);
        writeThrough(inputstream, file);
        file.close();
    }

    public static void writeStringToFile(String s, File file)
        throws IOException
    {
        file = new FileWriter(file);
        file.write(s);
        file.close();
    }

    public static boolean writeStringToFile(String s, String s1)
    {
        s1 = new File(s1);
        if (!s1.exists())
        {
            try
            {
                s1.createNewFile();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return false;
            }
        }
        s = s.getBytes();
        try
        {
            s1 = new FileOutputStream(s1);
            s1.write(s, 0, s.length);
            s1.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public static void writeThrough(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            if (outputstream != null)
            {
                outputstream.write(abyte0, 0, i);
                outputstream.flush();
            }
        } while (true);
    }
}
