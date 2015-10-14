// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

private static final class  extends Enum
{

    private static final ConflictMode $VALUES[];
    public static final ConflictMode ConflictMode;
    public static final ConflictMode ConnectMode;
    public static final ConflictMode ListenMode;
    public static final ConflictMode None;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AndroidActivityWrapper$DebugMode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        None = new <init>("None", 0);
        ConnectMode = new <init>("ConnectMode", 1);
        ListenMode = new <init>("ListenMode", 2);
        ConflictMode = new <init>("ConflictMode", 3);
        $VALUES = (new .VALUES[] {
            None, ConnectMode, ListenMode, ConflictMode
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
