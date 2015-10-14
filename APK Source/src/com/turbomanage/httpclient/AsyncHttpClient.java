// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;


// Referenced classes of package com.turbomanage.httpclient:
//            AbstractHttpClient, HttpDelete, AsyncRequestExecutorFactory, AsyncRequestExecutor, 
//            HttpGet, HttpHead, HttpPost, HttpPut, 
//            HttpRequestException, RequestLogger, HttpRequest, RequestHandler, 
//            ParameterMap, AsyncCallback, HttpResponse, BasicRequestHandler

public class AsyncHttpClient extends AbstractHttpClient
{

    static int fib[];
    protected final AsyncRequestExecutorFactory execFactory;
    private int maxRetries;

    public AsyncHttpClient(AsyncRequestExecutorFactory asyncrequestexecutorfactory)
    {
        this(asyncrequestexecutorfactory, "");
    }

    public AsyncHttpClient(AsyncRequestExecutorFactory asyncrequestexecutorfactory, String s)
    {
        this(asyncrequestexecutorfactory, s, ((RequestHandler) (new BasicRequestHandler() {

        })));
    }

    public AsyncHttpClient(AsyncRequestExecutorFactory asyncrequestexecutorfactory, String s, RequestHandler requesthandler)
    {
        super(s, requesthandler);
        maxRetries = 3;
        execFactory = asyncrequestexecutorfactory;
    }

    public void delete(String s, ParameterMap parametermap, AsyncCallback asynccallback)
    {
        executeAsync(new HttpDelete(s, parametermap), asynccallback);
    }

    protected void executeAsync(HttpRequest httprequest, AsyncCallback asynccallback)
    {
        execFactory.getAsyncRequestExecutor(this, asynccallback).execute(httprequest);
    }

    public void get(String s, ParameterMap parametermap, AsyncCallback asynccallback)
    {
        executeAsync(new HttpGet(s, parametermap), asynccallback);
    }

    protected int getNextTimeout(int i)
    {
        return fib[i + 2] * 1000;
    }

    public void head(String s, ParameterMap parametermap, AsyncCallback asynccallback)
    {
        executeAsync(new HttpHead(s, parametermap), asynccallback);
    }

    public void post(String s, ParameterMap parametermap, AsyncCallback asynccallback)
    {
        executeAsync(new HttpPost(s, parametermap), asynccallback);
    }

    public void post(String s, String s1, byte abyte0[], AsyncCallback asynccallback)
    {
        executeAsync(new HttpPost(s, null, s1, abyte0), asynccallback);
    }

    public void put(String s, String s1, byte abyte0[], AsyncCallback asynccallback)
    {
        executeAsync(new HttpPut(s, null, s1, abyte0), asynccallback);
    }

    public void setMaxRetries(int i)
    {
        if (i <= 0 || i > 18)
        {
            throw new IllegalArgumentException("Maximum retries must be between 1 and 18");
        } else
        {
            maxRetries = i;
            return;
        }
    }

    public HttpResponse tryMany(HttpRequest httprequest)
        throws HttpRequestException
    {
        int i;
        long l1;
        i = 0;
        l1 = System.currentTimeMillis();
_L2:
        long l;
        if (i >= maxRetries)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        l = l1;
        setConnectionTimeout(getNextTimeout(i));
        l = l1;
        if (!requestLogger.isLoggingEnabled())
        {
            break MISSING_BLOCK_LABEL_97;
        }
        l = l1;
        requestLogger.log((new StringBuilder()).append(i + 1).append("of").append(maxRetries).append(", trying ").append(httprequest.getPath()).toString());
        l = l1;
        l1 = System.currentTimeMillis();
        l = l1;
        HttpResponse httpresponse = doHttpMethod(httprequest.getPath(), httprequest.getHttpMethod(), httprequest.getContentType(), httprequest.getContent());
        if (httpresponse != null)
        {
            return httpresponse;
        }
        break MISSING_BLOCK_LABEL_197;
        HttpRequestException httprequestexception;
        httprequestexception;
        if (isTimeoutException(httprequestexception, l))
        {
            l1 = l;
            if (i < maxRetries - 1)
            {
                break MISSING_BLOCK_LABEL_197;
            }
        }
        if (!requestHandler.onError(httprequestexception) || i >= maxRetries - 1)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            Thread.sleep(connectionTimeout);
        }
        // Misplaced declaration of an exception variable
        catch (HttpRequest httprequest)
        {
            throw httprequestexception;
        }
        l1 = l;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        throw httprequestexception;
        return null;
    }

    static 
    {
        fib = new int[20];
        int i = 0;
        while (i < 20) 
        {
            int ai[] = fib;
            int j;
            if (i < 2)
            {
                j = i;
            } else
            {
                j = fib[i - 2] + fib[i - 1];
            }
            ai[i] = j;
            i++;
        }
    }
}
