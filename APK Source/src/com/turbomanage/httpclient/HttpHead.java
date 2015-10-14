// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            HttpRequest, HttpMethod, ParameterMap

public class HttpHead extends HttpRequest
{

    public HttpHead(String s, ParameterMap parametermap)
    {
        super(s, parametermap);
        httpMethod = HttpMethod.HEAD;
    }
}
