// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            HttpResponse

public abstract class AsyncCallback
{

    public AsyncCallback()
    {
    }

    public abstract void onComplete(HttpResponse httpresponse);

    public void onError(Exception exception)
    {
        exception.printStackTrace();
    }
}
