// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.app.Activity;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class val.htmlString
    implements Runnable
{

    final InterstitialWebView this$0;
    final Activity val$activity;
    final Integer val$backgroundOverlayColor;
    final int val$height;
    final String val$htmlString;
    final int val$width;

    public void run()
    {
        InterstitialWebView.access$000(InterstitialWebView.this, val$activity, val$width, val$height);
        setBackgroundColor(val$backgroundOverlayColor.intValue());
        InterstitialWebView.access$100(InterstitialWebView.this).webview.loadDataWithBaseURL(null, val$htmlString, "text/html", null, null);
    }

    stomWebView()
    {
        this$0 = final_interstitialwebview;
        val$activity = activity1;
        val$width = i;
        val$height = j;
        val$backgroundOverlayColor = integer;
        val$htmlString = String.this;
        super();
    }
}
