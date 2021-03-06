// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import com.adobe.air.utils.AIRLogger;
import com.adobe.air.utils.Utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;

// Referenced classes of package com.adobe.air:
//            ResourceFileManager, ApplicationFileManager, AndroidConstants

class DeviceProfiling
{

    private static final int BUFFER_SIZE = 8192;
    private static final String DEFAULT_PROFILER_PORT = "9999";
    private static final String DELIM_STRING = "=";
    private static final String FLASH_TRUST_DIR = "FlashPlayerTrust";
    private static final String LOG_TAG = "DeviceProfiling";
    private static final String META_INF;
    private static final String MM_DOT_CFG = "mm.cfg";
    private static final String PROFILER_HOST_ID = "raw.debugger";
    private static final String PROFILER_RES_ID = "raw.profileragent";
    private static final String PROFILER_SWF_NAME = "ProfilerAgent.swf";
    private static final String PROFILE_CONFIG_FILENAME = "Profiling.cfg";
    private static ResourceFileManager mResManager;

    DeviceProfiling()
    {
    }

    public static boolean checkAndInitiateProfiler(Activity activity)
    {
        mResManager = new ResourceFileManager(activity);
        boolean flag = mResManager.resExists(mResManager.lookupResId("raw.debugger"));
        boolean flag1 = mResManager.resExists(mResManager.lookupResId("raw.profileragent"));
        if (!flag || !flag1)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append("Preload SWF/debughost resource does not exist inside the APK").append(flag).append(" ").append(flag1).toString());
            return false;
        } else
        {
            extractProfilerResource();
            insertPreloadTagEntry();
            insertTrustConfigEntry();
            return true;
        }
    }

    private static void extractProfilerResource()
    {
        File file = new File((new StringBuilder()).append(ApplicationFileManager.getAppRoot()).append(File.separator).append(META_INF).append(File.separator).append("ProfilerAgent.swf").toString());
        file.getParentFile().mkdirs();
        try
        {
            mResManager.extractResource(mResManager.lookupResId("raw.profileragent"), file);
            return;
        }
        catch (Exception exception)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append(" Exception while writing/closing preloadSWF File ").append(exception.getMessage()).toString());
        }
    }

    private static void insertPreloadTagEntry()
    {
        File file = new File((new StringBuilder()).append(Utils.GetExternalStorageDirectory()).append(File.separator).append(".").append("adobe").append(File.separator).append("AIR").append(File.separator).append("mm.cfg").toString());
        File file1 = new File((new StringBuilder()).append(ApplicationFileManager.getAndroidAppDataPath()).append(File.separator).append("mm.cfg").toString());
        Object obj1 = new File((new StringBuilder()).append(ApplicationFileManager.getAndroidAppDataPath()).append(File.separator).append(AndroidConstants.DEBUGGER_INFO).toString());
        String s = (new StringBuilder()).append(ApplicationFileManager.getAppRoot()).append(File.separator).append(META_INF).append(File.separator).append("ProfilerAgent.swf").toString();
        HashMap hashmap;
        String s1;
        try
        {
            mResManager.extractResource(mResManager.lookupResId("raw.debugger"), ((File) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append(" Extracting Resource debugInfo failed ").append(((Exception) (obj)).getMessage()).toString());
        }
        hashmap = new HashMap();
        obj1 = Utils.parseKeyValuePairFile(((File) (obj1)), new String("="));
        hashmap = ((HashMap) (obj1));
_L4:
        Object obj2 = (new String("PreloadSwf=")).concat(s).concat("?");
        StringBuffer stringbuffer = new StringBuffer();
        Object obj;
        boolean flag;
        if (hashmap.get("Host") != null)
        {
            obj = ((String) (obj2)).concat("host=").concat((String)hashmap.get("Host"));
        } else
        {
            obj = obj2;
        }
        obj = ((String) (obj)).concat("&").concat("port=").concat("9999");
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_491;
        }
        obj2 = new BufferedReader(new FileReader(file), 8192);
        flag = false;
_L3:
        s1 = ((BufferedReader) (obj2)).readLine();
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (s1.equals(obj))
        {
            flag = true;
        }
        stringbuffer.append(s1).append("\n");
          goto _L3
        obj;
        AIRLogger.d("DeviceProfiling", (new StringBuilder()).append("Reading from Configuration file with path").append(file.getAbsolutePath()).append(" failed.").append(((Exception) (obj)).getMessage()).toString());
_L5:
        try
        {
            Utils.writeBufferToFile(stringbuffer, file1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append(" Writing string buffer to file failed ").append(((Exception) (obj)).getMessage()).toString());
        }
        break MISSING_BLOCK_LABEL_535;
        obj2;
        AIRLogger.d("DeviceProfiling", (new StringBuilder()).append(" Parsing for key-value pairs failed/mm.cfg not found ").append(((Exception) (obj2)).getMessage()).toString());
          goto _L4
_L2:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_484;
        }
        stringbuffer.append(((String) (obj))).append("\n");
        ((BufferedReader) (obj2)).close();
          goto _L5
        stringbuffer.append(((String) (obj))).append("\n");
          goto _L5
    }

    private static void insertTrustConfigEntry()
    {
        Object obj = new File((new StringBuilder()).append(ApplicationFileManager.getAppRoot()).append(File.separator).append(META_INF).append(File.separator).append("FlashPlayerTrust").toString());
        ((File) (obj)).mkdir();
        File file = new File((new StringBuilder()).append(Utils.GetExternalStorageDirectory()).append(File.separator).append("FlashPlayerTrust").toString());
        try
        {
            Utils.copyTo(file, ((File) (obj)));
        }
        catch (Exception exception)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append("Recursive Copy for FlashPlayerTrust folder failed.").append(exception.getMessage()).toString());
        }
        obj = (new StringBuilder()).append(ApplicationFileManager.getAppRoot()).append(File.separator).append(META_INF).toString();
        try
        {
            Utils.writeStringToFile(((String) (obj)), new File((new StringBuilder()).append(ApplicationFileManager.getAppRoot()).append(File.separator).append(META_INF).append(File.separator).append("FlashPlayerTrust").append(File.separator).append("Profiling.cfg").toString()));
            return;
        }
        catch (Exception exception1)
        {
            AIRLogger.d("DeviceProfiling", (new StringBuilder()).append(" Write to FlashPlayerTrust Failed").append(exception1.getMessage()).toString());
        }
    }

    static 
    {
        META_INF = (new StringBuilder()).append("META-INF").append(File.separator).append("AIR").toString();
    }
}
