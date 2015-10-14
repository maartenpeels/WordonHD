// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient.android;

import com.turbomanage.httpclient.AsyncCallback;
import com.turbomanage.httpclient.AsyncHttpClient;
import com.turbomanage.httpclient.AsyncRequestExecutor;
import com.turbomanage.httpclient.AsyncRequestExecutorFactory;

// Referenced classes of package com.turbomanage.httpclient.android:
//            DoHttpRequestTask

public class AsyncTaskFactory
    implements AsyncRequestExecutorFactory
{

    public AsyncTaskFactory()
    {
    }

    public AsyncRequestExecutor getAsyncRequestExecutor(AsyncHttpClient asynchttpclient, AsyncCallback asynccallback)
    {
        return new DoHttpRequestTask(asynchttpclient, asynccallback);
    }
}
