// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Constants

public static final class  extends Enum
{

    private static final NETWORK_ERROR $VALUES[];
    public static final NETWORK_ERROR BAD_CREDENTIALS;
    public static final NETWORK_ERROR CONFIGURATION_ERROR;
    public static final NETWORK_ERROR INTERNAL;
    public static final NETWORK_ERROR NETWORK_ERROR;
    public static final NETWORK_ERROR NO_FILL;
    public static final NETWORK_ERROR REMOTE_ERROR;
    public static final NETWORK_ERROR SKIPPED;
    public static final NETWORK_ERROR TIMEOUT;
    public static final NETWORK_ERROR UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/heyzap/internal/Constants$AdNetworkFetchFailureReason, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        INTERNAL = new <init>("INTERNAL", 1);
        TIMEOUT = new <init>("TIMEOUT", 2);
        NO_FILL = new <init>("NO_FILL", 3);
        BAD_CREDENTIALS = new <init>("BAD_CREDENTIALS", 4);
        REMOTE_ERROR = new <init>("REMOTE_ERROR", 5);
        CONFIGURATION_ERROR = new <init>("CONFIGURATION_ERROR", 6);
        SKIPPED = new <init>("SKIPPED", 7);
        NETWORK_ERROR = new <init>("NETWORK_ERROR", 8);
        $VALUES = (new .VALUES[] {
            UNKNOWN, INTERNAL, TIMEOUT, NO_FILL, BAD_CREDENTIALS, REMOTE_ERROR, CONFIGURATION_ERROR, SKIPPED, NETWORK_ERROR
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
