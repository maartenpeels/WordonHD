// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.Bundle;
import android.webkit.WebView;
import com.tapjoy.mraid.view.MraidView;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView, TJCOffers, TapjoyLog, TapjoyConnectCore

public class TJCOffersWebView extends TJAdUnitView
{

    private static final String TAG = "Offers";
    private boolean isInitialLoad;

    public TJCOffersWebView()
    {
        isInitialLoad = true;
    }

    public void handleWebViewOnPageFinished(WebView webview, String s)
    {
        if (isInitialLoad)
        {
            isInitialLoad = false;
            TJCOffers.getOffersNotifierResponse();
            TapjoyLog.i("Offers", "getOffersNotifierResponse fired");
            return;
        } else
        {
            super.handleWebViewOnPageFinished(webview, s);
            return;
        }
    }

    public void handleWebViewOnReceivedError(WebView webview, int i, String s, String s1)
    {
        if (isInitialLoad)
        {
            isInitialLoad = false;
            finish();
            TJCOffers.getOffersNotifierResponseFailed("Failed to load offers from server");
            TapjoyLog.i("Offers", "getOffersNotifierResponseFailed fired");
            return;
        } else
        {
            super.handleWebViewOnReceivedError(webview, i, s, s1);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        TapjoyConnectCore.viewDidOpen(0);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (!skipOfferWall && isFinishing())
        {
            TapjoyConnectCore.viewWillClose(0);
            TapjoyConnectCore.viewDidClose(0);
        }
    }

    protected void onResume()
    {
        super.onResume();
        if (offersURL != null && webView != null && pauseCalled && redirectedActivity)
        {
            TapjoyLog.i("Offers", (new StringBuilder()).append("onResume reload offer wall: ").append(offersURL).toString());
            webView.loadUrl(offersURL);
            historyIndex = historyIndex + 1;
        }
    }
}
