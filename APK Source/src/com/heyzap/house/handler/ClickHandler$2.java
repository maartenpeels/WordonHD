// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.heyzap.house.handler:
//            ClickHandler

class val.context extends WebViewClient
{

    final ClickHandler this$0;
    final Context val$context;

    public void onLoadResource(WebView webview, String s)
    {
        super.onLoadResource(webview, s);
        if (ClickHandler.access$100(ClickHandler.this, val$context, s))
        {
            webview.stopLoading();
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        if (ClickHandler.access$100(ClickHandler.this, val$context, s))
        {
            webview.stopLoading();
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        return super.shouldOverrideUrlLoading(webview, s);
    }

    ()
    {
        this$0 = final_clickhandler;
        val$context = Context.this;
        super();
    }
}
