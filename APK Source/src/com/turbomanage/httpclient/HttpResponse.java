// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

public class HttpResponse
{

    private byte body[];
    private Map headers;
    private int status;
    private String url;

    public HttpResponse(HttpURLConnection httpurlconnection, byte abyte0[])
    {
        try
        {
            status = httpurlconnection.getResponseCode();
            url = httpurlconnection.getURL().toString();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        headers = httpurlconnection.getHeaderFields();
        body = abyte0;
    }

    public byte[] getBody()
    {
        return body;
    }

    public String getBodyAsString()
    {
        if (body != null)
        {
            return new String(body);
        } else
        {
            return null;
        }
    }

    public Map getHeaders()
    {
        return headers;
    }

    public int getStatus()
    {
        return status;
    }

    public String getUrl()
    {
        return url;
    }
}
