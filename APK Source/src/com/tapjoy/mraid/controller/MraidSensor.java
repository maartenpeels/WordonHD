// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.Context;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.listener.Accel;
import com.tapjoy.mraid.view.MraidView;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract

public class MraidSensor extends Abstract
{

    private static final String TAG = "MRAID Sensor";
    final int INTERVAL = 1000;
    private Accel mAccel;
    private float mLastX;
    private float mLastY;
    private float mLastZ;

    public MraidSensor(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        mLastX = 0.0F;
        mLastY = 0.0F;
        mLastZ = 0.0F;
        mAccel = new Accel(context, this);
    }

    public float getHeading()
    {
        TapjoyLog.d("MRAID Sensor", (new StringBuilder()).append("getHeading: ").append(mAccel.getHeading()).toString());
        return mAccel.getHeading();
    }

    public String getTilt()
    {
        String s = (new StringBuilder()).append("{ x : \"").append(mLastX).append("\", y : \"").append(mLastY).append("\", z : \"").append(mLastZ).append("\"}").toString();
        TapjoyLog.d("MRAID Sensor", (new StringBuilder()).append("getTilt: ").append(s).toString());
        return s;
    }

    public void onHeadingChange(float f)
    {
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ heading: ").append((int)((double)f * 57.295779513082323D)).append("});").toString();
        TapjoyLog.d("MRAID Sensor", s);
        mMraidView.injectMraidJavaScript(s);
    }

    public void onShake()
    {
        mMraidView.injectMraidJavaScript("mraid.gotShake()");
    }

    public void onTilt(float f, float f1, float f2)
    {
        mLastX = f;
        mLastY = f1;
        mLastZ = f2;
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ tilt: ").append(getTilt()).append("})").toString();
        TapjoyLog.d("MRAID Sensor", s);
        mMraidView.injectMraidJavaScript(s);
    }

    public void startHeadingListener()
    {
        mAccel.startTrackingHeading();
    }

    public void startShakeListener()
    {
        mAccel.startTrackingShake();
    }

    public void startTiltListener()
    {
        mAccel.startTrackingTilt();
    }

    void stop()
    {
    }

    public void stopAllListeners()
    {
        mAccel.stopAllListeners();
    }

    public void stopHeadingListener()
    {
        mAccel.stopTrackingHeading();
    }

    public void stopShakeListener()
    {
        mAccel.stopTrackingShake();
    }

    public void stopTiltListener()
    {
        mAccel.stopTrackingTilt();
    }
}
