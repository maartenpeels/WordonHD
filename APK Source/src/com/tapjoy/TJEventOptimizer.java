// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TapjoyConnectCore, TapjoyUtil, TapjoyLog, 
//            TJEvent

public class TJEventOptimizer extends WebView
{
    private class TJEventTimerTask extends TimerTask
    {

        final TJEventOptimizer this$0;
        String token;

        public void run()
        {
            TJEvent tjevent = (TJEvent)events.get(token);
            if (tjevent != null)
            {
                TapjoyLog.d(TJEventOptimizer.TAG, (new StringBuilder()).append("Event optimization call timed out for event ").append(tjevent.getName()).append(", fall through to full event call").toString());
                eventOptimizationCallback(token, true);
            }
        }

        public TJEventTimerTask(String s)
        {
            this$0 = TJEventOptimizer.this;
            super();
            token = s;
        }
    }

    private class TJEventWebChromeClient extends WebChromeClient
    {

        final TJEventOptimizer this$0;

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            TapjoyLog.d(TJEventOptimizer.TAG, (new StringBuilder()).append("JS CONSOLE: ").append(consolemessage.message()).append(" -- From line ").append(consolemessage.lineNumber()).append(" of ").append(consolemessage.sourceId()).toString());
            return true;
        }

        private TJEventWebChromeClient()
        {
            this$0 = TJEventOptimizer.this;
            super();
        }

    }

    private class TJEventWebViewClient extends WebViewClient
    {

        final TJEventOptimizer this$0;

        public void onPageFinished(WebView webview, String s)
        {
            TapjoyLog.d(TJEventOptimizer.TAG, "boostrap html loaded successfully");
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            TapjoyLog.e(TJEventOptimizer.TAG, (new StringBuilder()).append("error:").append(s).toString());
        }

        private TJEventWebViewClient()
        {
            this$0 = TJEventOptimizer.this;
            super();
        }

    }


    private static String TAG = "TJEventOptimizer";
    private static int eventCount = 0;
    private static TJEventOptimizer eventOptimizer;
    private TJAdUnitJSBridge bridge;
    private Context ctx;
    private HashMap events;
    private Map urlParams;

    private TJEventOptimizer(Context context)
    {
        super(context);
        ctx = context;
        events = new HashMap();
        bridge = new TJAdUnitJSBridge(ctx, this, null);
        getSettings().setJavaScriptEnabled(true);
        setWebViewClient(new TJEventWebViewClient());
        setWebChromeClient(new TJEventWebChromeClient());
        loadUrl((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("events/proxy?").append(TapjoyUtil.convertURLParams(TapjoyConnectCore.getGenericURLParams(), true)).toString());
    }


    public static TJEventOptimizer getInstance()
    {
        return eventOptimizer;
    }

    public static void init(Context context)
    {
        TapjoyLog.d(TAG, "Initializing event optimizater");
        Runnable runnable = new Runnable(context) {

            final Context val$context;

            public void run()
            {
                TJEventOptimizer.eventOptimizer = new TJEventOptimizer(context);
            }

            
            {
                context = context1;
                super();
            }
        };
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            runnable.run();
            return;
        } else
        {
            (new Handler(context.getMainLooper())).post(runnable);
            return;
        }
    }

    public void checkEvent(TJEvent tjevent)
    {
        final String token = (new StringBuilder()).append("token");
        int i = eventCount;
        eventCount = i + 1;
        token = token.append(i).toString();
        urlParams = TapjoyConnectCore.getGenericURLParams();
        urlParams.putAll(tjevent.getParameters());
        urlParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        final String params = (new JSONObject(urlParams)).toString();
        events.put(token, tjevent);
        tjevent = new Runnable() {

            final TJEventOptimizer this$0;
            final String val$params;
            final String val$token;

            public void run()
            {
                String s = (new StringBuilder()).append("window.eventsProxy.processEvent('").append(token).append("', ").append(params).append(");").toString();
                TJEventTimerTask tjeventtimertask = new TJEventTimerTask(token);
                (new Timer()).schedule(tjeventtimertask, 2000L);
                if (android.os.Build.VERSION.SDK_INT >= 19)
                {
                    evaluateJavascript(s, null);
                    return;
                } else
                {
                    loadUrl((new StringBuilder()).append("javascript:").append(s).toString());
                    return;
                }
            }

            
            {
                this$0 = TJEventOptimizer.this;
                token = s;
                params = s1;
                super();
            }
        };
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            tjevent.run();
            return;
        } else
        {
            (new Handler(ctx.getMainLooper())).post(tjevent);
            return;
        }
    }

    public void eventOptimizationCallback(String s, boolean flag)
    {
        TJEvent tjevent = (TJEvent)events.get(s);
        if (tjevent != null)
        {
            tjevent.processSendCallback(flag);
            TapjoyLog.d(TAG, (new StringBuilder()).append("Event optimization result ").append(flag).append(" for event ").append(tjevent.getName()).toString());
            events.remove(s);
        }
    }



/*
    static TJEventOptimizer access$202(TJEventOptimizer tjeventoptimizer)
    {
        eventOptimizer = tjeventoptimizer;
        return tjeventoptimizer;
    }

*/


}
