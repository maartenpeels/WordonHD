// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.adobe.air.utils.AIRLogger;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

public class Automation
{

    public Automation()
    {
    }

    public boolean dispatchKeyEvent(AIRWindowSurfaceView airwindowsurfaceview, int i, int j, int k, boolean flag, boolean flag1, boolean flag2)
    {
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            return false;
        }
        k = 0;
        if (flag)
        {
            k = 0 | 2;
        }
        int l = k;
        if (flag1)
        {
            l = k | 1;
        }
        KeyEvent keyevent;
        if (flag2)
        {
            k = l | 4;
        } else
        {
            k = l;
        }
        keyevent = new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i, j, 0, k);
        if (i == 0)
        {
            try
            {
                airwindowsurfaceview.onKeyDown(j, keyevent);
            }
            // Misplaced declaration of an exception variable
            catch (AIRWindowSurfaceView airwindowsurfaceview)
            {
                AIRLogger.d("Automation", (new StringBuilder()).append("[JP] dispatchKeyEvent caught ").append(airwindowsurfaceview).toString());
            }
            break MISSING_BLOCK_LABEL_136;
        }
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        airwindowsurfaceview.onKeyUp(j, keyevent);
        return true;
    }

    public boolean dispatchTouchEvent(AIRWindowSurfaceView airwindowsurfaceview, int i, float f, float f1, float f2, int j, float f3, 
            float f4, boolean flag, float af[], int k)
    {
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            return false;
        }
        try
        {
            airwindowsurfaceview.onTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i, f, f1, k));
        }
        // Misplaced declaration of an exception variable
        catch (AIRWindowSurfaceView airwindowsurfaceview)
        {
            AIRLogger.d("Automation", (new StringBuilder()).append("[JP] dispatchTouchEvent caught ").append(airwindowsurfaceview).toString());
        }
        return true;
    }
}
