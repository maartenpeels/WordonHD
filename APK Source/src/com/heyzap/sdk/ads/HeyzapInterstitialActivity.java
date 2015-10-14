// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.view.View;
import com.heyzap.house.abstr.AbstractActivity;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.view.InterstitialWebView;

public class HeyzapInterstitialActivity extends AbstractActivity
{
    private class WebViewActionListener
        implements com.heyzap.house.abstr.AbstractActivity.AdActionListener
    {

        final HeyzapInterstitialActivity this$0;

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
            webview.clear();
            onHide();
        }

        public void installHeyzap()
        {
        }

        public void restart()
        {
        }

        public void show()
        {
            onShow();
        }

        private WebViewActionListener()
        {
            this$0 = HeyzapInterstitialActivity.this;
            super();
        }

    }


    private InterstitialWebView webview;

    public HeyzapInterstitialActivity()
    {
    }

    public View getContentView()
    {
        return webview;
    }

    public Boolean onPrepared()
    {
        webview = new InterstitialWebView(this, new WebViewActionListener());
        webview.render((InterstitialModel)currentAd);
        return Boolean.valueOf(true);
    }

    public void prepare()
    {
        onPrepared();
    }

}
