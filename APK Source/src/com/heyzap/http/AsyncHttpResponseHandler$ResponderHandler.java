// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.heyzap.http:
//            AsyncHttpResponseHandler

static class mResponder extends Handler
{

    private final WeakReference mResponder;

    public void handleMessage(Message message)
    {
        AsyncHttpResponseHandler asynchttpresponsehandler = (AsyncHttpResponseHandler)mResponder.get();
        if (asynchttpresponsehandler != null)
        {
            asynchttpresponsehandler.handleMessage(message);
        }
    }

    (AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        mResponder = new WeakReference(asynchttpresponsehandler);
    }
}
