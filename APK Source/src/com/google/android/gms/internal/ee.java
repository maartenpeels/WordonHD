// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package com.google.android.gms.internal:
//            dw, ct, fo, dz, 
//            ea

public class ee extends WebViewClient
{

    private final dz lC;
    private final String rM;
    private boolean rN;
    private final ct rO;

    public ee(ct ct1, dz dz1, String s)
    {
        rM = B(s);
        rN = false;
        lC = dz1;
        rO = ct1;
    }

    private String B(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return s;
        }
        String s1;
        if (!s.endsWith("/"))
        {
            break MISSING_BLOCK_LABEL_40;
        }
        s1 = s.substring(0, s.length() - 1);
        return s1;
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        dw.w(indexoutofboundsexception.getMessage());
        return s;
    }

    protected boolean A(String s)
    {
        s = B(s);
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        Object obj;
        obj = new URI(s);
        if (!"passback".equals(((URI) (obj)).getScheme()))
        {
            break MISSING_BLOCK_LABEL_50;
        }
        dw.v("Passback received");
        rO.bb();
        return true;
        if (TextUtils.isEmpty(rM))
        {
            break MISSING_BLOCK_LABEL_135;
        }
        Object obj1 = new URI(rM);
        s = ((URI) (obj1)).getHost();
        String s1 = ((URI) (obj)).getHost();
        obj1 = ((URI) (obj1)).getPath();
        obj = ((URI) (obj)).getPath();
        if (!fo.equal(s, s1) || !fo.equal(obj1, obj))
        {
            break MISSING_BLOCK_LABEL_135;
        }
        dw.v("Passback received");
        rO.bb();
        return true;
        s;
        dw.w(s.getMessage());
        return false;
    }

    public void onLoadResource(WebView webview, String s)
    {
        dw.v((new StringBuilder()).append("JavascriptAdWebViewClient::onLoadResource: ").append(s).toString());
        if (!A(s))
        {
            lC.bI().onLoadResource(lC, s);
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        dw.v((new StringBuilder()).append("JavascriptAdWebViewClient::onPageFinished: ").append(s).toString());
        if (!rN)
        {
            rO.ba();
            rN = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        dw.v((new StringBuilder()).append("JavascriptAdWebViewClient::shouldOverrideUrlLoading: ").append(s).toString());
        if (A(s))
        {
            dw.v("shouldOverrideUrlLoading: received passback url");
            return true;
        } else
        {
            return lC.bI().shouldOverrideUrlLoading(lC, s);
        }
    }
}
