// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.graphics.Bitmap;
import android.webkit.ConsoleMessage;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.view.MraidView;
import java.net.MalformedURLException;
import java.net.URL;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView, TJAdUnitJSBridge, TapjoyLog, TJCOffers, 
//            TapjoyConnectCore, TapjoyUtil

private class <init>
    implements MraidViewListener
{

    final TJAdUnitView this$0;

    public boolean onClose()
    {
        finish();
        return false;
    }

    public boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        if (bridge.shouldClose)
        {
            String as[] = new String[5];
            as[0] = "Uncaught";
            as[1] = "uncaught";
            as[2] = "Error";
            as[3] = "error";
            as[4] = "not defined";
            TapjoyLog.i("TJAdUnitView", "shouldClose...");
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                String s = as[i];
                if (consolemessage.message().contains(s))
                {
                    handleClose();
                }
            }

        }
        return true;
    }

    public boolean onEventFired()
    {
        return false;
    }

    public boolean onExpand()
    {
        return false;
    }

    public boolean onExpandClose()
    {
        return false;
    }

    public void onPageFinished(WebView webview, String s)
    {
        handleWebViewOnPageFinished(webview, s);
        if (TJAdUnitView.access$200(TJAdUnitView.this))
        {
            TJAdUnitView.access$300(TJAdUnitView.this).setVisibility(8);
        }
        bridge.display();
        if (webView != null && webView.isMraid())
        {
            bridge.allowRedirect = false;
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onPageStarted: ").append(s).toString());
        if (TJAdUnitView.access$200(TJAdUnitView.this))
        {
            TJAdUnitView.access$300(TJAdUnitView.this).setVisibility(0);
            TJAdUnitView.access$300(TJAdUnitView.this).bringToFront();
        }
        if (bridge != null)
        {
            bridge.allowRedirect = true;
            bridge.customClose = false;
            bridge.shouldClose = false;
        }
    }

    public boolean onReady()
    {
        return false;
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        handleWebViewOnReceivedError(webview, i, s, s1);
    }

    public boolean onResize()
    {
        return false;
    }

    public boolean onResizeClose()
    {
        return false;
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        String s1;
        if (!isNetworkAvailable())
        {
            handleWebViewOnReceivedError(webview, 0, "Connection not properly established", s);
            return true;
        }
        redirectedActivity = false;
        s1 = null;
        String s2 = (new URL("https://ws.tapjoyads.com/")).getHost();
        s1 = s2;
_L2:
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("interceptURL: ").append(s).append(" with host ").append(s1).toString());
        if (webView != null && webView.isMraid() && s.contains("mraid"))
        {
            return false;
        }
        if (TJAdUnitView.access$400(TJAdUnitView.this) == 4 && s.contains("offer_wall"))
        {
            TJAdUnitView.access$500(TJAdUnitView.this, "offer_wall");
            return true;
        }
        if (TJAdUnitView.access$400(TJAdUnitView.this) == 4 && s.contains("tjvideo"))
        {
            TJAdUnitView.access$500(TJAdUnitView.this, "tjvideo");
            return true;
        }
        if (s.startsWith("tjvideo://"))
        {
            TJAdUnitView.access$600(TJAdUnitView.this, s);
            return true;
        }
        if (s.contains("showOffers"))
        {
            TapjoyLog.i("TJAdUnitView", "showOffers");
            (new TJCOffers(TJAdUnitView.this)).showOffers(null);
            return true;
        }
        if (s.contains("dismiss"))
        {
            TapjoyLog.i("TJAdUnitView", "dismiss");
            finish();
            return true;
        }
        if (s1 != null && s.contains(s1) || s.contains("tjyoutubevideo=true") || s.contains(TapjoyConnectCore.getRedirectDomain()) || s.contains(TapjoyUtil.getRedirectDomain(TapjoyConnectCore.getEventURL())))
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("Open redirecting URL:").append(s).toString());
            ((MraidView)webview).loadUrlStandard(s);
            return true;
        }
        if (bridge.allowRedirect)
        {
            redirectedActivity = true;
            return false;
        } else
        {
            webview.loadUrl(s);
            return true;
        }
        MalformedURLException malformedurlexception;
        malformedurlexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private ()
    {
        this$0 = TJAdUnitView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
