// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Constants

public static final class  extends Enum
{

    private static final FINISHED $VALUES[];
    public static final FINISHED DISPLAY_TIMEOUT;
    public static final FINISHED ERROR;
    public static final FINISHED FETCH_TIMEOUT;
    public static final FINISHED FINISHED;
    public static final FINISHED INTERNAL;
    public static final FINISHED UNKNOWN;
    public static final FINISHED USER_INITIATED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/heyzap/internal/Constants$MediationCancellationReason, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        FETCH_TIMEOUT = new <init>("FETCH_TIMEOUT", 1);
        DISPLAY_TIMEOUT = new <init>("DISPLAY_TIMEOUT", 2);
        ERROR = new <init>("ERROR", 3);
        USER_INITIATED = new <init>("USER_INITIATED", 4);
        INTERNAL = new <init>("INTERNAL", 5);
        FINISHED = new <init>("FINISHED", 6);
        $VALUES = (new .VALUES[] {
            UNKNOWN, FETCH_TIMEOUT, DISPLAY_TIMEOUT, ERROR, USER_INITIATED, INTERNAL, FINISHED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
