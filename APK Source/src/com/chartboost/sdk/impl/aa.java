// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

// Referenced classes of package com.chartboost.sdk.impl:
//            z, l, a

public class aa
    implements z
{
    public static interface a
    {

        public abstract String a(String s);
    }


    private final a a;
    private final SSLSocketFactory b;

    public aa()
    {
        this(null);
    }

    public aa(a a1)
    {
        this(a1, null);
    }

    public aa(a a1, SSLSocketFactory sslsocketfactory)
    {
        a = a1;
        b = sslsocketfactory;
    }

    private HttpURLConnection a(URL url, l l1)
        throws IOException
    {
        HttpURLConnection httpurlconnection = a(url);
        int i = l1.t();
        httpurlconnection.setConnectTimeout(i);
        httpurlconnection.setReadTimeout(i);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && b != null)
        {
            ((HttpsURLConnection)httpurlconnection).setSSLSocketFactory(b);
        }
        return httpurlconnection;
    }

    private static HttpEntity a(HttpURLConnection httpurlconnection)
    {
        BasicHttpEntity basichttpentity = new BasicHttpEntity();
        java.io.InputStream inputstream;
        try
        {
            inputstream = httpurlconnection.getInputStream();
        }
        catch (IOException ioexception)
        {
            ioexception = httpurlconnection.getErrorStream();
        }
        basichttpentity.setContent(inputstream);
        basichttpentity.setContentLength(httpurlconnection.getContentLength());
        basichttpentity.setContentEncoding(httpurlconnection.getContentEncoding());
        basichttpentity.setContentType(httpurlconnection.getContentType());
        return basichttpentity;
    }

    static void a(HttpURLConnection httpurlconnection, l l1)
        throws IOException, com.chartboost.sdk.impl.a
    {
        switch (l1.a())
        {
        default:
            throw new IllegalStateException("Unknown method type.");

        case -1: 
            byte abyte0[] = l1.m();
            if (abyte0 != null)
            {
                httpurlconnection.setDoOutput(true);
                httpurlconnection.setRequestMethod("POST");
                httpurlconnection.addRequestProperty("Content-Type", l1.l());
                httpurlconnection = new DataOutputStream(httpurlconnection.getOutputStream());
                httpurlconnection.write(abyte0);
                httpurlconnection.close();
            }
            return;

        case 0: // '\0'
            httpurlconnection.setRequestMethod("GET");
            return;

        case 3: // '\003'
            httpurlconnection.setRequestMethod("DELETE");
            return;

        case 1: // '\001'
            httpurlconnection.setRequestMethod("POST");
            b(httpurlconnection, l1);
            return;

        case 2: // '\002'
            httpurlconnection.setRequestMethod("PUT");
            b(httpurlconnection, l1);
            return;

        case 4: // '\004'
            httpurlconnection.setRequestMethod("HEAD");
            return;

        case 5: // '\005'
            httpurlconnection.setRequestMethod("OPTIONS");
            return;

        case 6: // '\006'
            httpurlconnection.setRequestMethod("TRACE");
            return;

        case 7: // '\007'
            httpurlconnection.setRequestMethod("PATCH");
            b(httpurlconnection, l1);
            return;
        }
    }

    private static void b(HttpURLConnection httpurlconnection, l l1)
        throws IOException, com.chartboost.sdk.impl.a
    {
        byte abyte0[] = l1.q();
        if (abyte0 != null)
        {
            httpurlconnection.setDoOutput(true);
            httpurlconnection.addRequestProperty("Content-Type", l1.p());
            httpurlconnection = new DataOutputStream(httpurlconnection.getOutputStream());
            httpurlconnection.write(abyte0);
            httpurlconnection.close();
        }
    }

    protected HttpURLConnection a(URL url)
        throws IOException
    {
        return (HttpURLConnection)url.openConnection();
    }

    public HttpResponse a(l l1, Map map)
        throws IOException, com.chartboost.sdk.impl.a
    {
        Object obj = l1.d();
        HashMap hashmap = new HashMap();
        hashmap.putAll(l1.i());
        hashmap.putAll(map);
        map = ((Map) (obj));
        if (a != null)
        {
            map = a.a(((String) (obj)));
            if (map == null)
            {
                throw new IOException((new StringBuilder("URL blocked by rewriter: ")).append(((String) (obj))).toString());
            }
        }
        map = a(new URL(map), l1);
        obj = hashmap.keySet().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                a(((HttpURLConnection) (map)), l1);
                l1 = new ProtocolVersion("HTTP", 1, 1);
                if (map.getResponseCode() == -1)
                {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                break;
            }
            String s = (String)((Iterator) (obj)).next();
            map.addRequestProperty(s, (String)hashmap.get(s));
        } while (true);
        l1 = new BasicHttpResponse(new BasicStatusLine(l1, map.getResponseCode(), map.getResponseMessage()));
        l1.setEntity(a(((HttpURLConnection) (map))));
        map = map.getHeaderFields().entrySet().iterator();
        do
        {
            java.util.Map.Entry entry;
            do
            {
                if (!map.hasNext())
                {
                    return l1;
                }
                entry = (java.util.Map.Entry)map.next();
            } while (entry.getKey() == null);
            l1.addHeader(new BasicHeader((String)entry.getKey(), (String)((List)entry.getValue()).get(0)));
        } while (true);
    }
}
