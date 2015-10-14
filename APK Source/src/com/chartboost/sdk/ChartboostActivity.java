// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;

// Referenced classes of package com.chartboost.sdk:
//            a, Chartboost, b

public abstract class ChartboostActivity extends Activity
    implements a
{

    public ChartboostActivity()
    {
    }

    public void didCacheInPlay(String s)
    {
    }

    public void didCacheInterstitial(String s)
    {
    }

    public void didCacheMoreApps(String s)
    {
    }

    public void didCacheRewardedVideo(String s)
    {
    }

    public void didClickInterstitial(String s)
    {
    }

    public void didClickMoreApps(String s)
    {
    }

    public void didClickRewardedVideo(String s)
    {
    }

    public void didCloseInterstitial(String s)
    {
    }

    public void didCloseMoreApps(String s)
    {
    }

    public void didCloseRewardedVideo(String s)
    {
    }

    public void didCompleteRewardedVideo(String s, int i)
    {
    }

    public void didDismissInterstitial(String s)
    {
    }

    public void didDismissMoreApps(String s)
    {
    }

    public void didDismissRewardedVideo(String s)
    {
    }

    public void didDisplayInterstitial(String s)
    {
    }

    public void didDisplayMoreApps(String s)
    {
    }

    public void didDisplayRewardedVideo(String s)
    {
    }

    public void didFailToLoadInPlay(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
    }

    public void didFailToLoadInterstitial(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
    }

    public void didFailToLoadMoreApps(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
    }

    public void didFailToLoadRewardedVideo(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
    }

    public void didFailToRecordClick(String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror)
    {
    }

    public void didPauseClickForConfirmation()
    {
    }

    public void onBackPressed()
    {
        if (Chartboost.onBackPressed())
        {
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b.a(this);
        Chartboost.onCreate(this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Chartboost.onDestroy(this);
    }

    protected void onPause()
    {
        super.onPause();
        Chartboost.onPause(this);
    }

    protected void onResume()
    {
        super.onResume();
        Chartboost.onResume(this);
    }

    protected void onStart()
    {
        super.onStart();
        Chartboost.onStart(this);
    }

    protected void onStop()
    {
        super.onStop();
        Chartboost.onStop(this);
    }

    public boolean shouldDisplayInterstitial(String s)
    {
        return true;
    }

    public boolean shouldDisplayMoreApps(String s)
    {
        return true;
    }

    public boolean shouldDisplayRewardedVideo(String s)
    {
        return true;
    }

    public boolean shouldRequestInterstitial(String s)
    {
        return true;
    }

    public boolean shouldRequestMoreApps(String s)
    {
        return true;
    }

    public void willDisplayVideo(String s)
    {
    }
}
