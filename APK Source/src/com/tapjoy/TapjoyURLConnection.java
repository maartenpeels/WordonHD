// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyHttpURLResponse, TapjoyUtil

public class TapjoyURLConnection
{

    private static final String TAG = "TapjoyURLConnection";
    public static final int TYPE_GET = 0;
    public static final int TYPE_POST = 1;
    public static boolean unitTestMode = false;

    public TapjoyURLConnection()
    {
    }

    public String getContentLength(String s)
    {
        Object obj = null;
        try
        {
            s = s.replaceAll(" ", "%20");
            TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("requestURL: ").append(s).toString());
            s = (HttpURLConnection)(new URL(s)).openConnection();
            s.setConnectTimeout(15000);
            s.setReadTimeout(30000);
            s = s.getHeaderField("content-length");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(s.toString()).toString());
            s = obj;
        }
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("content-length: ").append(s).toString());
        return s;
    }

    public TapjoyHttpURLResponse getRedirectFromURL(String s)
    {
        return getResponseFromURL(s, "", 0, true);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s)
    {
        return getResponseFromURL(s, "", 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1)
    {
        return getResponseFromURL(s, s1, 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1, int i)
    {
        return getResponseFromURL(s, s1, i, false);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1, int i, boolean flag)
    {
        Object obj;
        String s2;
        Object obj19;
        String s3;
        Object obj20;
        Object obj21;
        Object obj22;
        Object obj23;
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
        tapjoyhttpurlresponse = new TapjoyHttpURLResponse();
        obj22 = null;
        obj19 = null;
        obj21 = null;
        obj23 = null;
        s3 = null;
        obj20 = null;
        obj = obj22;
        s2 = obj21;
        Object obj1 = s3;
        s1 = (new StringBuilder()).append(s).append(s1).toString();
        obj = obj22;
        s2 = obj21;
        Object obj2 = s3;
        StringBuilder stringbuilder = (new StringBuilder()).append("http ");
        Object obj3;
        if (i == 0)
        {
            s = "get";
        } else
        {
            s = "post";
        }
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        TapjoyLog.i("TapjoyURLConnection", stringbuilder.append(s).append(": ").append(s1).toString());
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        if (!unitTestMode) goto _L2; else goto _L1
_L1:
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        s = new DefaultHttpClient();
        if (i != 1) goto _L4; else goto _L3
_L3:
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        s = s.execute(new HttpPost(s1));
_L16:
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        tapjoyhttpurlresponse.statusCode = s.getStatusLine().getStatusCode();
        obj = obj22;
        s2 = obj21;
        obj3 = s3;
        s = new BufferedReader(new InputStreamReader(s.getEntity().getContent()));
        s1 = ((String) (obj19));
_L18:
        obj19 = obj20;
        if (flag) goto _L6; else goto _L5
_L5:
        obj = s1;
        s2 = s;
        obj3 = s3;
        obj19 = new StringBuilder();
_L9:
        obj = s.readLine();
        if (obj == null) goto _L8; else goto _L7
_L7:
        ((StringBuilder) (obj19)).append((new StringBuilder()).append(((String) (obj))).append('\n').toString());
          goto _L9
        obj;
        obj3 = obj19;
_L22:
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(((Exception) (obj)).toString()).toString());
        if (s1 == null) goto _L11; else goto _L10
_L10:
        if (tapjoyhttpurlresponse.response != null) goto _L11; else goto _L12
_L12:
        s = new BufferedReader(new InputStreamReader(s1.getErrorStream()));
        s1 = new StringBuilder();
_L15:
        obj = s.readLine();
        if (obj == null) goto _L14; else goto _L13
_L13:
        s1.append((new StringBuilder()).append(((String) (obj))).append('\n').toString());
          goto _L15
        s;
_L23:
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception trying to get error code/content: ").append(s.toString()).toString());
_L11:
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("response status: ").append(tapjoyhttpurlresponse.statusCode).toString());
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("response size: ").append(tapjoyhttpurlresponse.contentLength).toString());
        TapjoyLog.v("TapjoyURLConnection", "response: ");
        TapjoyLog.v("TapjoyURLConnection", (new StringBuilder()).append("").append(tapjoyhttpurlresponse.response).toString());
        if (tapjoyhttpurlresponse.redirectURL != null && tapjoyhttpurlresponse.redirectURL.length() > 0)
        {
            TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("redirectURL: ").append(tapjoyhttpurlresponse.redirectURL).toString());
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        return tapjoyhttpurlresponse;
_L4:
        obj = obj22;
        s2 = obj21;
        Object obj4 = s3;
        s = s.execute(new HttpGet(s1));
          goto _L16
_L2:
        obj = obj22;
        s2 = obj21;
        Object obj5 = s3;
        obj19 = (HttpURLConnection)(new URL(s1)).openConnection();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_715;
        }
        obj = obj19;
        s2 = obj21;
        Object obj6 = s3;
        ((HttpURLConnection) (obj19)).setInstanceFollowRedirects(false);
        obj = obj19;
        s2 = obj21;
        Object obj7 = s3;
        ((HttpURLConnection) (obj19)).setConnectTimeout(15000);
        obj = obj19;
        s2 = obj21;
        Object obj8 = s3;
        ((HttpURLConnection) (obj19)).setReadTimeout(30000);
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_779;
        }
        obj = obj19;
        s2 = obj21;
        Object obj9 = s3;
        ((HttpURLConnection) (obj19)).setRequestMethod("POST");
        obj = obj19;
        s2 = obj21;
        Object obj10 = s3;
        ((HttpURLConnection) (obj19)).connect();
        obj = obj19;
        s2 = obj21;
        Object obj11 = s3;
        tapjoyhttpurlresponse.statusCode = ((HttpURLConnection) (obj19)).getResponseCode();
        obj = obj19;
        s2 = obj21;
        Object obj12 = s3;
        tapjoyhttpurlresponse.headerFields = ((HttpURLConnection) (obj19)).getHeaderFields();
        s1 = ((String) (obj19));
        s = obj23;
        if (flag) goto _L18; else goto _L17
_L17:
        obj = obj19;
        s2 = obj21;
        Object obj13 = s3;
        s = new BufferedReader(new InputStreamReader(((HttpURLConnection) (obj19)).getInputStream()));
        s1 = ((String) (obj19));
          goto _L18
_L8:
        tapjoyhttpurlresponse.response = ((StringBuilder) (obj19)).toString();
_L6:
        obj = s1;
        s2 = s;
        Object obj14 = obj19;
        if (tapjoyhttpurlresponse.statusCode != 302)
        {
            break MISSING_BLOCK_LABEL_941;
        }
        obj = s1;
        s2 = s;
        Object obj15 = obj19;
        tapjoyhttpurlresponse.redirectURL = s1.getHeaderField("Location");
        obj = s1;
        s2 = s;
        Object obj16 = obj19;
        s3 = s1.getHeaderField("content-length");
        if (s3 == null) goto _L20; else goto _L19
_L19:
        tapjoyhttpurlresponse.contentLength = Integer.valueOf(s3).intValue();
_L20:
        if (s == null) goto _L11; else goto _L21
_L21:
        obj = s1;
        s2 = s;
        Object obj17 = obj19;
        s.close();
          goto _L11
        Exception exception;
        exception;
        obj = s1;
        s2 = s;
        Object obj18 = obj19;
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(exception.toString()).toString());
          goto _L20
        s;
        s1 = ((String) (obj));
        obj = s;
        s = s2;
          goto _L22
_L14:
        tapjoyhttpurlresponse.response = s1.toString();
          goto _L11
        s;
          goto _L23
        s;
          goto _L23
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, Map map)
    {
        return getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, Map map, int i)
    {
        return getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), i);
    }

}
