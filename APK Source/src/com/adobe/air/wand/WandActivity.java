// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.Window;
import com.adobe.air.wand.connection.WandWebSocket;
import com.adobe.air.wand.view.WandView;

// Referenced classes of package com.adobe.air.wand:
//            WandManager

public class WandActivity extends Activity
{

    private static final String LOG_TAG = "WandActivity";
    private boolean mHasResumed;
    private WandManager mWandManager;
    private WandWebSocket mWandWebSocket;

    public WandActivity()
    {
        mWandWebSocket = null;
        mWandManager = null;
        mHasResumed = false;
    }

    private void initialize()
    {
        try
        {
            mWandWebSocket = new WandWebSocket(this);
            mWandManager = new WandManager(this, (WandView)findViewById(0x7f0600eb), mWandWebSocket);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void terminate()
        throws Exception
    {
        mWandManager.dispose();
        mWandManager = null;
        mWandWebSocket.dispose();
        mWandWebSocket = null;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (mWandManager == null || !mWandManager.hasFocus())
        {
            break MISSING_BLOCK_LABEL_30;
        }
        mWandManager.onConfigurationChanged(configuration);
        return;
        configuration;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setFormat(1);
        setContentView(0x7f030040);
        initialize();
    }

    public void onDestroy()
    {
        super.onDestroy();
        try
        {
            terminate();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        try
        {
            mHasResumed = false;
            mWandManager.focus(false);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        mHasResumed = true;
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (!mHasResumed || !flag || mWandManager == null || mWandManager.hasFocus())
        {
            break MISSING_BLOCK_LABEL_41;
        }
        mWandManager.focus(true);
        return;
        Exception exception;
        exception;
    }
}
