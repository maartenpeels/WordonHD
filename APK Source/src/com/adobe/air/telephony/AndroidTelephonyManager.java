// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;

// Referenced classes of package com.adobe.air.telephony:
//            AndroidPhoneStateListener

public class AndroidTelephonyManager
{

    private static AndroidTelephonyManager sAndroidTelephonyManager = null;
    private Context mContext;
    private boolean mListening;
    private AndroidPhoneStateListener mPhoneStateListener;
    private TelephonyManager mTelephonyMgr;

    private AndroidTelephonyManager(Context context)
    {
        mContext = null;
        mPhoneStateListener = null;
        mTelephonyMgr = null;
        mListening = false;
        mContext = context;
        if (mContext != null)
        {
            mTelephonyMgr = (TelephonyManager)mContext.getSystemService("phone");
        }
    }

    public static AndroidTelephonyManager CreateAndroidTelephonyManager(Context context)
    {
        if (sAndroidTelephonyManager == null)
        {
            sAndroidTelephonyManager = new AndroidTelephonyManager(context);
        }
        return sAndroidTelephonyManager;
    }

    public static AndroidTelephonyManager GetAndroidTelephonyManager()
    {
        return sAndroidTelephonyManager;
    }

    public void listen(boolean flag)
    {
        if (mTelephonyMgr != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (flag)
        {
            try
            {
                if (!mListening)
                {
                    if (mPhoneStateListener == null)
                    {
                        mPhoneStateListener = new AndroidPhoneStateListener();
                    }
                    mTelephonyMgr.listen(mPhoneStateListener, 32);
                    mListening = true;
                    mPhoneStateListener.onCallStateChanged(mTelephonyMgr.getCallState(), "0");
                    return;
                }
            }
            catch (Exception exception)
            {
                return;
            }
        }
        if (flag) goto _L1; else goto _L3
_L3:
        if (!mListening || mPhoneStateListener == null) goto _L1; else goto _L4
_L4:
        mTelephonyMgr.listen(mPhoneStateListener, 0);
        mPhoneStateListener = null;
        mListening = false;
        return;
    }

}
