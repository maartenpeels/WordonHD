// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Constants

public static final class  extends Enum
{

    private static final HEYZAP $VALUES[];
    public static final HEYZAP HEYZAP;
    public static final HEYZAP MEDIATION;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/heyzap/internal/Constants$MediationFetchMode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MEDIATION = new <init>("MEDIATION", 0);
        HEYZAP = new <init>("HEYZAP", 1);
        $VALUES = (new .VALUES[] {
            MEDIATION, HEYZAP
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
