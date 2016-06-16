// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.chartboost.sdk.impl:
//            au

class <init> extends WebViewClient
{

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

    ener(au au1)
    {
        a = au1;
        super();
    }
}
