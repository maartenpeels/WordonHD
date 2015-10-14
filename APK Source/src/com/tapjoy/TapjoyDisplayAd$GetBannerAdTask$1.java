// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.ConsoleMessage;
import android.webkit.WebView;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.view.MraidView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Timer;

// Referenced classes of package com.tapjoy:
//            TapjoyDisplayAd, TapjoyLog

class this._cls1
    implements MraidViewListener
{

    final is._cls0 this$1;

    public boolean onClose()
    {
        return false;
    }

    public boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        return false;
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
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
    }

    public boolean onReady()
    {
        return false;
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
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
        String s1 = null;
        String s2 = (new URL("https://ws.tapjoyads.com/")).getHost();
        s1 = s2;
_L2:
        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("shouldOverrideUrlLoading: ").append(s).append(" with host ").append(s1).toString());
        if (s1 != null && s.contains(s1) || s.contains("tjyoutubevideo=true"))
        {
            TapjoyLog.i("Banner Ad", (new StringBuilder()).append("Open redirecting URL = [").append(s).append("]").toString());
            ((MraidView)webview).loadUrlStandard(s);
        } else
        {
            webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
            TapjoyDisplayAd.access$000(_fld0).startActivity(webview);
        }
        if (resumeTimer != null)
        {
            resumeTimer.cancel();
        }
        elapsed_time = 0L;
        resumeTimer = new Timer();
        resumeTimer.schedule(new r(_fld0, null), 10000L, 10000L);
        return true;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    r()
    {
        this$1 = this._cls1.this;
        super();
    }
}
