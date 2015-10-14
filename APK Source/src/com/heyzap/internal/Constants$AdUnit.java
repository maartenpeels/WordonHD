// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Constants

public static final class  extends Enum
{

    private static final NATIVE $VALUES[];
    public static final NATIVE INCENTIVIZED;
    public static final NATIVE INTERSTITIAL;
    public static final NATIVE NATIVE;
    public static final NATIVE UNKNOWN;
    public static final NATIVE VIDEO;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/heyzap/internal/Constants$AdUnit, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        INTERSTITIAL = new <init>("INTERSTITIAL", 1);
        VIDEO = new <init>("VIDEO", 2);
        INCENTIVIZED = new <init>("INCENTIVIZED", 3);
        NATIVE = new <init>("NATIVE", 4);
        $VALUES = (new .VALUES[] {
            UNKNOWN, INTERSTITIAL, VIDEO, INCENTIVIZED, NATIVE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
