// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            OrientationManager

public static final class  extends Enum
{

    private static final UPSIDE_DOWN $VALUES[];
    public static final UPSIDE_DOWN DEFAULT;
    public static final UPSIDE_DOWN ROTATED_LEFT;
    public static final UPSIDE_DOWN ROTATED_RIGHT;
    public static final UPSIDE_DOWN UNKNOWN;
    public static final UPSIDE_DOWN UPSIDE_DOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/OrientationManager$EOrientation, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        DEFAULT = new <init>("DEFAULT", 1);
        ROTATED_LEFT = new <init>("ROTATED_LEFT", 2);
        ROTATED_RIGHT = new <init>("ROTATED_RIGHT", 3);
        UPSIDE_DOWN = new <init>("UPSIDE_DOWN", 4);
        $VALUES = (new .VALUES[] {
            UNKNOWN, DEFAULT, ROTATED_LEFT, ROTATED_RIGHT, UPSIDE_DOWN
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
