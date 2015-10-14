// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


public final class f extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    public static final f f;
    public static final f g;
    public static final f h;
    private static final f i[];

    private f(String s, int j)
    {
        super(s, j);
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/chartboost/sdk/Libraries/f, s);
    }

    public static f[] values()
    {
        return (f[])i.clone();
    }

    public f a()
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[f.values().length];
                try
                {
                    a[f.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[f.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[f.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[f.a.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[ordinal()])
        {
        default:
            return g;

        case 1: // '\001'
            return e;

        case 2: // '\002'
            return h;

        case 3: // '\003'
            return f;
        }
    }

    public boolean b()
    {
        return this == a || this == c;
    }

    public boolean c()
    {
        return this == b || this == d;
    }

    static 
    {
        a = new f("PORTRAIT", 0);
        b = new f("LANDSCAPE", 1);
        c = new f("PORTRAIT_REVERSE", 2);
        d = new f("LANDSCAPE_REVERSE", 3);
        i = (new f[] {
            a, b, c, d
        });
        e = c;
        f = a;
        g = b;
        h = d;
    }
}
