// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.f;
import java.net.URI;
import java.net.URLDecoder;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class bs extends f
{
    public class a extends com.chartboost.sdk.f.a
    {

        public WebView b;
        final bs c;

        protected void a(int i, int j)
        {
        }

        public a(Context context, String s)
        {
            c = bs.this;
            super(bs.this, context);
            setFocusable(false);
            b = new b(context);
            b.setWebViewClient(new c());
            addView(b);
            b.loadDataWithBaseURL("file:///android_asset/", s, "text/html", "utf-8", null);
        }
    }

    private class b extends WebView
    {

        final bs a;

        public boolean onKeyDown(int i, KeyEvent keyevent)
        {
            if (i == 4 || i == 3)
            {
                com.chartboost.sdk.impl.bs.a(a);
            }
            return super.onKeyDown(i, keyevent);
        }

        public b(Context context)
        {
            a = bs.this;
            super(context);
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
            setBackgroundColor(0);
            getSettings().setJavaScriptEnabled(true);
        }
    }

    private class c extends WebViewClient
    {

        final bs a;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            bs.b(a);
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            com.chartboost.sdk.impl.bs.a(a, com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNAL);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            Integer integer;
            CBLogging.e("CBWebViewProtocol", (new StringBuilder()).append("loading url: ").append(s).toString());
            try
            {
                webview = (new URI(s)).getScheme();
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                bs.c(a);
                return false;
            }
            if (!webview.equals("chartboost")) goto _L2; else goto _L1
_L1:
            webview = s.split("/");
            integer = Integer.valueOf(webview.length);
            if (integer.intValue() < 3)
            {
                bs.d(a);
                return false;
            }
            s = webview[2];
            if (!s.equals("close")) goto _L4; else goto _L3
_L3:
            bs.e(a);
_L2:
            return true;
_L4:
            if (!s.equals("link"))
            {
                continue; /* Loop/switch isn't completed */
            }
            if (integer.intValue() < 4)
            {
                com.chartboost.sdk.impl.bs.f(a);
                return false;
            }
            s = URLDecoder.decode(webview[3], "UTF-8");
            if (integer.intValue() <= 4)
            {
                break; /* Loop/switch isn't completed */
            }
            webview = new JSONObject(new JSONTokener(URLDecoder.decode(webview[4], "UTF-8")));
_L6:
            a.a(s, com.chartboost.sdk.Libraries.e.a.a(webview));
            if (true) goto _L2; else goto _L5
            s;
            webview = null;
_L7:
            CBLogging.b("CBWebViewProtocol", "Error decoding URL or JSON", s);
            Object obj = null;
            s = webview;
            webview = obj;
              goto _L6
            Exception exception;
            exception;
            webview = s;
            s = exception;
              goto _L7
_L5:
            webview = null;
              goto _L6
        }

        private c()
        {
            a = bs.this;
            super();
        }

    }


    private String k;

    public bs(com.chartboost.sdk.Model.a a1)
    {
        super(a1);
        k = null;
    }

    static void a(bs bs1)
    {
        bs1.h();
    }

    static void a(bs bs1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        bs1.a(cbimpressionerror);
    }

    static void b(bs bs1)
    {
        bs1.i();
    }

    static void c(bs bs1)
    {
        bs1.h();
    }

    static void d(bs bs1)
    {
        bs1.h();
    }

    static void e(bs bs1)
    {
        bs1.h();
    }

    static void f(bs bs1)
    {
        bs1.h();
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        a1 = a1.e("html");
        if (a1 == null)
        {
            a(com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNAL);
            return false;
        } else
        {
            k = a1;
            b();
            return true;
        }
    }

    protected com.chartboost.sdk.f.a b(Context context)
    {
        return new a(context, k);
    }
}
