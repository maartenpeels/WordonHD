// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import com.heyzap.http.AsyncHttpClient;
import com.heyzap.http.FileAsyncHttpResponseHandler;
import com.heyzap.http.RequestHandle;

// Referenced classes of package com.heyzap.internal:
//            ExecutorPool

public class FileFetchClient
{

    private static AsyncHttpClient client;

    public FileFetchClient()
    {
    }

    public static RequestHandle fetch(Context context, String s, FileAsyncHttpResponseHandler fileasynchttpresponsehandler)
    {
        return client.get(context, s, fileasynchttpresponsehandler);
    }

    static 
    {
        client = new AsyncHttpClient();
        client.setThreadPool(ExecutorPool.getInstance());
    }
}
