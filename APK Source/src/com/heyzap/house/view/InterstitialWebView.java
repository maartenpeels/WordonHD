// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;

public class InterstitialWebView extends FrameLayout
{
    private class CustomWebView extends WebView
    {

        final InterstitialWebView this$0;

        public boolean onKeyDown(int i, KeyEvent keyevent)
        {
            return InterstitialWebView.this.onKeyDown(i, keyevent);
        }

        public CustomWebView(Context context)
        {
            this$0 = InterstitialWebView.this;
            super(context.getApplicationContext());
            setBackgroundColor(0);
        }
    }

    private class WrapperView extends RelativeLayout
    {

        private static final int OVERLAY_PADDING = 10;
        public FrameLayout container;
        final InterstitialWebView this$0;
        public CustomWebView webview;

        public WrapperView(Context context)
        {
            this$0 = InterstitialWebView.this;
            super(context);
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
            setGravity(17);
            container = new FrameLayout(context);
            Utils.getScaledSize(context, 10);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(9);
            layoutparams.addRule(10);
            addView(container, layoutparams);
            webview = new CustomWebView(context);
            webview.setVisibility(0);
            webview.setVerticalScrollBarEnabled(false);
            webview.setHorizontalScrollBarEnabled(false);
            webview.setScrollBarStyle(0x2000000);
            webview.setBackgroundColor(0);
            interstitialwebview = new android.widget.FrameLayout.LayoutParams(-1, -1);
            container.addView(webview, InterstitialWebView.this);
        }
    }


    private static final int MAX_SIZE_DP_HEIGHT = 360;
    private static final int MAX_SIZE_DP_WIDTH = 360;
    private static final float MAX_SIZE_PERCENT = 0.98F;
    public Boolean contentLoaded;
    private Boolean globalTouchEnabled;
    private com.heyzap.house.abstr.AbstractActivity.AdActionListener listener;
    private AdModel model;
    private long renderStartTime;
    private WrapperView wrapperView;

    public InterstitialWebView(Context context, com.heyzap.house.abstr.AbstractActivity.AdActionListener adactionlistener)
    {
        super(context);
        globalTouchEnabled = Boolean.valueOf(false);
        contentLoaded = Boolean.valueOf(false);
        listener = adactionlistener;
        wrapperView = new WrapperView(context);
        addView(wrapperView);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    private void render(final String htmlString, final int width, final int height, final Integer backgroundOverlayColor)
    {
        renderStartTime = System.currentTimeMillis();
        setupWebview();
        setTouchListener();
        final Activity activity = (Activity)getContext();
        activity.runOnUiThread(new Runnable() {

            final InterstitialWebView this$0;
            final Activity val$activity;
            final Integer val$backgroundOverlayColor;
            final int val$height;
            final String val$htmlString;
            final int val$width;

            public void run()
            {
                setWidths(activity, width, height);
                setBackgroundColor(backgroundOverlayColor.intValue());
                wrapperView.webview.loadDataWithBaseURL(null, htmlString, "text/html", null, null);
            }

            
            {
                this$0 = InterstitialWebView.this;
                activity = activity1;
                width = i;
                height = j;
                backgroundOverlayColor = integer;
                htmlString = s;
                super();
            }
        });
    }

    private void setTouchListener()
    {
        wrapperView.webview.setOnTouchListener(new android.view.View.OnTouchListener() {

            final InterstitialWebView this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (globalTouchEnabled.booleanValue() && motionevent.getAction() == 0)
                {
                    if (listener != null)
                    {
                        listener.click();
                    }
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = InterstitialWebView.this;
                super();
            }
        });
    }

    private void setWidths(Context context, int i, int j)
    {
        Activity activity = (Activity)context;
        if (i == 0 && j == 0)
        {
            j = Math.round((float)activity.getWindowManager().getDefaultDisplay().getWidth() * 0.98F);
            i = Math.round((float)activity.getWindowManager().getDefaultDisplay().getHeight() * 0.98F);
            j = Math.min(Utils.getScaledSize(context, 360), j);
            int k = Math.min(Utils.getScaledSize(context, 360), i);
            i = Math.min(j, k);
            j = Math.min(i, k);
        }
        Utils.dpToPx(context, 10);
        context = (android.widget.FrameLayout.LayoutParams)wrapperView.getLayoutParams();
        context.gravity = 17;
        context.width = i;
        context.height = j;
        setLayoutParams(context);
    }

    private void setupWebview()
    {
        wrapperView.webview.getSettings().setJavaScriptEnabled(true);
        wrapperView.webview.getSettings().setLoadsImagesAutomatically(true);
        wrapperView.webview.getSettings().setCacheMode(1);
        WebViewClient webviewclient = (new WebViewClient() {

            AdModel model;
            final InterstitialWebView this$0;

            public WebViewClient init(long l, AdModel admodel)
            {
                model = admodel;
                return this;
            }

            public void onLoadResource(WebView webview, String s)
            {
                super.onLoadResource(webview, s);
            }

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
                MetricsTracker.getEvent(model).adRenderTime(System.currentTimeMillis()).commit();
                contentLoaded = Boolean.valueOf(true);
                wrapperView.setVisibility(0);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                super.onPageStarted(webview, s, bitmap);
                contentLoaded = Boolean.valueOf(false);
            }

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                super.onReceivedError(webview, i, s, s1);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (listener != null)
                {
                    if (s.contains("Heyzap.close"))
                    {
                        MetricsTracker.getEvent(model).close(true).commit(true);
                        listener.hide();
                    } else
                    {
                        if (s.contains("Heyzap.restart"))
                        {
                            listener.restart();
                            return true;
                        }
                        if (s.contains("Heyzap.installHeyzap"))
                        {
                            listener.installHeyzap();
                            return true;
                        }
                        if (s.contains("Heyzap.clickAd"))
                        {
                            listener.click();
                            return true;
                        }
                        if (s.contains("Heyzap.clickManualAdUrl="))
                        {
                            int i = s.indexOf("Heyzap.clickManualAdUrl=");
                            int j = s.indexOf(":::");
                            webview = s.substring(i + 24, j);
                            s = s.substring(j + 3);
                            listener.clickUrl(webview, s);
                            return true;
                        }
                    }
                }
                return true;
            }

            
            {
                this$0 = InterstitialWebView.this;
                super();
            }
        }).init(renderStartTime, model);
        WebChromeClient webchromeclient = new WebChromeClient() {

            final InterstitialWebView this$0;

            public void onConsoleMessage(String s, int i, String s1)
            {
                Logger.log(new Object[] {
                    "Console Message", s, Integer.valueOf(i), s1
                });
            }

            
            {
                this$0 = InterstitialWebView.this;
                super();
            }
        };
        wrapperView.webview.setWebViewClient(webviewclient);
        wrapperView.webview.setWebChromeClient(webchromeclient);
    }

    private void showWithAnimation(final Boolean withCallback)
    {
        AnimationSet animationset = new AnimationSet(true);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(400L);
        animationset.addAnimation(alphaanimation);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final InterstitialWebView this$0;
            final Boolean val$withCallback;

            public void onAnimationEnd(Animation animation)
            {
                if (withCallback.booleanValue())
                {
                    viewDidShow();
                }
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = InterstitialWebView.this;
                withCallback = boolean1;
                super();
            }
        });
        setTouchListener();
        wrapperView.startAnimation(animationset);
    }

    private void viewDidHide()
    {
        wrapperView.webview.loadUrl("javascript: try{adViewHidden();} catch(e) {}");
    }

    private void viewDidShow()
    {
        wrapperView.webview.loadUrl("javascript: try{adViewShown();}catch(e){}");
    }

    public void clear()
    {
        model = null;
        wrapperView.webview.loadDataWithBaseURL(null, "<html></html>", "text/html", null, null);
    }

    public void hide(Boolean boolean1)
    {
        hide(boolean1, Boolean.valueOf(true));
    }

    public void hide(final Boolean animated, final Boolean doCallback)
    {
        ((Activity)wrapperView.getContext()).runOnUiThread(new Runnable() {

            final InterstitialWebView this$0;
            final Boolean val$animated;
            final Boolean val$doCallback;

            public void run()
            {
                if (!animated.booleanValue())
                {
                    if (doCallback.booleanValue())
                    {
                        viewDidHide();
                    }
                    return;
                } else
                {
                    AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                    alphaanimation.setDuration(150L);
                    alphaanimation.setInterpolator(new AccelerateInterpolator());
                    alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                        final _cls2 this$1;

                        public void onAnimationEnd(Animation animation)
                        {
                            if (doCallback.booleanValue())
                            {
                                viewDidHide();
                            }
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                    wrapperView.startAnimation(alphaanimation);
                    return;
                }
            }

            
            {
                this$0 = InterstitialWebView.this;
                animated = boolean1;
                doCallback = boolean2;
                super();
            }
        });
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        showWithAnimation(Boolean.valueOf(true));
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            if (listener != null)
            {
                if (model != null)
                {
                    MetricsTracker.getEvent(model).back(true).commit(true);
                }
                listener.hide();
            }
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void render(InterstitialModel interstitialmodel)
    {
        model = interstitialmodel;
        render(interstitialmodel.getHtmlData(), interstitialmodel.getWidth(), interstitialmodel.getHeight(), interstitialmodel.getBackgroundOverlayColor());
    }

    public void render(VideoModel videomodel)
    {
        model = videomodel;
        render(videomodel.getHtmlData(), videomodel.getInterstitialWidth(), videomodel.getInterstitialWidth(), Integer.valueOf(videomodel.getInterstitialBackgroundOverlayColor()));
    }






}
