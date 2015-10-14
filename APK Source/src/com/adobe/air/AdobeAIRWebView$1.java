// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.adobe.air:
//            AdobeAIRWebView

class it> extends WebViewClient
{

    final AdobeAIRWebView this$0;

    public void onPageFinished(WebView webview, String s)
    {
        if (AdobeAIRWebView.access$200(AdobeAIRWebView.this) && !s.equals("https://www.adobe.com/airgames2/"))
        {
            AdobeAIRWebView.access$202(AdobeAIRWebView.this, false);
            ((Activity)AdobeAIRWebView.access$000(AdobeAIRWebView.this)).setRequestedOrientation(2);
            ((Activity)AdobeAIRWebView.access$000(AdobeAIRWebView.this)).setContentView(AdobeAIRWebView.access$300(AdobeAIRWebView.this));
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        AdobeAIRWebView.access$402(AdobeAIRWebView.this, true);
        AdobeAIRWebView.access$300(AdobeAIRWebView.this).loadUrl("file:///android_res/raw/startga.html");
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
            ((Activity)AdobeAIRWebView.access$000(AdobeAIRWebView.this)).startActivity(webview);
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview) { }
          goto _L2
_L9:
        AdobeAIRWebView.access$100(AdobeAIRWebView.this).loadUrl(s);
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

    ()
    {
        this$0 = AdobeAIRWebView.this;
        super();
    }
}
