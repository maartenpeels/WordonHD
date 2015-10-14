// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.util.Log;
import java.util.ArrayList;

public class TapjoyLog
{

    private static final int MAX_STRING_SIZE = 4096;
    private static final String TAG = "TapjoyLog";
    private static ArrayList logHistory;
    private static boolean saveLog = false;
    private static boolean showLog = false;

    public TapjoyLog()
    {
    }

    public static void clearLogHistory()
    {
        if (logHistory != null)
        {
            logHistory.clear();
        }
    }

    public static void d(String s, String s1)
    {
        if (showLog)
        {
            Log.d(s, s1);
        }
        if (saveLog)
        {
            logHistory.add(s1);
        }
    }

    public static void e(String s, String s1)
    {
        if (showLog)
        {
            Log.e(s, s1);
        }
        if (saveLog)
        {
            logHistory.add(s1);
        }
    }

    public static void enableLogging(boolean flag)
    {
        Log.i("TapjoyLog", (new StringBuilder()).append("enableLogging: ").append(flag).toString());
        showLog = flag;
    }

    public static ArrayList getLogHistory()
    {
        return logHistory;
    }

    public static void i(String s, String s1)
    {
        if (showLog)
        {
            if (s1.length() > 4096)
            {
                for (int j = 0; j <= s1.length() / 4096; j++)
                {
                    int l = (j + 1) * 4096;
                    int k = l;
                    if (l > s1.length())
                    {
                        k = s1.length();
                    }
                    Log.i(s, s1.substring(j * 4096, k));
                }

            } else
            {
                Log.i(s, s1);
            }
        }
        if (saveLog)
        {
            logHistory.add(s1);
        }
    }

    public static boolean isLoggingEnabled()
    {
        return showLog;
    }

    public static void saveLogHistory(boolean flag)
    {
        saveLog = flag;
        if (saveLog)
        {
            logHistory = new ArrayList(1024);
            return;
        } else
        {
            logHistory = null;
            return;
        }
    }

    public static void v(String s, String s1)
    {
        if (showLog)
        {
            Log.v(s, s1);
        }
        if (saveLog)
        {
            logHistory.add(s1);
        }
    }

    public static void w(String s, String s1)
    {
        if (showLog)
        {
            Log.w(s, s1);
        }
        if (saveLog)
        {
            logHistory.add(s1);
        }
    }

}
