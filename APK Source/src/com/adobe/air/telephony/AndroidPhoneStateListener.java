// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.telephony;

import android.telephony.PhoneStateListener;

class AndroidPhoneStateListener extends PhoneStateListener
{

    AndroidPhoneStateListener()
    {
    }

    private native void nativeOnCallStateChanged(int i);

    private int toAIRCallState(int i)
    {
        int j = 0;
        if ((i & 1) == 1)
        {
            j = 1;
        } else
        if ((i & 2) == 2)
        {
            return 2;
        }
        return j;
    }

    public void onCallStateChanged(int i, String s)
    {
        nativeOnCallStateChanged(toAIRCallState(i));
    }
}
