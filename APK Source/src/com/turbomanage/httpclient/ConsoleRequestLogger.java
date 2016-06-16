// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.IOException;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.turbomanage.httpclient:
//            RequestLogger, HttpResponse

public class ConsoleRequestLogger
    implements RequestLogger
{

    public ConsoleRequestLogger()
    {
    }

    private void logHeaders(Map map)
    {
        if (map != null)
        {
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
            {
                String s = (String)iterator.next();
                Iterator iterator1 = ((List)map.get(s)).iterator();
                while (iterator1.hasNext()) 
                {
                    String s1 = (String)iterator1.next();
                    log((new StringBuilder()).append(s).append(":").append(s1).toString());
                }
            }

        }
    }

    public boolean isLoggingEnabled()
    {
        return true;
    }

    public void log(String s)
    {
        System.out.println(s);
    }

    public void logRequest(HttpURLConnection httpurlconnection, Object obj)
        throws IOException
    {
        log("=== HTTP Request ===");
        log((new StringBuilder()).append(httpurlconnection.getRequestMethod()).append(" ").append(httpurlconnection.getURL().toString()).toString());
        if (obj instanceof String)
        {
            log((new StringBuilder("Content: ")).append((String)obj).toString());
        }
        logHeaders(httpurlconnection.getRequestProperties());
    }

    public void logResponse(HttpResponse httpresponse)
    {
        if (httpresponse != null)
        {
            log("=== HTTP Response ===");
            log((new StringBuilder("Receive url: ")).append(httpresponse.getUrl()).toString());
            log((new StringBuilder("Status: ")).append(httpresponse.getStatus()).toString());
            logHeaders(httpresponse.getHeaders());
            log((new StringBuilder("Content:\n")).append(httpresponse.getBodyAsString()).toString());
        }
    }
}
