// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            ax, ar, as, au, 
//            at

private static final class f extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d g[];
    private String e;
    private Class f;

    static String a(f f1)
    {
        return f1.e;
    }

    static Class b(e e1)
    {
        return e1.f;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/chartboost/sdk/impl/ax$b, s);
    }

    public static f[] values()
    {
        return (f[])g.clone();
    }

    static 
    {
        a = new <init>("FEATURED", 0, "featured", com/chartboost/sdk/impl/ar);
        b = new <init>("REGULAR", 1, "regular", com/chartboost/sdk/impl/as);
        c = new <init>("WEBVIEW", 2, "webview", com/chartboost/sdk/impl/au);
        d = new <init>("VIDEO", 3, "video", com/chartboost/sdk/impl/at);
        g = (new g[] {
            a, b, c, d
        });
    }

    private (String s, int i, String s1, Class class1)
    {
        super(s, i);
        e = s1;
        f = class1;
    }
}
