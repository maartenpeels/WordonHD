// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.abstr;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.ClickHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.AdRequest;
import com.heyzap.house.request.DisplayCache;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;

public abstract class AbstractActivity extends Activity
{
    public static interface AdActionListener
    {

        public abstract void click();

        public abstract void clickUrl(String s, String s1);

        public abstract void completed();

        public abstract void error();

        public abstract void hide();

        public abstract void installHeyzap();

        public abstract void restart();

        public abstract void show();
    }


    public static final int ACTIVITY_ACTION_HIDE = 2;
    public static final int ACTIVITY_ACTION_SHOW = 1;
    public static final String ACTIVITY_INTENT_ACTION_KEY = "action";
    public static final String ACTIVITY_INTENT_CONTEXT_KEY = "ad_context";
    public static final String ACTIVITY_INTENT_IMPRESSION_KEY = "impression_id";
    public static final String ACTIVITY_INTENT_ORIGINAL_ORIENTATION = "original_orientation";
    protected AdModel currentAd;
    protected Boolean currentAdComplete;
    protected String currentAdImpressionId;
    protected String currentAdTag;
    protected com.heyzap.internal.Constants.AdUnit currentAdUnit;
    private int originalOrientation;
    private ProgressDialog progressDialog;

    public AbstractActivity()
    {
        currentAdTag = null;
        currentAdImpressionId = null;
        currentAdUnit = com.heyzap.internal.Constants.AdUnit.UNKNOWN;
        currentAdComplete = Boolean.valueOf(false);
        originalOrientation = 0;
        progressDialog = null;
    }

    private void lockCurrentAdOrientation()
    {
        int i = currentAd.getRequiredOrientation();
        if (i == 0)
        {
            return;
        }
        switch (i)
        {
        default:
            return;

        case 1: // '\001'
            if (Utils.getSdkVersion() > 8)
            {
                setRequestedOrientation(7);
                return;
            } else
            {
                setRequestedOrientation(1);
                return;
            }

        case 2: // '\002'
            break;
        }
        if (Utils.getSdkVersion() > 8)
        {
            setRequestedOrientation(6);
            return;
        } else
        {
            setRequestedOrientation(0);
            return;
        }
    }

    public void finish()
    {
        super.finish();
    }

    public abstract View getContentView();

    protected void handleIntent(Intent intent)
    {
        if (intent.getExtras() == null)
        {
            finish();
        }
        if (!intent.getExtras().containsKey("action"))
        {
            finish();
        }
        if (intent.getExtras().containsKey("original_orientation"))
        {
            originalOrientation = intent.getExtras().getInt("original_orientation");
        }
        if (!intent.getExtras().containsKey("action")) goto _L2; else goto _L1
_L1:
        intent.getExtras().getInt("action");
        JVM INSTR tableswitch 2 2: default 92
    //                   2 163;
           goto _L3 _L4
_L3:
        currentAdImpressionId = intent.getStringExtra("impression_id");
        currentAd = Manager.getInstance().getDisplayCache().get();
        if (currentAd != null && !currentAd.isExpired().booleanValue()) goto _L6; else goto _L5
_L5:
        if (currentAd != null)
        {
            try
            {
                currentAd.getAdRequest().getOnStatusListener().onFailedToShow(null);
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                Logger.trace(intent);
            }
        }
        finish();
_L2:
        return;
_L4:
        if (currentAd == null)
        {
            finish();
            return;
        } else
        {
            onHide();
            return;
        }
_L6:
        currentAdTag = currentAd.getTag();
        currentAdUnit = currentAd.getAdUnit();
        lockCurrentAdOrientation();
        prepare();
        setContentView(getContentView());
        onShow();
        Manager.lastActivity = this;
        return;
    }

    public void onClick()
    {
        onClick(currentAd.actionUrl, null);
    }

    public void onClick(String s, String s1)
    {
        (new ClickHandler(currentAd)).doClick(this, s, s1);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        super.requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().getDecorView().setBackgroundColor(0);
        if (Utils.getSdkVersion() >= 11)
        {
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        if (!Manager.isStarted().booleanValue())
        {
            finish();
            return;
        } else
        {
            handleIntent(getIntent());
            return;
        }
    }

    protected void onDestroy()
    {
        if (progressDialog != null && progressDialog.isShowing())
        {
            progressDialog.cancel();
        }
        super.onDestroy();
    }

    public void onHide()
    {
        if (currentAd == null)
        {
            return;
        }
        Logger.format("(HIDE) %s", new Object[] {
            currentAd
        });
        static class _cls1
        {

            static final int $SwitchMap$com$heyzap$internal$Constants$AdUnit[];

            static 
            {
                $SwitchMap$com$heyzap$internal$Constants$AdUnit = new int[com.heyzap.internal.Constants.AdUnit.values().length];
                try
                {
                    $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INTERSTITIAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        try
        {
            currentAd.cleanup(this);
        }
        catch (Exception exception)
        {
            Logger.trace(exception);
        }
        if (Manager.SLOW_CLOSE.booleanValue())
        {
            progressDialog = new ProgressDialog(this);
            progressDialog.setTitle("Please wait...");
            progressDialog.setMessage("");
            progressDialog.setIndeterminate(true);
            progressDialog.setCancelable(false);
            progressDialog.show();
        }
        finish();
        Manager.getInstance().getDisplayCache().clear();
        currentAd.getAdRequest().getOnStatusListener().onHide(currentAd.getTag());
        switch (_cls1..SwitchMap.com.heyzap.internal.Constants.AdUnit[currentAdUnit.ordinal()])
        {
        case 1: // '\001'
        default:
            Manager.lastActivity = null;
            break;
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent(intent);
    }

    protected void onPause()
    {
        super.onPause();
    }

    public abstract Boolean onPrepared();

    protected void onResume()
    {
        super.onResume();
    }

    public void onShow()
    {
        currentAd.setHasBeenShown(true);
        currentAd.onImpression(this);
        currentAd.getAdRequest().getOnStatusListener().onShow(currentAd.getTag());
    }

    public abstract void prepare();
}
