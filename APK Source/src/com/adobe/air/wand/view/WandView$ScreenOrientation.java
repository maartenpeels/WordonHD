// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;


// Referenced classes of package com.adobe.air.wand.view:
//            WandView

public static final class mOrientation extends Enum
{

    private static final INHERIT $VALUES[];
    public static final INHERIT AUTO;
    public static final INHERIT INHERIT;
    public static final INHERIT LANDSCAPE;
    public static final INHERIT PORTRAIT;
    public static final INHERIT REVERSE_LANDSCAPE;
    public static final INHERIT REVERSE_PORTRAIT;
    private final String mOrientation;

    public static mOrientation getScreenOrientation(String s)
        throws Exception
    {
        if (LANDSCAPE.toString().equals(s))
        {
            return LANDSCAPE;
        }
        if (PORTRAIT.toString().equals(s))
        {
            return PORTRAIT;
        }
        if (REVERSE_LANDSCAPE.toString().equals(s))
        {
            return REVERSE_LANDSCAPE;
        }
        if (REVERSE_PORTRAIT.toString().equals(s))
        {
            return REVERSE_PORTRAIT;
        }
        if (AUTO.toString().equals(s))
        {
            return AUTO;
        }
        if (INHERIT.toString().equals(s))
        {
            return INHERIT;
        } else
        {
            throw new Exception("Unspported screen orientation");
        }
    }

    public static INHERIT valueOf(String s)
    {
        return (INHERIT)Enum.valueOf(com/adobe/air/wand/view/WandView$ScreenOrientation, s);
    }

    public static INHERIT[] values()
    {
        return (INHERIT[])$VALUES.clone();
    }

    public String toString()
    {
        return mOrientation;
    }

    static 
    {
        LANDSCAPE = new <init>("LANDSCAPE", 0, "LANDSCAPE");
        PORTRAIT = new <init>("PORTRAIT", 1, "PORTRAIT");
        REVERSE_LANDSCAPE = new <init>("REVERSE_LANDSCAPE", 2, "REVERSE_LANDSCAPE");
        REVERSE_PORTRAIT = new <init>("REVERSE_PORTRAIT", 3, "REVERSE_PORTRAIT");
        AUTO = new <init>("AUTO", 4, "AUTO");
        INHERIT = new <init>("INHERIT", 5, "INHERIT");
        $VALUES = (new .VALUES[] {
            LANDSCAPE, PORTRAIT, REVERSE_LANDSCAPE, REVERSE_PORTRAIT, AUTO, INHERIT
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mOrientation = s1;
    }
}
