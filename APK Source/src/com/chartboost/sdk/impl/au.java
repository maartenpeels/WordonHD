// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;

// Referenced classes of package com.chartboost.sdk.impl:
//            aq, ax

public class au extends aq
{

    private WebView a;
    private android.view.View.OnClickListener b;

    public au(ax ax, Context context)
    {
        super(context);
        b = null;
        a = new WebView(context);
        addView(a, new android.widget.LinearLayout.LayoutParams(-1, -1));
        a.setBackgroundColor(0);
        a.setWebViewClient(new WebViewClient() {

            final au a;

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s == null)
                {
                    return false;
                }
                if (s.contains("chartboost") && s.contains("click") && au.a(a) != null)
                {
                    au.a(a).onClick(a);
                }
                return true;
            }

            
            {
                a = au.this;
                super();
            }
        });
    }

    static android.view.View.OnClickListener a(au au1)
    {
        return au1.b;
    }

    public int a()
    {
        return CBUtility.a(100, getContext());
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1, int i)
    {
        a1 = a1.e("html");
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        a.loadDataWithBaseURL("file:///android_res/", a1, "text/html", "UTF-8", null);
        return;
        a1;
        CBLogging.b("AppCellWebView", "Exception raised loading data into webview", a1);
        return;
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        super.setOnClickListener(onclicklistener);
        b = onclicklistener;
    }
}
