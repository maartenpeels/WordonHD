// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tapjoy.mraid.controller.Display;

public class ConfigBroadcastReceiver extends BroadcastReceiver
{

    private int mLastOrientation;
    private Display mMraidDisplay;

    public ConfigBroadcastReceiver(Display display)
    {
        mMraidDisplay = display;
        mLastOrientation = mMraidDisplay.getOrientation();
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED"))
        {
            int i = mMraidDisplay.getOrientation();
            if (i != mLastOrientation)
            {
                mLastOrientation = i;
                mMraidDisplay.onOrientationChanged(mLastOrientation);
            }
        }
    }
}
