// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public final class AndroidProxySelector
{

    private static final int LIST_HEAD = 0;
    private static final String LOG_TAG = "AndroidProxySelector";

    public AndroidProxySelector()
    {
    }

    public static String getProxyUrl(String s)
    {
        s = new URI(s);
        s = ProxySelector.getDefault().select(s);
        if (s.isEmpty())
        {
            return "";
        }
        Proxy proxy;
        s = (Proxy)s.get(0);
        proxy = Proxy.NO_PROXY;
        if (proxy != s) goto _L2; else goto _L1
_L1:
        return "";
_L2:
        if (java.net.Proxy.Type.HTTP != s.type())
        {
            continue; /* Loop/switch isn't completed */
        }
        s = s.address().toString();
        return s;
        s;
        continue; /* Loop/switch isn't completed */
        s;
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L1; else goto _L3
_L3:
    }
}