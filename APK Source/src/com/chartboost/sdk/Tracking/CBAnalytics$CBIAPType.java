// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Tracking;


// Referenced classes of package com.chartboost.sdk.Tracking:
//            CBAnalytics

public static final class  extends Enum
{

    public static final AMAZON AMAZON;
    public static final AMAZON GOOGLE_PLAY;
    private static final AMAZON a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Tracking/CBAnalytics$CBIAPType, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        GOOGLE_PLAY = new <init>("GOOGLE_PLAY", 0);
        AMAZON = new <init>("AMAZON", 1);
        a = (new a[] {
            GOOGLE_PLAY, AMAZON
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
