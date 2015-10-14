// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;


// Referenced classes of package eu.alebianco.air.extensions.analytics.functions:
//            TrackData

private static final class  extends Enum
{

    private static final TRANSACTION $VALUES[];
    public static final TRANSACTION EVENT;
    public static final TRANSACTION EXCEPTION;
    public static final TRANSACTION SOCIAL;
    public static final TRANSACTION TIMING;
    public static final TRANSACTION TRANSACTION;
    public static final TRANSACTION VIEW;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(eu/alebianco/air/extensions/analytics/functions/TrackData$HitType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        VIEW = new <init>("VIEW", 0);
        EVENT = new <init>("EVENT", 1);
        EXCEPTION = new <init>("EXCEPTION", 2);
        TIMING = new <init>("TIMING", 3);
        SOCIAL = new <init>("SOCIAL", 4);
        TRANSACTION = new <init>("TRANSACTION", 5);
        $VALUES = (new .VALUES[] {
            VIEW, EVENT, EXCEPTION, TIMING, SOCIAL, TRANSACTION
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
