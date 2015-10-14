// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            JavaScriptInterface

public class WebChromeWrapper extends WebChromeClient
{

    private final String TAG = com/threatmetrix/TrustDefenderMobile/WebChromeWrapper.getName();
    private JavaScriptInterface m_jsInterface;

    public WebChromeWrapper(JavaScriptInterface javascriptinterface)
    {
        m_jsInterface = javascriptinterface;
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        webview = TAG;
        (new StringBuilder("onJsAlert() -")).append(s1);
        m_jsInterface.getString(s1);
        jsresult.confirm();
        return true;
    }
}
