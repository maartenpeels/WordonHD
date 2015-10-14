// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Locale;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.urbanairship.restclient:
//            Response, AsyncHandler

public class Request extends HttpEntityEnclosingRequestBase
{

    public static boolean a = true;
    String b;
    DefaultHttpClient c;
    File d;

    public Request(String s, String s1)
    {
        b = s;
        setURI(URI.create(s1));
        params = new BasicHttpParams();
        c = new DefaultHttpClient(params);
        HttpConnectionParams.setSocketBufferSize(params, 16384);
        HttpConnectionParams.setConnectionTimeout(params, 60000);
        s = String.format(Locale.US, "%s (%s; %s; %s; %s; %s)", new Object[] {
            UAirship.b(), Build.MODEL, android.os.Build.VERSION.RELEASE, (new StringBuilder("UrbanAirshipLib/")).append(UAirship.j()).toString(), UAirship.a().h().b(), Locale.getDefault()
        });
        HttpProtocolParams.setUserAgent(params, s);
        Logger.b((new StringBuilder("Set Timeout: ")).append(HttpConnectionParams.getConnectionTimeout(c.getParams())).toString());
        Logger.b((new StringBuilder("Set Socket Buffer Size: ")).append(HttpConnectionParams.getSocketBufferSize(c.getParams())).toString());
    }

    public final Response a()
    {
        Response response;
        try
        {
            response = new Response(c.execute(this));
        }
        catch (IOException ioexception)
        {
            Logger.e((new StringBuilder("IOException when executing request. Do you have permission to access the internet? (")).append(ioexception.getMessage()).append(")").toString());
            return null;
        }
        return response;
    }

    public final void a(AsyncHandler asynchandler)
    {
        (new Handler(Looper.getMainLooper())).post(new _cls1(asynchandler, this));
    }

    public final void a(String s, String s1)
    {
        s = new UsernamePasswordCredentials(s, s1);
        try
        {
            addHeader((new BasicScheme()).authenticate(s, this));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Logger.c("Attempted to set invalid or non-applicable request credentials", s);
        }
    }

    public String getMethod()
    {
        return b;
    }


    private class _cls1
        implements Runnable
    {

        final AsyncHandler a;
        final Request b;
        final Request c;

        public void run()
        {
            try
            {
                (c. new BackgroundRequest(a)).execute(new Request[] {
                    b
                });
                return;
            }
            catch (Exception exception)
            {
                Logger.c("Unable to execute request.", exception);
            }
        }

        _cls1(AsyncHandler asynchandler, Request request1)
        {
            c = Request.this;
            a = asynchandler;
            b = request1;
            super();
        }

        private class BackgroundRequest extends AsyncTask
        {

            final Request a;
            private final AsyncHandler b;

            private transient Response a(Request arequest[])
            {
                int i;
                i = 0;
                if (arequest.length > 1)
                {
                    throw new RuntimeException("Background Request only handles executing one Request at a time ");
                }
                arequest = arequest[0];
                Response response = arequest.a();
                arequest = response;
                if (response == null) goto _L2; else goto _L1
_L1:
                if (a.d == null) goto _L4; else goto _L3
_L3:
                FileOutputStream fileoutputstream;
                byte abyte0[];
                long l;
                a.d.getParentFile().mkdirs();
                l = response.b();
                arequest = response.c();
                fileoutputstream = new FileOutputStream(a.d);
                abyte0 = new byte[8192];
_L7:
                int j = arequest.read(abyte0);
                if (j == -1) goto _L6; else goto _L5
_L5:
                i += j;
                fileoutputstream.write(abyte0, 0, j);
                publishProgress(new Integer[] {
                    Integer.valueOf((int)(((float)i / (float)l) * 100F))
                });
                  goto _L7
                arequest;
                Logger.a(arequest);
                arequest = null;
_L2:
                return arequest;
_L6:
                fileoutputstream.flush();
                arequest.close();
                fileoutputstream.close();
                return response;
_L4:
                arequest = response;
                if (response.b() >= 0x100000L) goto _L2; else goto _L8
_L8:
                response.d();
                return response;
            }

            protected Object doInBackground(Object aobj[])
            {
                return a((Request[])aobj);
            }

            protected void onPostExecute(Object obj)
            {
                obj = (Response)obj;
                if (obj != null)
                {
                    b.a(((Response) (obj)));
                    return;
                } else
                {
                    b.a(new Exception("Error when executing request."));
                    return;
                }
            }

            protected void onProgressUpdate(Object aobj[])
            {
                aobj = ((Integer[])aobj)[0];
                b.a(((Integer) (aobj)).intValue());
            }

            public BackgroundRequest(AsyncHandler asynchandler)
            {
                a = Request.this;
                super();
                b = asynchandler;
            }
        }

    }

}
