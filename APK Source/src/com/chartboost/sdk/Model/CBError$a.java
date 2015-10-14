// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;


// Referenced classes of package com.chartboost.sdk.Model:
//            CBError

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

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Model/CBError$a, s);
    }

    public static [] values()
    {
        return ([])h.clone();
    }

    static 
    {
        a = new <init>("MISCELLANEOUS", 0);
        b = new <init>("INTERNET_UNAVAILABLE", 1);
        c = new <init>("INVALID_RESPONSE", 2);
        d = new <init>("UNEXPECTED_RESPONSE", 3);
        e = new <init>("NETWORK_FAILURE", 4);
        f = new <init>("PUBLIC_KEY_MISSING", 5);
        g = new <init>("HTTP_NOT_FOUND", 6);
        h = (new h[] {
            a, b, c, d, e, f, g
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
