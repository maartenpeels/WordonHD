// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

// Referenced classes of package com.heyzap.internal:
//            Utils

public class Logger
{

    static boolean ENABLED = true;
    static boolean ONLY_TEMP_LOG = false;
    static String tag = "HeyzapSDK";

    public Logger()
    {
    }

    public static void debug(Object obj)
    {
        if (!ENABLED)
        {
            return;
        }
        if (obj != null)
        {
            debug(obj.toString());
            return;
        } else
        {
            debug("NULL");
            return;
        }
    }

    public static void debug(String s)
    {
        if (!ENABLED)
        {
            return;
        }
        if (s != null)
        {
            Log.d(tag, s);
            return;
        } else
        {
            debug("NULL");
            return;
        }
    }

    public static transient void format(String s, Object aobj[])
    {
        debug(String.format(s, aobj));
    }

    public static void init(Context context)
    {
        (new Thread(new Runnable(context) {

            final Context val$context;

            public void run()
            {
                boolean flag;
                if (Logger.ENABLED && Utils.packageIsInstalled("com.example.android.snake", context))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                Logger.ENABLED = flag;
            }

            
            {
                context = context1;
                super();
            }
        })).start();
    }

    public static void log(Object obj)
    {
        debug(obj);
    }

    public static void log(String s)
    {
        debug(s);
    }

    public static transient void log(Object aobj[])
    {
        while (!ENABLED || ONLY_TEMP_LOG) 
        {
            return;
        }
        if (aobj == null)
        {
            log("null arguments");
            return;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < aobj.length; i++)
        {
            stringbuilder.append(String.valueOf(aobj[i]));
            if (i + 1 < aobj.length)
            {
                stringbuilder.append(", ");
            }
        }

        log(stringbuilder.toString());
    }

    public static transient void t(Object aobj[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < aobj.length; i++)
        {
            stringbuilder.append(String.valueOf(aobj[i]));
            if (i + 1 < aobj.length)
            {
                stringbuilder.append(", ");
            }
        }

        log(stringbuilder.toString());
    }

    public static void trace()
    {
        trace("");
    }

    public static void trace(Object obj)
    {
        if (!ENABLED)
        {
            return;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(String.format("Stack Trace: %s\n", new Object[] {
            String.valueOf(obj)
        }));
        obj = (new RuntimeException()).getStackTrace();
        for (int i = 1; i < obj.length; i++)
        {
            StackTraceElement stacktraceelement = obj[i];
            stringbuilder.append(String.format("\t%s:%d in %s.%s\n", new Object[] {
                stacktraceelement.getFileName(), Integer.valueOf(stacktraceelement.getLineNumber()), stacktraceelement.getClassName(), stacktraceelement.getMethodName()
            }));
        }

        log(stringbuilder.toString());
    }

    public static void trace(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        log(stringwriter.toString());
    }

    public static void warn(String s)
    {
        Log.w("HeyzapSDK", s);
    }

}
