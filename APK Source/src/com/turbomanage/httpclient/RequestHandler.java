// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

// Referenced classes of package com.turbomanage.httpclient:
//            HttpRequestException, HttpMethod

public interface RequestHandler
{

    public static final String UTF8 = "UTF-8";

    public abstract boolean onError(HttpRequestException httprequestexception);

    public abstract HttpURLConnection openConnection(String s)
        throws IOException;

    public abstract void prepareConnection(HttpURLConnection httpurlconnection, HttpMethod httpmethod, String s)
        throws IOException;

    public abstract byte[] readStream(InputStream inputstream)
        throws IOException;

    public abstract void writeStream(OutputStream outputstream, byte abyte0[])
        throws IOException;
}
