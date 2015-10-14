// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.io.File;
import java.util.Map;

// Referenced classes of package com.urbanairship.widget:
//            UAWebViewClient

public class UAWebView extends WebView
{

    private WebViewClient a;

    public UAWebView(Context context)
    {
        super(context);
        if (!isInEditMode())
        {
            a();
        }
    }

    public UAWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        if (!isInEditMode())
        {
            a();
        }
    }

    public UAWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        if (!isInEditMode())
        {
            a();
        }
    }

    void a()
    {
        WebSettings websettings = getSettings();
        if (android.os.Build.VERSION.SDK_INT >= 7)
        {
            websettings.setAppCacheEnabled(true);
            File file = new File(UAirship.a().g().getCacheDir(), "urbanairship");
            if (!file.exists())
            {
                file.mkdirs();
            }
            websettings.setAppCachePath(file.getAbsolutePath());
            websettings.setDomStorageEnabled(true);
        }
        websettings.setAllowFileAccess(true);
        websettings.setJavaScriptEnabled(true);
        websettings.setCacheMode(-1);
    }

    final void b()
    {
        if (a == null)
        {
            Logger.d("No web view client set, setting a default UAWebViewClient for landing page view.");
            setWebViewClient(new UAWebViewClient());
        }
    }

    final WebViewClient c()
    {
        return a;
    }

    public void loadData(String s, String s1, String s2)
    {
        b();
        super.loadData(s, s1, s2);
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        b();
        super.loadDataWithBaseURL(s, s1, s2, s3, s4);
    }

    public void loadUrl(String s)
    {
        b();
        super.loadUrl(s);
    }

    public void loadUrl(String s, Map map)
    {
        b();
        super.loadUrl(s, map);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            int i = getScrollY();
            int j = getScrollX();
            onScrollChanged(j, i, j, i);
        }
        return super.onTouchEvent(motionevent);
    }

    public void setWebViewClient(WebViewClient webviewclient)
    {
        if (!(webviewclient instanceof UAWebViewClient))
        {
            Logger.a("The web view client should extend UAWebViewClient to support urban airship url overrides and triggering actions from.");
        }
        a = webviewclient;
        super.setWebViewClient(webviewclient);
    }
}
