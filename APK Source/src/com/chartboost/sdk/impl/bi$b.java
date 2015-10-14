// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            bi

public static final class  extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    private static final g h[];

    public static  a(int i)
    {
        if (i == 0)
        {
            return null;
        }
        if (i > 0 && i <= values().length)
        {
            return values()[i - 1];
        } else
        {
            return null;
        }
    }

    public static values valueOf(String s)
    {
        return (values)Enum.valueOf(com/chartboost/sdk/impl/bi$b, s);
    }

    public static values[] values()
    {
        return (values[])h.clone();
    }

    static 
    {
        a = new <init>("PERSPECTIVE_ROTATE", 0);
        b = new <init>("BOUNCE", 1);
        c = new <init>("PERSPECTIVE_ZOOM", 2);
        d = new <init>("SLIDE_FROM_BOTTOM", 3);
        e = new <init>("SLIDE_FROM_TOP", 4);
        f = new <init>("FADE", 5);
        g = new <init>("NONE", 6);
        h = (new h[] {
            a, b, c, d, e, f, g
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
