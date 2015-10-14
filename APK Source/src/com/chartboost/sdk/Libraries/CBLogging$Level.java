// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBLogging

public static final class  extends Enum
{

    public static final ALL ALL;
    public static final ALL INTEGRATION;
    public static final ALL NONE;
    private static final ALL a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Libraries/CBLogging$Level, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        INTEGRATION = new <init>("INTEGRATION", 1);
        ALL = new <init>("ALL", 2);
        a = (new a[] {
            NONE, INTEGRATION, ALL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
