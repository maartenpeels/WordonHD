// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.Logger;

// Referenced classes of package com.google.android.gms.tagmanager:
//            de, bh

static class 
    implements Logger
{

    private static int ci(int i)
    {
        switch (i)
        {
        case 6: // '\006'
        default:
            return 3;

        case 5: // '\005'
            return 2;

        case 3: // '\003'
        case 4: // '\004'
            return 1;

        case 2: // '\002'
            return 0;
        }
    }

    public void error(Exception exception)
    {
        bh.b("", exception);
    }

    public void error(String s)
    {
        bh.w(s);
    }

    public int getLogLevel()
    {
        return ci(bh.getLogLevel());
    }

    public void info(String s)
    {
        bh.x(s);
    }

    public void setLogLevel(int i)
    {
        bh.z("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
    }

    public void verbose(String s)
    {
        bh.y(s);
    }

    public void warn(String s)
    {
        bh.z(s);
    }

    ()
    {
    }
}
