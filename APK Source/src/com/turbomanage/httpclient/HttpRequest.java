// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            ParameterMap, HttpMethod

public abstract class HttpRequest
{

    public static final String MULTIPART = "multipart/form-data";
    public static final String URLENCODED = "application/x-www-form-urlencoded;charset=UTF-8";
    protected byte content[];
    protected String contentType;
    protected HttpMethod httpMethod;
    protected String path;

    public HttpRequest(String s, ParameterMap parametermap)
    {
        path = "";
        if (s != null)
        {
            path = s;
        }
        if (parametermap != null)
        {
            s = parametermap.urlEncode();
            path = (new StringBuilder()).append(path).append("?").append(s).toString();
        }
    }

    public byte[] getContent()
    {
        return content;
    }

    public String getContentType()
    {
        return contentType;
    }

    public HttpMethod getHttpMethod()
    {
        return httpMethod;
    }

    public String getPath()
    {
        return path;
    }
}
