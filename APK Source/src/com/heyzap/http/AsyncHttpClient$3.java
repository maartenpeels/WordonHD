// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.heyzap.http:
//            AsyncHttpClient

class tRedirectHandler extends DefaultRedirectHandler
{

    final AsyncHttpClient this$0;
    final boolean val$enableRedirects;

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        return val$enableRedirects;
    }

    xt()
    {
        this$0 = final_asynchttpclient;
        val$enableRedirects = Z.this;
        super();
    }
}
