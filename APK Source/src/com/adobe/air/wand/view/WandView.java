// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.content.res.Configuration;
import android.graphics.Bitmap;

// Referenced classes of package com.adobe.air.wand.view:
//            TouchSensor

public interface WandView
{
    public static interface Listener
    {

        public abstract String getConnectionToken();

        public abstract void onLoadCompanion(Configuration configuration)
            throws Exception;
    }

    public static final class ScreenOrientation extends Enum
    {

        private static final ScreenOrientation $VALUES[];
        public static final ScreenOrientation AUTO;
        public static final ScreenOrientation INHERIT;
        public static final ScreenOrientation LANDSCAPE;
        public static final ScreenOrientation PORTRAIT;
        public static final ScreenOrientation REVERSE_LANDSCAPE;
        public static final ScreenOrientation REVERSE_PORTRAIT;
        private final String mOrientation;

        public static ScreenOrientation getScreenOrientation(String s)
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

        public static ScreenOrientation valueOf(String s)
        {
            return (ScreenOrientation)Enum.valueOf(com/adobe/air/wand/view/WandView$ScreenOrientation, s);
        }

        public static ScreenOrientation[] values()
        {
            return (ScreenOrientation[])$VALUES.clone();
        }

        public String toString()
        {
            return mOrientation;
        }

        static 
        {
            LANDSCAPE = new ScreenOrientation("LANDSCAPE", 0, "LANDSCAPE");
            PORTRAIT = new ScreenOrientation("PORTRAIT", 1, "PORTRAIT");
            REVERSE_LANDSCAPE = new ScreenOrientation("REVERSE_LANDSCAPE", 2, "REVERSE_LANDSCAPE");
            REVERSE_PORTRAIT = new ScreenOrientation("REVERSE_PORTRAIT", 3, "REVERSE_PORTRAIT");
            AUTO = new ScreenOrientation("AUTO", 4, "AUTO");
            INHERIT = new ScreenOrientation("INHERIT", 5, "INHERIT");
            $VALUES = (new ScreenOrientation[] {
                LANDSCAPE, PORTRAIT, REVERSE_LANDSCAPE, REVERSE_PORTRAIT, AUTO, INHERIT
            });
        }

        private ScreenOrientation(String s, int i, String s1)
        {
            super(s, i);
            mOrientation = s1;
        }
    }


    public abstract void drawImage(Bitmap bitmap)
        throws Exception;

    public abstract TouchSensor getTouchSensor();

    public abstract void loadCompanionView()
        throws Exception;

    public abstract void loadDefaultView()
        throws Exception;

    public abstract void registerListener(Listener listener)
        throws Exception;

    public abstract void setScreenOrientation(ScreenOrientation screenorientation)
        throws Exception;

    public abstract void unregisterListener();

    public abstract void updateConnectionToken(String s);
}
