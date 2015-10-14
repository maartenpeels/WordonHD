// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.util.Log;
import com.turbomanage.httpclient.HttpResponse;
import com.turbomanage.httpclient.ParameterMap;
import com.turbomanage.httpclient.RequestLogger;
import com.turbomanage.httpclient.android.AndroidHttpClient;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            RequestHandlerError, TrustDefenderMobile

class HttpGet
    implements Runnable
{

    static final String TAG = com/threatmetrix/TrustDefenderMobile/HttpGet.getName();
    private Map headers;
    private String host;
    private ParameterMap params;
    private String path;
    RequestHandlerError requestHandler;
    private String scheme;
    private TrustDefenderMobile sdk;
    private TrustDefenderMobile.THMStatusCode statusCode;
    private int timeout;

    public HttpGet(String s, String s1, String s2, ParameterMap parametermap, int i, Map map, TrustDefenderMobile trustdefendermobile)
    {
        requestHandler = null;
        scheme = s;
        host = s1;
        path = s2;
        timeout = i;
        params = parametermap;
        headers = map;
        sdk = trustdefendermobile;
        statusCode = TrustDefenderMobile.THMStatusCode.THM_OK;
        requestHandler = new RequestHandlerError();
    }

    public void run()
    {
        Object obj = new AndroidHttpClient((new StringBuilder()).append(scheme).append("://").append(host).toString(), requestHandler);
        ((AndroidHttpClient) (obj)).setConnectionTimeout(timeout);
        ((AndroidHttpClient) (obj)).setReadTimeout(timeout);
        ((AndroidHttpClient) (obj)).setRequestLogger(new RequestLogger() {

            final HttpGet this$0;

            public final boolean isLoggingEnabled()
            {
                return false;
            }

            public final void log(String s1)
            {
            }

            public final void logRequest(HttpURLConnection httpurlconnection, Object obj1)
                throws IOException
            {
            }

            public final void logResponse(HttpResponse httpresponse)
            {
            }

            
            {
                this$0 = HttpGet.this;
                super();
            }
        });
        if (headers != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = headers.entrySet().iterator(); iterator.hasNext(); ((AndroidHttpClient) (obj)).addHeader((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        obj = ((AndroidHttpClient) (obj)).get(path, params);
        if (obj == null)
        {
            statusCode = requestHandler.statusCode;
            Log.w(TAG, (new StringBuilder("failed to retrieve from ")).append(host).toString());
            if (sdk != null)
            {
                sdk.setStatus(statusCode);
                sdk.interruptThreads();
            }
        } else
        {
            String s = TAG;
            (new StringBuilder("retrieved: ")).append(((HttpResponse) (obj)).getUrl());
            if (((HttpResponse) (obj)).getStatus() != 200)
            {
                Log.w(TAG, (new StringBuilder("error (")).append(((HttpResponse) (obj)).getStatus()).append(") status on request to ").append(scheme).append("://").append(host).toString());
                return;
            }
        }
    }

}
