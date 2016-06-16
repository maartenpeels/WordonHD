// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.tapjoy:
//            TJEventOptimizer, TapjoyLog

private class <init> extends WebViewClient
{

    final TJEventOptimizer this$0;

    public void onPageFinished(WebView webview, String s)
    {
        TapjoyLog.d(TJEventOptimizer.access$400(), "boostrap html loaded successfully");
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        TapjoyLog.e(TJEventOptimizer.access$400(), (new StringBuilder()).append("error:").append(s).toString());
    }

    private ()
    {
        this$0 = TJEventOptimizer.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
