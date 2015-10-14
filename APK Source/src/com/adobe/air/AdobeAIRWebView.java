// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebBackForwardList;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.File;

public class AdobeAIRWebView
{

    public static final String ADOBE_GAME_SHOWCASE = "gaming.adobe.com";
    public static final String ADOBE_HOST = "www.adobe.com";
    public static final String CLOUDFRONT_HOST = "dh8vjmvwgc27o.cloudfront.net";
    public static final String DYNAMIC_URL_CLOUDFRONT = "https://www.adobe.com/airgames2/";
    public static final String GAMESPACE_HOST = "gamespace.adobe.com";
    public static final String GOOGLE_PLAY_HOST = "play.google.com";
    public static final String STATIC_URL = "file:///android_res/raw/startga.html";
    private WebView mAuxWebView;
    private Context mCurrentContext;
    private boolean mFirstLoad;
    private WebView mHiddenWebView;
    private boolean mOffline;
    private WebView mWebView;

    public AdobeAIRWebView(Context context)
    {
        mCurrentContext = null;
        mWebView = null;
        mAuxWebView = null;
        mHiddenWebView = null;
        mOffline = false;
        mFirstLoad = true;
        mCurrentContext = context;
    }

    public boolean canGoBack()
    {
        return mWebView.canGoBack();
    }

    public WebBackForwardList copyBackForwardList()
    {
        return mWebView.copyBackForwardList();
    }

    public void create()
    {
        WebViewClient webviewclient = new WebViewClient() {

            final AdobeAIRWebView this$0;

            public void onPageFinished(WebView webview, String s)
            {
                if (mFirstLoad && !s.equals("https://www.adobe.com/airgames2/"))
                {
                    mFirstLoad = false;
                    ((Activity)mCurrentContext).setRequestedOrientation(2);
                    ((Activity)mCurrentContext).setContentView(mWebView);
                }
            }

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                mOffline = true;
                mWebView.loadUrl("file:///android_res/raw/startga.html");
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s == null) goto _L2; else goto _L1
_L1:
                webview = Uri.parse(s);
                if (webview == null || webview.getScheme() == null) goto _L2; else goto _L3
_L3:
                if (webview.getHost() == null || !webview.getScheme().equalsIgnoreCase("http") && !webview.getScheme().equalsIgnoreCase("https")) goto _L5; else goto _L4
_L4:
                if (!s.equals("https://www.adobe.com/airgames2/") && !webview.getHost().equalsIgnoreCase("gamespace.adobe.com") && !webview.getHost().equalsIgnoreCase("dh8vjmvwgc27o.cloudfront.net")) goto _L7; else goto _L6
_L7:
                boolean flag;
                if (!webview.getHost().equalsIgnoreCase("www.adobe.com") && !webview.getHost().equalsIgnoreCase("play.google.com") && !webview.getHost().equalsIgnoreCase("gaming.adobe.com"))
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
_L11:
                if (!flag) goto _L9; else goto _L8
_L8:
                try
                {
                    webview = new Intent("android.intent.action.VIEW", webview);
                    ((Activity)mCurrentContext).startActivity(webview);
                }
                // Misplaced declaration of an exception variable
                catch (WebView webview) { }
                  goto _L2
_L9:
                mAuxWebView.loadUrl(s);
                  goto _L2
_L6:
                return false;
_L2:
                return true;
_L5:
                flag = true;
                if (true) goto _L11; else goto _L10
_L10:
            }

            
            {
                this$0 = AdobeAIRWebView.this;
                super();
            }
        };
        mWebView = new WebView(mCurrentContext);
        mWebView.setScrollBarStyle(0);
        mWebView.setWebViewClient(webviewclient);
        mWebView.getSettings().setJavaScriptEnabled(true);
        mWebView.getSettings().setBuiltInZoomControls(true);
        mWebView.getSettings().setDomStorageEnabled(true);
        mWebView.getSettings().setDatabaseEnabled(true);
        mWebView.getSettings().setDatabasePath((new StringBuilder()).append(mCurrentContext.getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        mAuxWebView = new WebView(mCurrentContext);
        mAuxWebView.getSettings().setJavaScriptEnabled(true);
        mAuxWebView.getSettings().setDomStorageEnabled(true);
        mAuxWebView.getSettings().setDatabaseEnabled(true);
        mAuxWebView.getSettings().setDatabasePath((new StringBuilder()).append(mCurrentContext.getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        createAnalyticsWebView();
    }

    public void createAnalyticsWebView()
    {
        mHiddenWebView = new WebView(mCurrentContext);
        mHiddenWebView.getSettings().setJavaScriptEnabled(true);
        mHiddenWebView.getSettings().setDomStorageEnabled(true);
        mHiddenWebView.getSettings().setDatabaseEnabled(true);
        mHiddenWebView.getSettings().setDatabasePath((new StringBuilder()).append(mCurrentContext.getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        mHiddenWebView.setWebViewClient(new WebViewClient() {

            final AdobeAIRWebView this$0;

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                return false;
            }

            
            {
                this$0 = AdobeAIRWebView.this;
                super();
            }
        });
    }

    public String getUrl()
    {
        return mWebView.getUrl();
    }

    public void goBack()
    {
        mWebView.goBack();
    }

    public boolean isOffline()
    {
        return mOffline;
    }

    public void loadAnalyticsUrl(String s)
    {
        mHiddenWebView.loadUrl(s);
    }

    public void loadUrl(String s)
    {
        mWebView.loadUrl(s);
    }

    public void setOffline(boolean flag)
    {
        mOffline = flag;
    }





/*
    static boolean access$202(AdobeAIRWebView adobeairwebview, boolean flag)
    {
        adobeairwebview.mFirstLoad = flag;
        return flag;
    }

*/



/*
    static boolean access$402(AdobeAIRWebView adobeairwebview, boolean flag)
    {
        adobeairwebview.mOffline = flag;
        return flag;
    }

*/
}
