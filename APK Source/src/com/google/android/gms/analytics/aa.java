// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            Logger, GoogleAnalytics

public class aa
{

    private static GoogleAnalytics vs;

    public static boolean cT()
    {
        if (getLogger() != null)
        {
            return getLogger().getLogLevel() == 0;
        } else
        {
            return false;
        }
    }

    private static Logger getLogger()
    {
        if (vs == null)
        {
            vs = GoogleAnalytics.cM();
        }
        if (vs != null)
        {
            return vs.getLogger();
        } else
        {
            return null;
        }
    }

    public static void w(String s)
    {
        Logger logger = getLogger();
        if (logger != null)
        {
            logger.error(s);
        }
    }

    public static void x(String s)
    {
        Logger logger = getLogger();
        if (logger != null)
        {
            logger.info(s);
        }
    }

    public static void y(String s)
    {
        Logger logger = getLogger();
        if (logger != null)
        {
            logger.verbose(s);
        }
    }

    public static void z(String s)
    {
        Logger logger = getLogger();
        if (logger != null)
        {
            logger.warn(s);
        }
    }
}
