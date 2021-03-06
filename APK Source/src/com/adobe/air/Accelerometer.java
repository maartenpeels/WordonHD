// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class Accelerometer
    implements SensorEventListener
{

    private static final float STANDARD_GRAVITY = 9.81F;
    private Context mContext;
    private SensorManager mSensorManager;
    private float m_x;
    private float m_y;
    private float m_z;

    public Accelerometer(Context context)
    {
        mContext = context;
        if (mContext.getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer"))
        {
            mSensorManager = (SensorManager)context.getSystemService("sensor");
            mSensorManager.registerListener(this, mSensorManager.getDefaultSensor(1), 0);
        }
    }

    public float getX()
    {
        return m_x;
    }

    public float getY()
    {
        return m_y;
    }

    public float getZ()
    {
        return m_z;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        m_x = sensorevent.values[0] / 9.81F;
        m_y = sensorevent.values[1] / 9.81F;
        m_z = sensorevent.values[2] / 9.81F;
    }

    public void removeListener()
    {
        if (mContext.getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer"))
        {
            mSensorManager.unregisterListener(this);
        }
    }
}
