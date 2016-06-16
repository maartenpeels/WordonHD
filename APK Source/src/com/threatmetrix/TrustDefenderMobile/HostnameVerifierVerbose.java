// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            RequestHandlerError

public class HostnameVerifierVerbose
    implements HostnameVerifier
{

    private RequestHandlerError requestHandler;

    public HostnameVerifierVerbose(RequestHandlerError requesthandlererror)
    {
        requestHandler = requesthandlererror;
    }

    public boolean verify(String s, SSLSession sslsession)
    {
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(s, sslsession))
        {
            requestHandler.m_verification_error = true;
            return false;
        } else
        {
            return true;
        }
    }
}
