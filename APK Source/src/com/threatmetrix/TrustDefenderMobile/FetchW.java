// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.util.Log;
import com.turbomanage.httpclient.HttpResponse;
import com.turbomanage.httpclient.ParameterMap;
import com.turbomanage.httpclient.RequestLogger;
import com.turbomanage.httpclient.android.AndroidHttpClient;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            RequestHandlerError, TrustDefenderMobile

class FetchW
    implements Runnable
{

    static final String TAG = com/threatmetrix/TrustDefenderMobile/FetchW.getName();
    String fp_server;
    StringBuilder ip_addy;
    String org_id;
    RequestHandlerError requestHandler;
    String session_id;
    TrustDefenderMobile.THMStatusCode statusCode;
    int timeout;

    public FetchW(String s, String s1, String s2, int i, StringBuilder stringbuilder)
    {
        session_id = null;
        org_id = null;
        fp_server = null;
        timeout = 10000;
        ip_addy = null;
        requestHandler = null;
        org_id = s1;
        fp_server = s;
        timeout = i;
        ip_addy = stringbuilder;
        session_id = s2;
        statusCode = TrustDefenderMobile.THMStatusCode.THM_OK;
        requestHandler = new RequestHandlerError();
    }

    public void run()
    {
        Object obj;
        obj = new AndroidHttpClient((new StringBuilder("https://")).append(fp_server).toString(), requestHandler);
        ParameterMap parametermap = ((AndroidHttpClient) (obj)).newParams();
        parametermap.add("org_id", org_id);
        parametermap.add("session_id", session_id);
        ((AndroidHttpClient) (obj)).setConnectionTimeout(timeout);
        ((AndroidHttpClient) (obj)).setReadTimeout(timeout);
        ((AndroidHttpClient) (obj)).setRequestLogger(new RequestLogger() {

            final FetchW this$0;

            public final boolean isLoggingEnabled()
            {
                return false;
            }

            public final void log(String s1)
            {
            }

            public final void logRequest(HttpURLConnection httpurlconnection, Object obj2)
                throws IOException
            {
            }

            public final void logResponse(HttpResponse httpresponse)
            {
            }

            
            {
                this$0 = FetchW.this;
                super();
            }
        });
        obj = ((AndroidHttpClient) (obj)).get("/fp/ls_fp.html", parametermap);
        if (obj == null)
        {
            String s;
            try
            {
                statusCode = requestHandler.statusCode;
                Log.w(TAG, (new StringBuilder("Failed to fetch w: ")).append(statusCode.toString()).toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                s = TAG;
            }
            break MISSING_BLOCK_LABEL_188;
        }
        if (((HttpResponse) (obj)).getStatus() >= 400)
        {
            Log.w(TAG, (new StringBuilder("W fetch error: ")).append(((HttpResponse) (obj)).getStatus()).toString());
            statusCode = TrustDefenderMobile.THMStatusCode.THM_Connection_Error;
            return;
        }
        break MISSING_BLOCK_LABEL_190;
        throw obj;
        Object obj1 = ((HttpResponse) (obj)).getBodyAsString();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        if (((String) (obj1)).length() >= "<body></body><script>var".length())
        {
            break MISSING_BLOCK_LABEL_245;
        }
        Log.w(TAG, (new StringBuilder("W fetch empty: ")).append(((HttpResponse) (obj)).getStatus()).toString());
        statusCode = TrustDefenderMobile.THMStatusCode.THM_Connection_Error;
        return;
        if (!((String) (obj1)).regionMatches(true, 0, "<body></body><script>var", 0, "<body></body><script>var".length()))
        {
            Log.w(TAG, (new StringBuilder("W fetch parse error: ")).append(((HttpResponse) (obj)).getStatus()).toString());
            statusCode = TrustDefenderMobile.THMStatusCode.THM_Connection_Error;
            return;
        }
        obj1 = Pattern.compile("='(.*?)'").matcher(((CharSequence) (obj1)));
        int i = 0;
_L2:
        if (i >= 4)
        {
            break MISSING_BLOCK_LABEL_354;
        }
        if (!((Matcher) (obj1)).find())
        {
            Log.w(TAG, (new StringBuilder("W fetch find error: ")).append(((HttpResponse) (obj)).getStatus()).toString());
            statusCode = TrustDefenderMobile.THMStatusCode.THM_Connection_Error;
            return;
        }
        break MISSING_BLOCK_LABEL_371;
        ip_addy.append(TrustDefenderMobile.convertFromOctal(((Matcher) (obj1)).group(1)));
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
