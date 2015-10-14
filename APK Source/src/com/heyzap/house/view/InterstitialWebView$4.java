// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.model.AdModel;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class this._cls0 extends WebViewClient
{

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
        InterstitialWebView.access$100(InterstitialWebView.this).setVisibility(0);
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
        if (InterstitialWebView.access$400(InterstitialWebView.this) != null)
        {
            if (s.contains("Heyzap.close"))
            {
                MetricsTracker.getEvent(model).close(true).commit(true);
                InterstitialWebView.access$400(InterstitialWebView.this).hide();
            } else
            {
                if (s.contains("Heyzap.restart"))
                {
                    InterstitialWebView.access$400(InterstitialWebView.this).restart();
                    return true;
                }
                if (s.contains("Heyzap.installHeyzap"))
                {
                    InterstitialWebView.access$400(InterstitialWebView.this).installHeyzap();
                    return true;
                }
                if (s.contains("Heyzap.clickAd"))
                {
                    InterstitialWebView.access$400(InterstitialWebView.this).click();
                    return true;
                }
                if (s.contains("Heyzap.clickManualAdUrl="))
                {
                    int i = s.indexOf("Heyzap.clickManualAdUrl=");
                    int j = s.indexOf(":::");
                    webview = s.substring(i + 24, j);
                    s = s.substring(j + 3);
                    InterstitialWebView.access$400(InterstitialWebView.this).clickUrl(webview, s);
                    return true;
                }
            }
        }
        return true;
    }

    tionListener()
    {
        this$0 = InterstitialWebView.this;
        super();
    }
}
