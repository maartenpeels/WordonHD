// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            HttpRequest, HttpMethod, ParameterMap

public class HttpPost extends HttpRequest
{

    public HttpPost(String s, ParameterMap parametermap)
    {
        super(s, null);
        httpMethod = HttpMethod.POST;
        path = s;
        contentType = "application/x-www-form-urlencoded;charset=UTF-8";
        if (parametermap != null)
        {
            content = parametermap.urlEncodedBytes();
        }
    }

    public HttpPost(String s, ParameterMap parametermap, String s1, byte abyte0[])
    {
        super(s, parametermap);
        httpMethod = HttpMethod.POST;
        contentType = s1;
        content = abyte0;
    }
}
