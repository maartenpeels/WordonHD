// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.turbomanage.httpclient:
//            RequestHandler, ConsoleRequestLogger, HttpRequestException, RequestLogger, 
//            HttpResponse, HttpMethod

public abstract class BasicRequestHandler
    implements RequestHandler
{

    private final RequestLogger logger;

    public BasicRequestHandler()
    {
        this(((RequestLogger) (new ConsoleRequestLogger())));
    }

    public BasicRequestHandler(RequestLogger requestlogger)
    {
        logger = requestlogger;
    }

    public boolean onError(HttpRequestException httprequestexception)
    {
        HttpResponse httpresponse = httprequestexception.getHttpResponse();
        if (logger.isLoggingEnabled())
        {
            logger.log("BasicRequestHandler.onError got");
            httprequestexception.printStackTrace();
        }
        return httpresponse != null && httpresponse.getStatus() > 0;
    }

    public HttpURLConnection openConnection(String s)
        throws IOException
    {
        return (HttpURLConnection)(new URL(s)).openConnection();
    }

    public void prepareConnection(HttpURLConnection httpurlconnection, HttpMethod httpmethod, String s)
        throws IOException
    {
        httpurlconnection.setRequestMethod(httpmethod.getMethodName());
        httpurlconnection.setDoOutput(httpmethod.getDoOutput());
        httpurlconnection.setDoInput(httpmethod.getDoInput());
        if (s != null)
        {
            httpurlconnection.setRequestProperty("Content-Type", s);
        }
        httpurlconnection.setRequestProperty("Accept-Charset", "UTF-8");
    }

    public byte[] readStream(InputStream inputstream)
        throws IOException
    {
        byte abyte0[] = new byte[16384];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                bytearrayoutputstream.flush();
                return bytearrayoutputstream.toByteArray();
            }
        } while (true);
    }

    public void writeStream(OutputStream outputstream, byte abyte0[])
        throws IOException
    {
        outputstream.write(abyte0);
    }
}
