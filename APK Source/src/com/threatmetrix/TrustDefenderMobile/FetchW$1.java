// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import com.turbomanage.httpclient.HttpResponse;
import com.turbomanage.httpclient.RequestLogger;
import java.io.IOException;
import java.net.HttpURLConnection;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            FetchW

final class this._cls0
    implements RequestLogger
{

    final FetchW this$0;

    public final boolean isLoggingEnabled()
    {
        return false;
    }

    public final void log(String s)
    {
    }

    public final void logRequest(HttpURLConnection httpurlconnection, Object obj)
        throws IOException
    {
    }

    public final void logResponse(HttpResponse httpresponse)
    {
    }

    ()
    {
        this$0 = FetchW.this;
        super();
    }
}
