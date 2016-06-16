// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.content.Intent;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.urbanairship.Logger;
import com.urbanairship.widget.LandingPageWebView;
import com.urbanairship.widget.UAWebViewClient;

// Referenced classes of package com.urbanairship.actions:
//            LandingPageActivity

class a extends UAWebViewClient
{

    final ProgressBar a;
    final LandingPageActivity b;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (LandingPageActivity.a(b) != null)
        {
            switch (LandingPageActivity.a(b).intValue())
            {
            default:
                LandingPageActivity.a(b, null);
                LandingPageActivity.b(b).loadData("", "text/html", null);
                return;

            case -8: 
            case -6: 
            case -1: 
                b.a(20000L);
                break;
            }
            return;
        }
        if (LandingPageActivity.c(b) != -1)
        {
            LandingPageActivity.b(b).setBackgroundColor(LandingPageActivity.c(b));
        }
        LandingPageActivity.a(b, LandingPageActivity.b(b), a);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        if (s1 != null && s1.equals(b.getIntent().getDataString()))
        {
            Logger.e((new StringBuilder("Failed to load landing page ")).append(s1).append(" with error ").append(i).append(" ").append(s).toString());
            LandingPageActivity.a(b, Integer.valueOf(i));
        }
    }

    (LandingPageActivity landingpageactivity, ProgressBar progressbar)
    {
        b = landingpageactivity;
        a = progressbar;
        super();
    }
}
