// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.IOException;
import java.net.HttpURLConnection;

// Referenced classes of package com.turbomanage.httpclient:
//            HttpResponse

public interface RequestLogger
{

    public abstract boolean isLoggingEnabled();

    public abstract void log(String s);

    public abstract void logRequest(HttpURLConnection httpurlconnection, Object obj)
        throws IOException;

    public abstract void logResponse(HttpResponse httpresponse);
}
