// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import com.turbomanage.httpclient.BasicRequestHandler;
import com.turbomanage.httpclient.HttpRequestException;
import com.turbomanage.httpclient.HttpResponse;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            HostnameVerifierVerbose

public class RequestHandlerError extends BasicRequestHandler
{

    public boolean m_verification_error;
    public TrustDefenderMobile.THMStatusCode statusCode;
    HostnameVerifierVerbose v;

    public RequestHandlerError()
    {
        statusCode = TrustDefenderMobile.THMStatusCode.THM_OK;
        m_verification_error = false;
        v = new HostnameVerifierVerbose(this);
    }

    public boolean onError(HttpRequestException httprequestexception)
    {
        HttpResponse httpresponse = httprequestexception.getHttpResponse();
        httprequestexception.printStackTrace();
        if (httpresponse != null && httpresponse.getStatus() > 0)
        {
            return true;
        }
        if (m_verification_error)
        {
            statusCode = TrustDefenderMobile.THMStatusCode.THM_HostVerification_Error;
        } else
        if (httprequestexception.getCause() instanceof UnknownHostException)
        {
            statusCode = TrustDefenderMobile.THMStatusCode.THM_HostNotFound_Error;
        } else
        if (httprequestexception.getCause() instanceof SocketTimeoutException)
        {
            statusCode = TrustDefenderMobile.THMStatusCode.THM_NetworkTimeout_Error;
        } else
        {
            statusCode = TrustDefenderMobile.THMStatusCode.THM_Connection_Error;
        }
        return false;
    }

    public HttpURLConnection openConnection(String s)
        throws IOException
    {
        s = (HttpURLConnection)(new URL(s)).openConnection();
        if (s instanceof HttpsURLConnection)
        {
            ((HttpsURLConnection)s).setHostnameVerifier(v);
        }
        return s;
    }
}
