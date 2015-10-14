// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;


// Referenced classes of package com.adobe.air.wand:
//            TaskManager

public static final class mTitle extends Enum
{

    private static final HARDWARE_SPECIFICATIONS $VALUES[];
    public static final HARDWARE_SPECIFICATIONS ACCELEROMETER_EVENT;
    public static final HARDWARE_SPECIFICATIONS DRAW_IMAGE;
    public static final HARDWARE_SPECIFICATIONS GESTURE_EVENT;
    public static final HARDWARE_SPECIFICATIONS HARDWARE_SPECIFICATIONS;
    public static final HARDWARE_SPECIFICATIONS TOUCH_EVENT;
    public static final HARDWARE_SPECIFICATIONS VIBRATE;
    private final String mTitle;

    public static mTitle valueOf(String s)
    {
        return (mTitle)Enum.valueOf(com/adobe/air/wand/TaskManager$MessageTitle, s);
    }

    public static mTitle[] values()
    {
        return (mTitle[])$VALUES.clone();
    }

    public String toString()
    {
        return mTitle;
    }

    static 
    {
        ACCELEROMETER_EVENT = new <init>("ACCELEROMETER_EVENT", 0, "ACCELEROMETER_EVENT");
        TOUCH_EVENT = new <init>("TOUCH_EVENT", 1, "TOUCH_EVENT");
        GESTURE_EVENT = new <init>("GESTURE_EVENT", 2, "GESTURE_EVENT");
        VIBRATE = new <init>("VIBRATE", 3, "VIBRATE");
        DRAW_IMAGE = new <init>("DRAW_IMAGE", 4, "DRAW_IMAGE");
        HARDWARE_SPECIFICATIONS = new <init>("HARDWARE_SPECIFICATIONS", 5, "HARDWARE_SPECIFICATIONS");
        $VALUES = (new .VALUES[] {
            ACCELEROMETER_EVENT, TOUCH_EVENT, GESTURE_EVENT, VIBRATE, DRAW_IMAGE, HARDWARE_SPECIFICATIONS
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mTitle = s1;
    }
}
