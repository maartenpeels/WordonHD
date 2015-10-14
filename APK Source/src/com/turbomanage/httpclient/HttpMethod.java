// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


public final class HttpMethod extends Enum
{

    private static final HttpMethod $VALUES[];
    public static final HttpMethod DELETE;
    public static final HttpMethod GET;
    public static final HttpMethod HEAD;
    public static final HttpMethod POST;
    public static final HttpMethod PUT;
    private boolean doInput;
    private boolean doOutput;

    private HttpMethod(String s, int i, boolean flag, boolean flag1)
    {
        super(s, i);
        doInput = flag;
        doOutput = flag1;
    }

    public static HttpMethod valueOf(String s)
    {
        return (HttpMethod)Enum.valueOf(com/turbomanage/httpclient/HttpMethod, s);
    }

    public static HttpMethod[] values()
    {
        return (HttpMethod[])$VALUES.clone();
    }

    public final boolean getDoInput()
    {
        return doInput;
    }

    public final boolean getDoOutput()
    {
        return doOutput;
    }

    public final String getMethodName()
    {
        return toString();
    }

    static 
    {
        GET = new HttpMethod("GET", 0, true, false);
        POST = new HttpMethod("POST", 1, true, true);
        PUT = new HttpMethod("PUT", 2, true, true);
        DELETE = new HttpMethod("DELETE", 3, true, false);
        HEAD = new HttpMethod("HEAD", 4, false, false);
        $VALUES = (new HttpMethod[] {
            GET, POST, PUT, DELETE, HEAD
        });
    }
}
