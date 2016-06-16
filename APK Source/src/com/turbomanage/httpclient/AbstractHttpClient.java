// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package com.turbomanage.httpclient:
//            ConsoleRequestLogger, HttpDelete, HttpRequestException, HttpResponse, 
//            RequestLogger, HttpRequest, RequestHandler, HttpGet, 
//            HttpHead, ParameterMap, HttpPost, HttpPut, 
//            HttpMethod, BasicRequestHandler

public abstract class AbstractHttpClient
{

    public static final String MULTIPART = "multipart/form-data";
    public static final String URLENCODED = "application/x-www-form-urlencoded;charset=UTF-8";
    protected String baseUrl;
    protected int connectionTimeout;
    private boolean isConnected;
    protected int readTimeout;
    protected final RequestHandler requestHandler;
    private Map requestHeaders;
    protected RequestLogger requestLogger;

    private AbstractHttpClient()
    {
        this("");
    }

    private AbstractHttpClient(String s)
    {
        this(s, ((RequestHandler) (new BasicRequestHandler() {

        })));
    }

    public AbstractHttpClient(String s, RequestHandler requesthandler)
    {
        baseUrl = "";
        requestLogger = new ConsoleRequestLogger();
        requestHeaders = new TreeMap();
        connectionTimeout = 2000;
        readTimeout = 8000;
        baseUrl = s;
        requestHandler = requesthandler;
    }

    private void appendRequestHeaders(HttpURLConnection httpurlconnection)
    {
        String s;
        for (Iterator iterator = requestHeaders.keySet().iterator(); iterator.hasNext(); httpurlconnection.setRequestProperty(s, (String)requestHeaders.get(s)))
        {
            s = (String)iterator.next();
        }

    }

    protected static void ensureCookieManager()
    {
        if (CookieHandler.getDefault() == null)
        {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    public static CookieManager getCookieManager()
    {
        return (CookieManager)CookieHandler.getDefault();
    }

    public AbstractHttpClient addHeader(String s, String s1)
    {
        requestHeaders.put(s, s1);
        return this;
    }

    public void clearHeaders()
    {
        requestHeaders.clear();
    }

    public HttpResponse delete(String s, ParameterMap parametermap)
    {
        return execute(new HttpDelete(s, parametermap));
    }

    protected HttpResponse doHttpMethod(String s, HttpMethod httpmethod, String s1, byte abyte0[])
        throws HttpRequestException
    {
        String s2;
        String s3;
        String s4;
        Object obj;
        Object obj1;
        Object obj2;
        obj2 = null;
        obj1 = null;
        obj = null;
        s2 = obj1;
        s4 = obj;
        s3 = obj2;
        isConnected = false;
        s2 = obj1;
        s4 = obj;
        s3 = obj2;
        s = openConnection(s);
        s2 = s;
        s4 = obj;
        s3 = s;
        prepareConnection(s, httpmethod, s1);
        s2 = s;
        s4 = obj;
        s3 = s;
        httpmethod = requestHeaders.keySet().iterator();
_L2:
        s2 = s;
        s4 = obj;
        s3 = s;
        if (!httpmethod.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s2 = s;
        s4 = obj;
        s3 = s;
        s1 = (String)httpmethod.next();
        s2 = s;
        s4 = obj;
        s3 = s;
        s.setRequestProperty(s1, (String)requestHeaders.get(s1));
        if (true) goto _L2; else goto _L1
        httpmethod;
        s = readErrorStream(s2);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_539;
        }
        s4 = s;
        s3 = s2;
        int i = s.getStatus();
        if (i > 0)
        {
            if (requestLogger.isLoggingEnabled())
            {
                requestLogger.logResponse(s);
            }
            if (s2 != null)
            {
                s2.disconnect();
            }
            return s;
        }
        break MISSING_BLOCK_LABEL_539;
_L1:
        s2 = s;
        s4 = obj;
        s3 = s;
        if (!requestLogger.isLoggingEnabled())
        {
            break MISSING_BLOCK_LABEL_264;
        }
        s2 = s;
        s4 = obj;
        s3 = s;
        requestLogger.logRequest(s, abyte0);
        s2 = s;
        s4 = obj;
        s3 = s;
        s.connect();
        s2 = s;
        s4 = obj;
        s3 = s;
        isConnected = true;
        s2 = s;
        s4 = obj;
        s3 = s;
        if (!s.getDoOutput() || abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_333;
        }
        s2 = s;
        s4 = obj;
        s3 = s;
        writeOutputStream(s, abyte0);
        s2 = s;
        s4 = obj;
        s3 = s;
        if (!s.getDoInput()) goto _L4; else goto _L3
_L3:
        s2 = s;
        s4 = obj;
        s3 = s;
        httpmethod = readInputStream(s);
_L6:
        if (requestLogger.isLoggingEnabled())
        {
            requestLogger.logResponse(httpmethod);
        }
        if (s != null)
        {
            s.disconnect();
        }
        return httpmethod;
_L4:
        s2 = s;
        s4 = obj;
        s3 = s;
        httpmethod = new HttpResponse(s, null);
        if (true) goto _L6; else goto _L5
_L5:
        s;
        httpmethod.printStackTrace();
        if (true)
        {
            break MISSING_BLOCK_LABEL_521;
        }
        s4 = obj;
        s3 = s2;
        throw new NullPointerException();
        s;
        if (requestLogger.isLoggingEnabled())
        {
            requestLogger.logResponse(s4);
        }
        if (s3 != null)
        {
            s3.disconnect();
        }
        throw s;
        s;
        if (true)
        {
            break MISSING_BLOCK_LABEL_503;
        }
        s4 = obj;
        s3 = s2;
        throw new NullPointerException();
        s4 = obj;
        s3 = s2;
        throw new HttpRequestException(httpmethod, null);
        s4 = obj;
        s3 = s2;
        throw new HttpRequestException(httpmethod, null);
        s4 = s;
        s3 = s2;
        throw new HttpRequestException(httpmethod, s);
    }

    public HttpResponse execute(HttpRequest httprequest)
    {
        try
        {
            httprequest = doHttpMethod(httprequest.getPath(), httprequest.getHttpMethod(), httprequest.getContentType(), httprequest.getContent());
        }
        // Misplaced declaration of an exception variable
        catch (HttpRequest httprequest)
        {
            requestHandler.onError(httprequest);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (HttpRequest httprequest)
        {
            requestHandler.onError(new HttpRequestException(httprequest, null));
            return null;
        }
        return httprequest;
    }

    public HttpResponse get(String s, ParameterMap parametermap)
    {
        return execute(new HttpGet(s, parametermap));
    }

    public HttpResponse head(String s, ParameterMap parametermap)
    {
        return execute(new HttpHead(s, parametermap));
    }

    protected boolean isTimeoutException(Throwable throwable, long l)
    {
        l = (System.currentTimeMillis() - l) + 10L;
        if (requestLogger.isLoggingEnabled())
        {
            requestLogger.log((new StringBuilder("ELAPSED TIME = ")).append(l).append(", CT = ").append(connectionTimeout).append(", RT = ").append(readTimeout).toString());
        }
        if (isConnected)
        {
            return l >= (long)readTimeout;
        }
        return l >= (long)connectionTimeout;
    }

    public ParameterMap newParams()
    {
        return new ParameterMap();
    }

    protected HttpURLConnection openConnection(String s)
        throws IOException
    {
        s = (new StringBuilder()).append(baseUrl).append(s).toString();
        try
        {
            new URL(s);
        }
        catch (MalformedURLException malformedurlexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" is not a valid URL").toString(), malformedurlexception);
        }
        return requestHandler.openConnection(s);
    }

    public HttpResponse post(String s, ParameterMap parametermap)
    {
        return execute(new HttpPost(s, parametermap));
    }

    public HttpResponse post(String s, String s1, byte abyte0[])
    {
        return execute(new HttpPost(s, null, s1, abyte0));
    }

    protected void prepareConnection(HttpURLConnection httpurlconnection, HttpMethod httpmethod, String s)
        throws IOException
    {
        httpurlconnection.setConnectTimeout(connectionTimeout);
        httpurlconnection.setReadTimeout(readTimeout);
        requestHandler.prepareConnection(httpurlconnection, httpmethod, s);
    }

    public HttpResponse put(String s, String s1, byte abyte0[])
    {
        return execute(new HttpPut(s, null, s1, abyte0));
    }

    protected HttpResponse readErrorStream(HttpURLConnection httpurlconnection)
        throws Exception
    {
        InputStream inputstream;
        byte abyte0[];
        inputstream = null;
        abyte0 = null;
        InputStream inputstream1 = httpurlconnection.getErrorStream();
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        inputstream = inputstream1;
        abyte0 = requestHandler.readStream(inputstream1);
        inputstream = inputstream1;
        httpurlconnection = new HttpResponse(httpurlconnection, abyte0);
        Exception exception;
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (Exception exception1)
            {
                return httpurlconnection;
            }
        }
        return httpurlconnection;
        httpurlconnection;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        throw httpurlconnection;
    }

    protected HttpResponse readInputStream(HttpURLConnection httpurlconnection)
        throws Exception
    {
        InputStream inputstream;
        byte abyte0[];
        inputstream = null;
        abyte0 = null;
        InputStream inputstream1 = httpurlconnection.getInputStream();
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        inputstream = inputstream1;
        abyte0 = requestHandler.readStream(inputstream1);
        inputstream = inputstream1;
        httpurlconnection = new HttpResponse(httpurlconnection, abyte0);
        Exception exception;
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (Exception exception1)
            {
                return httpurlconnection;
            }
        }
        return httpurlconnection;
        httpurlconnection;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        throw httpurlconnection;
    }

    public void setConnectionTimeout(int i)
    {
        connectionTimeout = i;
    }

    public void setReadTimeout(int i)
    {
        readTimeout = i;
    }

    public void setRequestLogger(RequestLogger requestlogger)
    {
        requestLogger = requestlogger;
    }

    protected int writeOutputStream(HttpURLConnection httpurlconnection, byte abyte0[])
        throws Exception
    {
        OutputStream outputstream = null;
        OutputStream outputstream1 = httpurlconnection.getOutputStream();
        if (outputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        outputstream = outputstream1;
        requestHandler.writeStream(outputstream1, abyte0);
        outputstream = outputstream1;
        int i = httpurlconnection.getResponseCode();
        if (outputstream1 != null)
        {
            try
            {
                outputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (HttpURLConnection httpurlconnection)
            {
                return i;
            }
        }
        return i;
        httpurlconnection;
        if (outputstream != null)
        {
            try
            {
                outputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
        }
        throw httpurlconnection;
    }

    static 
    {
        ensureCookieManager();
    }
}
