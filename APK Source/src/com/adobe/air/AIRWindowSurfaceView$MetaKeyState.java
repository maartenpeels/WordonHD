// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

private static final class  extends Enum
{

    private static final LOCKED $VALUES[];
    public static final LOCKED ACTIVE;
    public static final LOCKED INACTIVE;
    public static final LOCKED LOCKED;
    public static final LOCKED PRESSED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AIRWindowSurfaceView$MetaKeyState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INACTIVE = new <init>("INACTIVE", 0);
        ACTIVE = new <init>("ACTIVE", 1);
        PRESSED = new <init>("PRESSED", 2);
        LOCKED = new <init>("LOCKED", 3);
        $VALUES = (new .VALUES[] {
            INACTIVE, ACTIVE, PRESSED, LOCKED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
