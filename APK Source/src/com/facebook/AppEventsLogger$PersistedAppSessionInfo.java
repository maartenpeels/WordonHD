// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.util.Log;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.facebook:
//            AppEventsLogger, FacebookTimeSpentData, LoggingBehavior

static class _cls1
{

    private static final String PERSISTED_SESSION_INFO_FILENAME = "AppEventsLogger.persistedsessioninfo";
    private static final Runnable appSessionInfoFlushRunnable = new _cls1();
    private static Map appSessionInfoMap;
    private static boolean hasChanges = false;
    private static boolean isLoaded = false;
    private static final Object staticLock = new Object();

    private static FacebookTimeSpentData getTimeSpentData(Context context, _cls1 _pcls1)
    {
        restoreAppSessionInformation(context);
        context = (FacebookTimeSpentData)appSessionInfoMap.get(_pcls1);
        if (context == null)
        {
            context = new FacebookTimeSpentData();
            appSessionInfoMap.put(_pcls1, context);
            return context;
        } else
        {
            return context;
        }
    }

    static void onResume(Context context, appSessionInfoMap appsessioninfomap, AppEventsLogger appeventslogger, long l, String s)
    {
        synchronized (staticLock)
        {
            getTimeSpentData(context, appsessioninfomap).onResume(appeventslogger, l, s);
            onTimeSpentDataUpdate();
        }
    }

    static void onSuspend(Context context, onTimeSpentDataUpdate ontimespentdataupdate, AppEventsLogger appeventslogger, long l)
    {
        synchronized (staticLock)
        {
            getTimeSpentData(context, ontimespentdataupdate).onSuspend(appeventslogger, l);
            onTimeSpentDataUpdate();
        }
    }

    private static void onTimeSpentDataUpdate()
    {
        if (!hasChanges)
        {
            hasChanges = true;
            AppEventsLogger.access$1400().schedule(appSessionInfoFlushRunnable, 30L, TimeUnit.SECONDS);
        }
    }

    private static void restoreAppSessionInformation(Context context)
    {
        Object obj1 = null;
        Object obj2 = staticLock;
        obj2;
        JVM INSTR monitorenter ;
        boolean flag = isLoaded;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        Object obj = new ObjectInputStream(context.openFileInput("AppEventsLogger.persistedsessioninfo"));
        obj1 = obj;
        appSessionInfoMap = (HashMap)((ObjectInputStream) (obj)).readObject();
        obj1 = obj;
        Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info loaded");
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
_L1:
        obj2;
        JVM INSTR monitorexit ;
        return;
_L4:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
          goto _L1
        context;
        throw context;
        Exception exception;
        exception;
        obj = null;
_L3:
        obj1 = obj;
        Log.d(AppEventsLogger.access$1300(), (new StringBuilder("Got unexpected exception: ")).append(exception.toString()).toString());
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
          goto _L1
_L2:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
        throw obj;
        obj;
          goto _L2
        exception;
          goto _L3
        obj1;
          goto _L4
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception = ((FileNotFoundException) (obj1));
          goto _L4
        filenotfoundexception;
        obj1 = null;
          goto _L2
    }

    static void saveAppSessionInformation(Context context)
    {
        Object obj2 = staticLock;
        obj2;
        JVM INSTR monitorenter ;
        boolean flag = hasChanges;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Object obj = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedsessioninfo", 0)));
        context = ((Context) (obj));
        ((ObjectOutputStream) (obj)).writeObject(appSessionInfoMap);
        context = ((Context) (obj));
        hasChanges = false;
        context = ((Context) (obj));
        Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info saved");
        Utility.closeQuietly(((java.io.Closeable) (obj)));
_L1:
        obj2;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        obj = null;
_L4:
        context = ((Context) (obj));
        Log.d(AppEventsLogger.access$1300(), (new StringBuilder("Got unexpected exception: ")).append(((Exception) (obj1)).toString()).toString());
        Utility.closeQuietly(((java.io.Closeable) (obj)));
          goto _L1
        context;
        throw context;
        context;
        java.io.Closeable closeable;
        closeable = null;
        obj = context;
_L3:
        Utility.closeQuietly(closeable);
        throw obj;
        obj;
        closeable = context;
        if (true) goto _L3; else goto _L2
_L2:
        closeable;
          goto _L4
    }


    _cls1()
    {
    }

    class _cls1
        implements Runnable
    {

        public final void run()
        {
            AppEventsLogger.PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.access$1000());
        }

            _cls1()
            {
            }
    }

}
