// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import org.apache.http.Header;

// Referenced classes of package com.heyzap.http:
//            TextHttpResponseHandler

public class SyncTextHttpResponseHandler extends TextHttpResponseHandler
{

    public Throwable error;
    public String responseStr;

    public SyncTextHttpResponseHandler()
    {
        responseStr = null;
        error = null;
        setUseSynchronousMode(true);
    }

    public Throwable getError()
    {
        return error;
    }

    public String getResponse()
    {
        return responseStr;
    }

    public Boolean hasError()
    {
        boolean flag;
        if (error != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public void onFailure(int i, Header aheader[], String s, Throwable throwable)
    {
    }

    public void onSuccess(int i, Header aheader[], String s)
    {
        responseStr = s;
    }
}
