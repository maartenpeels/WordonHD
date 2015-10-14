// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            c

public static final class f extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    private static final e g[];
    private int f;

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/chartboost/sdk/Libraries/c$a, s);
    }

    public static f[] values()
    {
        return (f[])g.clone();
    }

    public int a()
    {
        return f;
    }

    public boolean b()
    {
        return f != -1;
    }

    static 
    {
        a = new <init>("PRELOAD", 0, -1);
        b = new <init>("LOADING", 1, -1);
        c = new <init>("UNKNOWN", 2, -1);
        d = new <init>("TRACKING_ENABLED", 3, 0);
        e = new <init>("TRACKING_DISABLED", 4, 1);
        g = (new g[] {
            a, b, c, d, e
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        f = j;
    }
}
