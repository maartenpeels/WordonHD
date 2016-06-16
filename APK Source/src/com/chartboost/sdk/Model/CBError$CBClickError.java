// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;


// Referenced classes of package com.chartboost.sdk.Model:
//            CBError

public static final class  extends Enum
{

    public static final INTERNAL AGE_GATE_FAILURE;
    public static final INTERNAL INTERNAL;
    public static final INTERNAL NO_HOST_ACTIVITY;
    public static final INTERNAL URI_INVALID;
    public static final INTERNAL URI_UNRECOGNIZED;
    private static final INTERNAL a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Model/CBError$CBClickError, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        URI_INVALID = new <init>("URI_INVALID", 0);
        URI_UNRECOGNIZED = new <init>("URI_UNRECOGNIZED", 1);
        AGE_GATE_FAILURE = new <init>("AGE_GATE_FAILURE", 2);
        NO_HOST_ACTIVITY = new <init>("NO_HOST_ACTIVITY", 3);
        INTERNAL = new <init>("INTERNAL", 4);
        a = (new a[] {
            URI_INVALID, URI_UNRECOGNIZED, AGE_GATE_FAILURE, NO_HOST_ACTIVITY, INTERNAL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
