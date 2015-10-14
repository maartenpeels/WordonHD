// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient.android;

import android.os.AsyncTask;
import com.turbomanage.httpclient.AsyncCallback;
import com.turbomanage.httpclient.AsyncHttpClient;
import com.turbomanage.httpclient.AsyncRequestExecutor;
import com.turbomanage.httpclient.HttpRequest;
import com.turbomanage.httpclient.HttpResponse;

public class DoHttpRequestTask extends AsyncTask
    implements AsyncRequestExecutor
{

    private AsyncCallback callback;
    private AsyncHttpClient client;
    private Exception savedException;

    public DoHttpRequestTask(AsyncHttpClient asynchttpclient, AsyncCallback asynccallback)
    {
        client = asynchttpclient;
        callback = asynccallback;
    }

    protected transient HttpResponse doInBackground(HttpRequest ahttprequest[])
    {
        if (ahttprequest == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        try
        {
            if (ahttprequest.length <= 0)
            {
                break MISSING_BLOCK_LABEL_22;
            }
        }
        // Misplaced declaration of an exception variable
        catch (HttpRequest ahttprequest[])
        {
            savedException = ahttprequest;
            cancel(true);
            return null;
        }
        ahttprequest = ahttprequest[0];
        return client.tryMany(ahttprequest);
        throw new IllegalArgumentException("DoHttpRequestTask takes exactly one argument of type HttpRequest");
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((HttpRequest[])aobj);
    }

    public void execute(HttpRequest httprequest)
    {
        super.execute(new HttpRequest[] {
            httprequest
        });
    }

    protected void onCancelled()
    {
        callback.onError(savedException);
    }

    protected void onPostExecute(HttpResponse httpresponse)
    {
        callback.onComplete(httpresponse);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((HttpResponse)obj);
    }
}
