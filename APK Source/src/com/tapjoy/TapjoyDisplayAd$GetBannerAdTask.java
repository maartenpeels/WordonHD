// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.ConsoleMessage;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.view.MraidView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Timer;

// Referenced classes of package com.tapjoy:
//            TapjoyDisplayAd, TapjoyURLConnection, TapjoyHttpURLResponse, TapjoyDisplayAdNotifier, 
//            TapjoyLog, TapjoyUtil

private class <init> extends AsyncTask
{

    final TapjoyDisplayAd this$0;

    protected transient TapjoyHttpURLResponse doInBackground(Object aobj[])
    {
        String s = (String)aobj[0];
        aobj = (Map)aobj[1];
        return TapjoyDisplayAd.access$1000().getResponseFromURL(s, ((Map) (aobj)));
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground(aobj);
    }

    protected void onPostExecute(TapjoyHttpURLResponse tapjoyhttpurlresponse)
    {
        if (tapjoyhttpurlresponse == null) goto _L2; else goto _L1
_L1:
        tapjoyhttpurlresponse.statusCode;
        JVM INSTR tableswitch 200 200: default 28
    //                   200 39;
           goto _L3 _L4
_L3:
        TapjoyDisplayAd.access$300().getDisplayAdResponseFailed("No ad to display.");
_L2:
        return;
_L4:
        TapjoyDisplayAd.access$402(tapjoyhttpurlresponse.response);
        if (TapjoyDisplayAd.access$400() == null)
        {
            TapjoyLog.d("Banner Ad", "unexpected 200 response with no content");
            TapjoyDisplayAd.access$300().getDisplayAdResponseFailed("No ad to display.");
            return;
        }
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setPlacementType(com.tapjoy.mraid.view.eFailed);
        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("response: ").append(tapjoyhttpurlresponse.response).toString());
        android.widget.Background background = new android.widget.(TapjoyDisplayAd.access$500(), TapjoyDisplayAd.access$600());
        webView.setLayoutParams(background);
        webView.setInitialScale(100);
        webView.setBackgroundColor(0);
        webView.loadDataWithBaseURL(null, tapjoyhttpurlresponse.response, "text/html", "utf-8", null);
        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("isMraid: ").append(webView.isMraid()).toString());
        if (!webView.isMraid())
        {
            webView.setListener(new MraidViewListener() {

                final TapjoyDisplayAd.GetBannerAdTask this$1;

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
                        TapjoyDisplayAd.access$000(this$0).startActivity(webview);
                    }
                    if (resumeTimer != null)
                    {
                        resumeTimer.cancel();
                    }
                    elapsed_time = 0L;
                    resumeTimer = new Timer();
                    resumeTimer.schedule(new TapjoyDisplayAd.CheckForResumeTimer(this$0, null), 10000L, 10000L);
                    return true;
                    MalformedURLException malformedurlexception;
                    malformedurlexception;
                    if (true) goto _L2; else goto _L1
_L1:
                }

            
            {
                this$1 = TapjoyDisplayAd.GetBannerAdTask.this;
                super();
            }
            });
        }
        if (adView != null)
        {
            lastAd = TapjoyUtil.createBitmapFromView(adView);
        }
        adView = webView;
        TapjoyDisplayAd.access$300().getDisplayAdResponse(adView);
        if (timer != null)
        {
            timer.cancel();
            timer = null;
        }
        if (TapjoyDisplayAd.access$800(TapjoyDisplayAd.this) && timer == null)
        {
            TapjoyLog.i("Banner Ad", "will refresh banner ad in 60000ms...");
            timer = new Timer();
            timer.schedule(new it>(TapjoyDisplayAd.this, null), 60000L);
            return;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((TapjoyHttpURLResponse)obj);
    }

    protected volatile void onProgressUpdate(Object aobj[])
    {
        onProgressUpdate((Void[])aobj);
    }

    protected transient void onProgressUpdate(Void avoid[])
    {
    }

    private _cls1.this._cls1()
    {
        this$0 = TapjoyDisplayAd.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
