// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashplayer;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;

public class HDMIUtils
{
    private static final class HDMIState extends Enum
    {

        private static final HDMIState $VALUES[];
        public static final HDMIState HDCPON;
        public static final HDMIState OFF;
        public static final HDMIState ON;
        public static final HDMIState UNKNOWN;
        public final int value;

        public static HDMIState valueOf(String s)
        {
            return (HDMIState)Enum.valueOf(com/adobe/flashplayer/HDMIUtils$HDMIState, s);
        }

        public static HDMIState[] values()
        {
            return (HDMIState[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new HDMIState("UNKNOWN", 0, 0);
            OFF = new HDMIState("OFF", 1, 1);
            ON = new HDMIState("ON", 2, 2);
            HDCPON = new HDMIState("HDCPON", 3, 3);
            $VALUES = (new HDMIState[] {
                UNKNOWN, OFF, ON, HDCPON
            });
        }

        private HDMIState(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }

    class HdmiBroadcastReceiver extends BroadcastReceiver
    {

        final HDMIUtils this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s;
            s = intent.getAction();
            boolean flag;
            if (intent != null)
            {
                context = intent.getExtras();
            } else
            {
                context = null;
            }
            if (!s.equals("com.motorola.intent.action.EXTDISP_STATUS_CONNECTION")) goto _L2; else goto _L1
_L1:
            if (context != null)
            {
                flag = context.getBoolean("hdmi");
                if (flag != mHdmiConnection)
                {
                    mHdmiConnection = flag;
                    mHdmiStatusKnown = true;
                }
            }
_L4:
            return;
_L2:
            if (!s.equals("com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"))
            {
                continue; /* Loop/switch isn't completed */
            }
            if (context == null) goto _L4; else goto _L3
_L3:
            boolean flag1 = context.getBoolean("hdmi");
            if (flag1 == mHdmiOnOff) goto _L4; else goto _L5
_L5:
            mHdmiOnOff = flag1;
            mHdmiStatusKnown = true;
            return;
            if (!s.equals("com.motorola.intent.action.externaldisplaystate") || context == null) goto _L4; else goto _L6
_L6:
            intent = HDMIUtils.this;
            boolean flag2;
            if (context.getInt("hdmi") == 1)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            intent.mHdmiOnOff = flag2;
            intent = HDMIUtils.this;
            if (context.getInt("hdcp") == 1)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            intent.mHdcpOnOff = flag2;
            mHdmiStatusKnown = true;
            return;
        }

        HdmiBroadcastReceiver()
        {
            this$0 = HDMIUtils.this;
            super();
        }
    }

    class HdmiServiceConnection
        implements ServiceConnection
    {

        final HDMIUtils this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            mHdmiStatusKnown = false;
        }

        HdmiServiceConnection()
        {
            this$0 = HDMIUtils.this;
            super();
        }
    }


    private static final String EXTDISP_PUBLIC_STATE = "com.motorola.intent.action.externaldisplaystate";
    private static final String EXTDISP_STATUS_CONNECTION = "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION";
    private static final String EXTDISP_STATUS_DISPLAY = "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY";
    private static final String EXTDISP_STATUS_RESOLUTION = "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION";
    private static final String EXTRA_HDCP = "hdcp";
    private static final String EXTRA_HDMI = "hdmi";
    private static final String TAG = "HDMIUtils";
    private static final int TYPE_HDMI = 1;
    private static Object lock = new Object();
    private static HDMIUtils mSingleton = null;
    private HdmiServiceConnection mConnection;
    private Context mContext;
    private Binder mDeathWatcher;
    private HdmiBroadcastReceiver mExtConnectionReceiver;
    private boolean mHdcpOnOff;
    private boolean mHdmiConnection;
    private boolean mHdmiOnOff;
    private boolean mHdmiStatusKnown;

    private HDMIUtils(Context context)
    {
        mHdmiStatusKnown = false;
        mHdmiOnOff = false;
        mHdcpOnOff = false;
        mHdmiConnection = false;
        mContext = null;
        mExtConnectionReceiver = null;
        mDeathWatcher = null;
        mContext = context;
        mHdmiStatusKnown = false;
        mHdcpOnOff = false;
        mHdmiOnOff = false;
        mHdmiConnection = false;
        mConnection = new HdmiServiceConnection();
        mDeathWatcher = new Binder();
        mExtConnectionReceiver = new HdmiBroadcastReceiver();
        context = new IntentFilter();
        context.addAction("com.motorola.intent.action.externaldisplaystate");
        context.addAction("com.motorola.intent.action.EXTDISP_STATUS_CONNECTION");
        context.addAction("com.motorola.intent.action.EXTDISP_STATUS_DISPLAY");
        context.addAction("com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION");
        mContext.registerReceiver(mExtConnectionReceiver, context);
    }

    public static void closeHelper()
    {
        if (mSingleton == null)
        {
            return;
        }
        synchronized (lock)
        {
            if (mSingleton.mExtConnectionReceiver != null)
            {
                mSingleton.mContext.unregisterReceiver(mSingleton.mExtConnectionReceiver);
                mSingleton.mExtConnectionReceiver = null;
            }
            if (mSingleton.mConnection != null)
            {
                mSingleton.mContext.unbindService(mSingleton.mConnection);
                mSingleton.mConnection = null;
            }
            mSingleton.mDeathWatcher = null;
        }
        mSingleton.mHdmiStatusKnown = false;
        mSingleton = null;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static int getHDMIState(Context context)
    {
        initHelper(context);
        int i = HDMIState.UNKNOWN.value;
        if (!mSingleton.isHdmiStatusKnown())
        {
            return HDMIState.UNKNOWN.value;
        }
        if (mSingleton.isHDCPOn())
        {
            return HDMIState.HDCPON.value;
        }
        if (mSingleton.isHDMIOn())
        {
            return HDMIState.ON.value;
        } else
        {
            return HDMIState.OFF.value;
        }
    }

    public static void initHelper(Context context)
    {
        if (mSingleton != null)
        {
            return;
        } else
        {
            mSingleton = new HDMIUtils(context);
            return;
        }
    }

    public boolean isConnected()
    {
        return mHdmiConnection;
    }

    public boolean isHDCPOn()
    {
        return mHdcpOnOff;
    }

    public boolean isHDMIOn()
    {
        return mHdmiOnOff;
    }

    public boolean isHdmiStatusKnown()
    {
        return mHdmiStatusKnown;
    }




/*
    static boolean access$002(HDMIUtils hdmiutils, boolean flag)
    {
        hdmiutils.mHdmiConnection = flag;
        return flag;
    }

*/


/*
    static boolean access$102(HDMIUtils hdmiutils, boolean flag)
    {
        hdmiutils.mHdmiStatusKnown = flag;
        return flag;
    }

*/



/*
    static boolean access$202(HDMIUtils hdmiutils, boolean flag)
    {
        hdmiutils.mHdmiOnOff = flag;
        return flag;
    }

*/


/*
    static boolean access$302(HDMIUtils hdmiutils, boolean flag)
    {
        hdmiutils.mHdcpOnOff = flag;
        return flag;
    }

*/
}
