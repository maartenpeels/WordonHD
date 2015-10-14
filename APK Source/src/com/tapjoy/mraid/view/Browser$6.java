// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.tapjoy.mraid.view:
//            Browser

class init> extends WebChromeClient
{

    final Browser this$0;

    public void onProgressChanged(WebView webview, int i)
    {
        Activity activity = (Activity)webview.getContext();
        activity.setTitle("Loading...");
        activity.setProgress(i * 100);
        if (i == 100)
        {
            activity.setTitle(webview.getUrl());
        }
    }

    ()
    {
        this$0 = Browser.this;
        super();
    }
}
