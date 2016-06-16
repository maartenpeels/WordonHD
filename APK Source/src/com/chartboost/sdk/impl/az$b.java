// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            az

public static final class e extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d f[];
    private int e;

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/chartboost/sdk/impl/az$b, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    public int a()
    {
        return e;
    }

    static 
    {
        a = new <init>("CONNECTION_UNKNOWN", 0, -1);
        b = new <init>("CONNECTION_ERROR", 1, 0);
        c = new <init>("CONNECTION_WIFI", 2, 1);
        d = new <init>("CONNECTION_MOBILE", 3, 2);
        f = (new f[] {
            a, b, c, d
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        e = j;
    }
}
