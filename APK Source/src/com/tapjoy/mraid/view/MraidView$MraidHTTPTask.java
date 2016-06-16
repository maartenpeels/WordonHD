// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.os.AsyncTask;
import com.tapjoy.TapjoyHttpURLResponse;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyURLConnection;
import com.tapjoy.mraid.listener.MraidViewListener;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

private class <init> extends AsyncTask
{

    TapjoyHttpURLResponse httpResult;
    TapjoyURLConnection tapjoyConnection;
    final MraidView this$0;
    String url;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient Void doInBackground(String as[])
    {
        url = as[0];
        try
        {
            tapjoyConnection = new TapjoyURLConnection();
            httpResult = tapjoyConnection.getResponseFromURL(url);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
        }
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        if (httpResult.statusCode == 0 || httpResult.response == null)
        {
            TapjoyLog.e("MRAIDView", "Connection not properly established");
            if (MraidView.access$300(MraidView.this) != null)
            {
                MraidView.access$300(MraidView.this).onReceivedError(MraidView.this, 0, "Connection not properly established", url);
                return;
            }
            break MISSING_BLOCK_LABEL_198;
        }
        try
        {
            if (httpResult.statusCode == 302 && httpResult.redirectURL != null && httpResult.redirectURL.length() > 0)
            {
                TapjoyLog.i("MRAIDView", (new StringBuilder()).append("302 redirectURL detected: ").append(httpResult.redirectURL).toString());
                loadUrlStandard(httpResult.redirectURL);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Void void1)
        {
            TapjoyLog.w("MRAIDView", (new StringBuilder()).append("error in loadURL ").append(void1).toString());
            void1.printStackTrace();
            return;
        }
        loadDataWithBaseURL(url, httpResult.response, "text/html", "utf-8", url);
    }

    private ()
    {
        this$0 = MraidView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
