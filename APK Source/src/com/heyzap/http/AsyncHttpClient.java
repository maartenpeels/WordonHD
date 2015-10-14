// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.content.Context;
import com.heyzap.internal.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

// Referenced classes of package com.heyzap.http:
//            RetryHandler, MySSLSocketFactory, RequestParams, ResponseHandlerInterface, 
//            RequestHandle, AsyncHttpRequest

public class AsyncHttpClient
{
    private static class InflatingEntity extends HttpEntityWrapper
    {

        private GZIPInputStream stream;

        public void finalize()
            throws Throwable
        {
            super.finalize();
            if (stream == null)
            {
                break MISSING_BLOCK_LABEL_18;
            }
            stream.close();
            return;
            Exception exception;
            exception;
        }

        public InputStream getContent()
            throws IOException
        {
            stream = new GZIPInputStream(wrappedEntity.getContent());
            return stream;
        }

        public long getContentLength()
        {
            return -1L;
        }

        public InflatingEntity(HttpEntity httpentity)
        {
            super(httpentity);
        }
    }


    public static final int DEFAULT_MAX_CONNECTIONS = 10;
    public static final int DEFAULT_MAX_RETRIES = 5;
    public static final int DEFAULT_RETRY_SLEEP_TIME_MILLIS = 1500;
    public static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    public static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String LOG_TAG = "AsyncHttpClient";
    public static final String VERSION = "1.4.5";
    private final Map clientHeaderMap;
    private final DefaultHttpClient httpClient;
    private final HttpContext httpContext;
    private boolean isUrlEncodingEnabled;
    private int maxConnections;
    private final Object requestLock;
    private final Map requestMap;
    private ExecutorService threadPool;
    private int timeout;

    public AsyncHttpClient()
    {
        this(false, 80, 443);
    }

    public AsyncHttpClient(int i)
    {
        this(false, i, 443);
    }

    public AsyncHttpClient(int i, int j)
    {
        this(false, i, j);
    }

    public AsyncHttpClient(SchemeRegistry schemeregistry)
    {
        maxConnections = 10;
        timeout = 10000;
        isUrlEncodingEnabled = true;
        requestLock = new Object();
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basichttpparams, timeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basichttpparams, new ConnPerRouteBean(maxConnections));
        ConnManagerParams.setMaxTotalConnections(basichttpparams, 10);
        HttpConnectionParams.setSoTimeout(basichttpparams, timeout);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, timeout);
        HttpConnectionParams.setTcpNoDelay(basichttpparams, true);
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUserAgent(basichttpparams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[] {
            "1.4.5"
        }));
        schemeregistry = new ThreadSafeClientConnManager(basichttpparams, schemeregistry);
        threadPool = Executors.newCachedThreadPool();
        requestMap = new WeakHashMap();
        clientHeaderMap = new HashMap();
        httpContext = new SyncBasicHttpContext(new BasicHttpContext());
        httpClient = new DefaultHttpClient(schemeregistry, basichttpparams);
        httpClient.addRequestInterceptor(new HttpRequestInterceptor() {

            final AsyncHttpClient this$0;

            public void process(HttpRequest httprequest, HttpContext httpcontext)
            {
                if (!httprequest.containsHeader("Accept-Encoding"))
                {
                    httprequest.addHeader("Accept-Encoding", "gzip");
                }
                String s;
                for (httpcontext = clientHeaderMap.keySet().iterator(); httpcontext.hasNext(); httprequest.addHeader(s, (String)clientHeaderMap.get(s)))
                {
                    s = (String)httpcontext.next();
                }

            }

            
            {
                this$0 = AsyncHttpClient.this;
                super();
            }
        });
        httpClient.addResponseInterceptor(new HttpResponseInterceptor() {

            final AsyncHttpClient this$0;

            public void process(HttpResponse httpresponse, HttpContext httpcontext)
            {
                httpcontext = httpresponse.getEntity();
                if (httpcontext != null) goto _L2; else goto _L1
_L1:
                Header header;
                return;
_L2:
                if ((header = httpcontext.getContentEncoding()) != null)
                {
                    HeaderElement aheaderelement[] = header.getElements();
                    int j = aheaderelement.length;
                    int i = 0;
                    while (i < j) 
                    {
                        if (aheaderelement[i].getName().equalsIgnoreCase("gzip"))
                        {
                            httpresponse.setEntity(new InflatingEntity(httpcontext));
                            return;
                        }
                        i++;
                    }
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = AsyncHttpClient.this;
                super();
            }
        });
        httpClient.setHttpRequestRetryHandler(new RetryHandler(5, 1500));
    }

    public AsyncHttpClient(boolean flag, int i, int j)
    {
        this(getDefaultSchemeRegistry(flag, i, j));
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpentityenclosingrequestbase, HttpEntity httpentity)
    {
        if (httpentity != null)
        {
            httpentityenclosingrequestbase.setEntity(httpentity);
        }
        return httpentityenclosingrequestbase;
    }

    public static void allowRetryExceptionClass(Class class1)
    {
        if (class1 != null)
        {
            RetryHandler.addClassToWhitelist(class1);
        }
    }

    public static void blockRetryExceptionClass(Class class1)
    {
        if (class1 != null)
        {
            RetryHandler.addClassToBlacklist(class1);
        }
    }

    private static SchemeRegistry getDefaultSchemeRegistry(boolean flag, int i, int j)
    {
        if (!flag);
        if (i < 1)
        {
            i = 80;
        }
        if (j < 1)
        {
            j = 443;
        }
        SSLSocketFactory sslsocketfactory;
        SchemeRegistry schemeregistry;
        if (flag)
        {
            sslsocketfactory = MySSLSocketFactory.getFixedSocketFactory();
        } else
        {
            sslsocketfactory = SSLSocketFactory.getSocketFactory();
        }
        schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), i));
        schemeregistry.register(new Scheme("https", sslsocketfactory, j));
        return schemeregistry;
    }

    public static String getUrlWithQueryString(boolean flag, String s, RequestParams requestparams)
    {
label0:
        {
            if (flag)
            {
                s = s.replace(" ", "%20");
            }
            String s1 = s;
            if (requestparams != null)
            {
                requestparams = requestparams.getParamString();
                if (s.contains("?"))
                {
                    break label0;
                }
                s1 = (new StringBuilder()).append(s).append("?").append(requestparams).toString();
            }
            return s1;
        }
        return (new StringBuilder()).append(s).append("&").append(requestparams).toString();
    }

    private HttpEntity paramsToEntity(RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        if (requestparams == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        requestparams = requestparams.getEntity(responsehandlerinterface);
        return requestparams;
        requestparams;
        if (responsehandlerinterface != null)
        {
            responsehandlerinterface.sendFailureMessage(0, null, null, requestparams);
            return null;
        }
        Logger.trace(requestparams);
        return null;
    }

    public void addHeader(String s, String s1)
    {
        clientHeaderMap.put(s, s1);
    }

    public void cancelRequests(Context context, boolean flag)
    {
        Object obj = (List)requestMap.get(context);
        if (obj != null)
        {
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); ((RequestHandle)((Iterator) (obj)).next()).cancel(flag)) { }
            requestMap.remove(context);
        }
    }

    public void clearBasicAuth()
    {
        httpClient.getCredentialsProvider().clear();
    }

    public RequestHandle delete(Context context, String s, ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpDelete(s);
        return sendRequest(httpClient, httpContext, s, null, responsehandlerinterface, context);
    }

    public RequestHandle delete(Context context, String s, Header aheader[], RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpDelete(getUrlWithQueryString(isUrlEncodingEnabled, s, requestparams));
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, null, responsehandlerinterface, context);
    }

    public RequestHandle delete(Context context, String s, Header aheader[], ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpDelete(s);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, null, responsehandlerinterface, context);
    }

    public RequestHandle delete(String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return delete(null, s, responsehandlerinterface);
    }

    public RequestHandle get(Context context, String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return sendRequest(httpClient, httpContext, new HttpGet(getUrlWithQueryString(isUrlEncodingEnabled, s, requestparams)), null, responsehandlerinterface, context);
    }

    public RequestHandle get(Context context, String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return get(context, s, null, responsehandlerinterface);
    }

    public RequestHandle get(Context context, String s, Header aheader[], RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpGet(getUrlWithQueryString(isUrlEncodingEnabled, s, requestparams));
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, null, responsehandlerinterface, context);
    }

    public RequestHandle get(String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return get(null, s, requestparams, responsehandlerinterface);
    }

    public RequestHandle get(String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return get(null, s, null, responsehandlerinterface);
    }

    public DefaultHttpClient getHttpClient()
    {
        return httpClient;
    }

    public HttpContext getHttpContext()
    {
        return httpContext;
    }

    public int getMaxConnections()
    {
        return maxConnections;
    }

    public int getTimeout()
    {
        return timeout;
    }

    public RequestHandle head(Context context, String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return sendRequest(httpClient, httpContext, new HttpHead(getUrlWithQueryString(isUrlEncodingEnabled, s, requestparams)), null, responsehandlerinterface, context);
    }

    public RequestHandle head(Context context, String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return head(context, s, null, responsehandlerinterface);
    }

    public RequestHandle head(Context context, String s, Header aheader[], RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpHead(getUrlWithQueryString(isUrlEncodingEnabled, s, requestparams));
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, null, responsehandlerinterface, context);
    }

    public RequestHandle head(String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return head(null, s, requestparams, responsehandlerinterface);
    }

    public RequestHandle head(String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return head(null, s, null, responsehandlerinterface);
    }

    public boolean isUrlEncodingEnabled()
    {
        return isUrlEncodingEnabled;
    }

    public RequestHandle post(Context context, String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return post(context, s, paramsToEntity(requestparams, responsehandlerinterface), null, responsehandlerinterface);
    }

    public RequestHandle post(Context context, String s, HttpEntity httpentity, String s1, ResponseHandlerInterface responsehandlerinterface)
    {
        return sendRequest(httpClient, httpContext, addEntityToRequestBase(new HttpPost(s), httpentity), s1, responsehandlerinterface, context);
    }

    public RequestHandle post(Context context, String s, Header aheader[], RequestParams requestparams, String s1, ResponseHandlerInterface responsehandlerinterface)
    {
        s = new HttpPost(s);
        if (requestparams != null)
        {
            s.setEntity(paramsToEntity(requestparams, responsehandlerinterface));
        }
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, s1, responsehandlerinterface, context);
    }

    public RequestHandle post(Context context, String s, Header aheader[], HttpEntity httpentity, String s1, ResponseHandlerInterface responsehandlerinterface)
    {
        s = addEntityToRequestBase(new HttpPost(s), httpentity);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, s1, responsehandlerinterface, context);
    }

    public RequestHandle post(String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return post(null, s, requestparams, responsehandlerinterface);
    }

    public RequestHandle post(String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return post(null, s, null, responsehandlerinterface);
    }

    public RequestHandle put(Context context, String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return put(context, s, paramsToEntity(requestparams, responsehandlerinterface), null, responsehandlerinterface);
    }

    public RequestHandle put(Context context, String s, HttpEntity httpentity, String s1, ResponseHandlerInterface responsehandlerinterface)
    {
        return sendRequest(httpClient, httpContext, addEntityToRequestBase(new HttpPut(s), httpentity), s1, responsehandlerinterface, context);
    }

    public RequestHandle put(Context context, String s, Header aheader[], HttpEntity httpentity, String s1, ResponseHandlerInterface responsehandlerinterface)
    {
        s = addEntityToRequestBase(new HttpPut(s), httpentity);
        if (aheader != null)
        {
            s.setHeaders(aheader);
        }
        return sendRequest(httpClient, httpContext, s, s1, responsehandlerinterface, context);
    }

    public RequestHandle put(String s, RequestParams requestparams, ResponseHandlerInterface responsehandlerinterface)
    {
        return put(null, s, requestparams, responsehandlerinterface);
    }

    public RequestHandle put(String s, ResponseHandlerInterface responsehandlerinterface)
    {
        return put(null, s, null, responsehandlerinterface);
    }

    public void removeHeader(String s)
    {
        clientHeaderMap.remove(s);
    }

    protected RequestHandle sendRequest(DefaultHttpClient defaulthttpclient, HttpContext httpcontext, HttpUriRequest httpurirequest, String s, ResponseHandlerInterface responsehandlerinterface, Context context)
    {
        if (s != null)
        {
            httpurirequest.setHeader("Content-Type", s);
        }
        responsehandlerinterface.setRequestHeaders(httpurirequest.getAllHeaders());
        responsehandlerinterface.setRequestURI(httpurirequest.getURI());
        defaulthttpclient = new AsyncHttpRequest(defaulthttpclient, httpcontext, httpurirequest, responsehandlerinterface);
        threadPool.submit(defaulthttpclient);
        httpurirequest = new RequestHandle(defaulthttpclient);
        if (context == null) goto _L2; else goto _L1
_L1:
        httpcontext = (List)requestMap.get(context);
        defaulthttpclient = httpcontext;
        if (httpcontext == null)
        {
            defaulthttpclient = new LinkedList();
            requestMap.put(context, defaulthttpclient);
        }
        httpcontext = ((HttpContext) (requestLock));
        httpcontext;
        JVM INSTR monitorenter ;
        defaulthttpclient.add(httpurirequest);
        defaulthttpclient = defaulthttpclient.iterator();
        do
        {
            if (!defaulthttpclient.hasNext())
            {
                break;
            }
            if (((RequestHandle)defaulthttpclient.next()).shouldBeGarbageCollected())
            {
                defaulthttpclient.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_182;
        defaulthttpclient;
        httpcontext;
        JVM INSTR monitorexit ;
        throw defaulthttpclient;
        httpcontext;
        JVM INSTR monitorexit ;
_L2:
        return httpurirequest;
    }

    public void setBasicAuth(String s, String s1)
    {
        setBasicAuth(s, s1, AuthScope.ANY);
    }

    public void setBasicAuth(String s, String s1, AuthScope authscope)
    {
        s = new UsernamePasswordCredentials(s, s1);
        httpClient.getCredentialsProvider().setCredentials(authscope, s);
    }

    public void setCookieStore(CookieStore cookiestore)
    {
        httpContext.setAttribute("http.cookie-store", cookiestore);
    }

    public void setEnableRedirects(final boolean enableRedirects)
    {
        httpClient.setRedirectHandler(new DefaultRedirectHandler() {

            final AsyncHttpClient this$0;
            final boolean val$enableRedirects;

            public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
            {
                return enableRedirects;
            }

            
            {
                this$0 = AsyncHttpClient.this;
                enableRedirects = flag;
                super();
            }
        });
    }

    public void setMaxConnections(int i)
    {
        if (i < 1)
        {
            i = 10;
        }
        maxConnections = i;
        ConnManagerParams.setMaxConnectionsPerRoute(httpClient.getParams(), new ConnPerRouteBean(maxConnections));
    }

    public void setMaxRetriesAndTimeout(int i, int j)
    {
        httpClient.setHttpRequestRetryHandler(new RetryHandler(i, j));
    }

    public void setProxy(String s, int i)
    {
        s = new HttpHost(s, i);
        httpClient.getParams().setParameter("http.route.default-proxy", s);
    }

    public void setProxy(String s, int i, String s1, String s2)
    {
        httpClient.getCredentialsProvider().setCredentials(new AuthScope(s, i), new UsernamePasswordCredentials(s1, s2));
        s = new HttpHost(s, i);
        httpClient.getParams().setParameter("http.route.default-proxy", s);
    }

    public void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
    {
        httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", sslsocketfactory, 443));
    }

    public void setThreadPool(ExecutorService executorservice)
    {
        threadPool = executorservice;
    }

    public void setTimeout(int i)
    {
        if (i < 1000)
        {
            i = 10000;
        }
        timeout = i;
        HttpParams httpparams = httpClient.getParams();
        ConnManagerParams.setTimeout(httpparams, timeout);
        HttpConnectionParams.setSoTimeout(httpparams, timeout);
        HttpConnectionParams.setConnectionTimeout(httpparams, timeout);
    }

    public void setURLEncodingEnabled(boolean flag)
    {
        isUrlEncodingEnabled = flag;
    }

    public void setUserAgent(String s)
    {
        HttpProtocolParams.setUserAgent(httpClient.getParams(), s);
    }

}
