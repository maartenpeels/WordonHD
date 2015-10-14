// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.heyzap.house.abstr.AbstractActivity;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.request.AdRequest;
import com.heyzap.house.view.FullscreenVideoView;
import com.heyzap.house.view.InterstitialWebView;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;

public class HeyzapVideoActivity extends AbstractActivity
{
    private class VideoActionListener
        implements com.heyzap.house.abstr.AbstractActivity.AdActionListener
    {

        final HeyzapVideoActivity this$0;

        public void click()
        {
            onClick();
        }

        public void clickUrl(String s, String s1)
        {
            Logger.log(s);
        }

        public void completed()
        {
            Logger.log("(FINISH VIDEO)");
            onAudioFinished();
            startedVideo = Boolean.valueOf(false);
            Boolean.valueOf(true).getVideoDisplayOptions = <returnValue>;
            if (((VideoModel)access$600).getVideoDisplayOptions().postRollInterstitial.booleanValue())
            {
                switchToView(1);
            }
        }

        public void error()
        {
            Logger.trace();
            onAudioFinished();
            startedVideo = Boolean.valueOf(false);
            if (!Utils.isApplicationOnTop(HeyzapVideoActivity.this))
            {
                hide();
                return;
            }
            if (((VideoModel)access$600).getVideoDisplayOptions().postRollInterstitial.booleanValue())
            {
                ((VideoModel)access$600).onInterstitialFallback();
                switchToView(1);
                return;
            } else
            {
                onHide();
                return;
            }
        }

        public void hide()
        {
            Logger.log("(FINISH VIDEO)");
            onAudioFinished();
            startedVideo = Boolean.valueOf(false);
            if (!((VideoModel)access$600).getVideoDisplayOptions().postRollInterstitial.booleanValue())
            {
                onHide();
                return;
            } else
            {
                switchToView(1);
                return;
            }
        }

        public void installHeyzap()
        {
        }

        public void restart()
        {
        }

        public void show()
        {
            Logger.log("(STARTING VIDEO)");
            startedVideo = Boolean.valueOf(true);
            onAudioStarted();
        }

        private VideoActionListener()
        {
            this$0 = HeyzapVideoActivity.this;
            super();
        }

    }

    private class WebViewActionListener
        implements com.heyzap.house.abstr.AbstractActivity.AdActionListener
    {

        final HeyzapVideoActivity this$0;

        public void click()
        {
            onClick();
        }

        public void clickUrl(String s, String s1)
        {
            onClick(s, s1);
        }

        public void completed()
        {
        }

        public void error()
        {
        }

        public void hide()
        {
            onHide();
        }

        public void installHeyzap()
        {
        }

        public void restart()
        {
            switchToView(2);
            videoView.restart();
        }

        public void show()
        {
        }

        private WebViewActionListener()
        {
            this$0 = HeyzapVideoActivity.this;
            super();
        }

    }


    private static final int NO_SCREEN = 0;
    private static final int VIDEO_SCREEN = 2;
    private static final int WEBVIEW_SCREEN = 1;
    protected FrameLayout backgroundView;
    private int currentScreen;
    protected Boolean startedVideo;
    protected FullscreenVideoView videoView;
    protected InterstitialWebView webView;

    public HeyzapVideoActivity()
    {
        startedVideo = Boolean.valueOf(false);
        currentScreen = 0;
    }

    private void onAudioFinished()
    {
        if (startedVideo.booleanValue())
        {
            currentAd.getAdRequest().getOnStatusListener().onAudioFinished();
        }
    }

    private void onAudioStarted()
    {
        if (startedVideo.booleanValue())
        {
            currentAd.getAdRequest().getOnStatusListener().onAudioStarted();
        }
    }

    public View getContentView()
    {
        backgroundView.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        return backgroundView;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (Utils.getSdkVersion() >= 9)
        {
            super.setRequestedOrientation(6);
            return;
        } else
        {
            super.setRequestedOrientation(0);
            return;
        }
    }

    public void onHide()
    {
        boolean flag;
        if (currentAdUnit == com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (videoView != null)
        {
            ((VideoModel)currentAd).onComplete(this, videoView.getPlaybackDuration(), videoView.getTotalVideoDuration(), currentAdComplete);
        }
        if (Boolean.valueOf(flag).booleanValue())
        {
            if (currentAdComplete.booleanValue())
            {
                currentAd.getAdRequest().getOnIncentiveListener().onComplete(currentAd.getTag());
            } else
            {
                currentAd.getAdRequest().getOnIncentiveListener().onIncomplete(currentAd.getTag());
            }
        }
        super.onHide();
        if (webView != null)
        {
            webView.clear();
        }
        if (videoView != null)
        {
            videoView.clear();
        }
    }

    protected void onPause()
    {
        super.onPause();
        if (videoView != null)
        {
            videoView.stop();
        }
    }

    public Boolean onPrepared()
    {
        VideoModel videomodel;
        videomodel = (VideoModel)currentAd;
        backgroundView = new FrameLayout(this);
        backgroundView.setBackgroundColor(0);
        webView = new InterstitialWebView(this, new WebViewActionListener());
        webView.render((VideoModel)currentAd);
        Logger.log(new Object[] {
            "HeyzapVideoActivity", "isFileCached", videomodel.isFileCached(), "should allow fallback to streaming", videomodel.shouldAllowFallbackToStreaming(), "should force streaming", videomodel.shouldForceStreaming(), "show post roll interstitial", videomodel.getVideoDisplayOptions().postRollInterstitial
        });
        if (!videomodel.isFileCached().booleanValue() && !videomodel.shouldAllowFallbackToStreaming().booleanValue() && !videomodel.shouldForceStreaming().booleanValue()) goto _L2; else goto _L1
_L1:
        videoView = new FullscreenVideoView(this, videomodel, new VideoActionListener());
        backgroundView.addView(videoView, new android.widget.FrameLayout.LayoutParams(-1, -1));
        currentScreen = 2;
_L4:
        return Boolean.valueOf(true);
_L2:
        if (videomodel.getVideoDisplayOptions().postRollInterstitial.booleanValue())
        {
            Logger.log("(INTERSTITIAL FALLBACK)");
            videomodel.onInterstitialFallback();
            backgroundView.addView(webView, new android.widget.FrameLayout.LayoutParams(-1, -1));
            currentScreen = 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onRestart()
    {
label0:
        {
            super.onRestart();
            if (android.os.Build.VERSION.SDK_INT < 11 && currentScreen == 2)
            {
                if (!((VideoModel)currentAd).getVideoDisplayOptions().postRollInterstitial.booleanValue())
                {
                    break label0;
                }
                switchToView(1);
            }
            return;
        }
        onHide();
    }

    public void prepare()
    {
        onPrepared();
    }

    protected void switchToView(int i)
    {
        Object obj1 = null;
        if (i != currentScreen) goto _L2; else goto _L1
_L1:
        return;
_L2:
        android.view.animation.Animation animation;
        animation = AnimationUtils.loadAnimation(this, 0x10a0000);
        AnimationUtils.loadAnimation(this, 0x10a0001);
        currentScreen;
        JVM INSTR tableswitch 1 2: default 56
    //                   1 125
    //                   2 133;
           goto _L3 _L4 _L5
_L3:
        Object obj = null;
_L9:
        i;
        JVM INSTR tableswitch 1 2: default 80
    //                   1 141
    //                   2 153;
           goto _L6 _L7 _L8
_L6:
        if (obj != null && obj1 != null)
        {
            backgroundView.addView(((View) (obj1)), new android.widget.FrameLayout.LayoutParams(-1, -1));
            ((View) (obj1)).startAnimation(animation);
            backgroundView.removeView(((View) (obj)));
            currentScreen = i;
            return;
        }
          goto _L1
_L4:
        obj = webView;
          goto _L9
_L5:
        obj = videoView;
          goto _L9
_L7:
        obj1 = webView;
        ((View) (obj1)).invalidate();
          goto _L6
_L8:
        obj1 = videoView;
          goto _L6
    }





/*
    static Boolean access$502(HeyzapVideoActivity heyzapvideoactivity, Boolean boolean1)
    {
        heyzapvideoactivity.currentAdComplete = boolean1;
        return boolean1;
    }

*/



}
