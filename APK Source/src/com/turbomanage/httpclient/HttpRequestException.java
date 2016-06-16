// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            HttpResponse

public class HttpRequestException extends Exception
{

    private static final long serialVersionUID = 0xde81109b48f4bb3fL;
    private HttpResponse httpResponse;

    public HttpRequestException(Exception exception, HttpResponse httpresponse)
    {
        super(exception);
        httpResponse = httpresponse;
    }

    public HttpResponse getHttpResponse()
    {
        return httpResponse;
    }
}
