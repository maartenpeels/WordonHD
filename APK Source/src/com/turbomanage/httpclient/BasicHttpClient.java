// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            AbstractHttpClient, RequestHandler, BasicRequestHandler

public class BasicHttpClient extends AbstractHttpClient
{

    public BasicHttpClient()
    {
        this("");
    }

    public BasicHttpClient(String s)
    {
        this(s, ((RequestHandler) (new BasicRequestHandler() {

        })));
    }

    public BasicHttpClient(String s, RequestHandler requesthandler)
    {
        super(s, requesthandler);
    }
}
