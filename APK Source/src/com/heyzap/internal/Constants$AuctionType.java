// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Constants

public static final class  extends Enum
{

    private static final CROSS_PROMO $VALUES[];
    public static final CROSS_PROMO CROSS_PROMO;
    public static final CROSS_PROMO MONETIZATION;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/heyzap/internal/Constants$AuctionType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MONETIZATION = new <init>("MONETIZATION", 0);
        CROSS_PROMO = new <init>("CROSS_PROMO", 1);
        $VALUES = (new .VALUES[] {
            MONETIZATION, CROSS_PROMO
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
