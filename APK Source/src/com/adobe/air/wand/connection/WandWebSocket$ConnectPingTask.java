// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import android.app.Activity;
import android.os.AsyncTask;
import java.io.File;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.adobe.air.wand.connection:
//            WandWebSocket

private class <init> extends AsyncTask
{

    final WandWebSocket this$0;

    protected transient Long doInBackground(String as[])
    {
        if (as == null || as.length < 1)
        {
            return Long.valueOf(0L);
        }
        try
        {
            as = new HttpGet(as[0]);
            if ((new DefaultHttpClient()).execute(as).getStatusLine().getStatusCode() == 200)
            {
                (new File(WandWebSocket.access$1000(WandWebSocket.this).getFilesDir(), "connectPingFlag")).createNewFile();
            }
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            return Long.valueOf(-1L);
        }
        return Long.valueOf(0L);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Long long1)
    {
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Long)obj);
    }

    protected transient void onProgressUpdate(Integer ainteger[])
    {
    }

    protected volatile void onProgressUpdate(Object aobj[])
    {
        onProgressUpdate((Integer[])aobj);
    }

    private A()
    {
        this$0 = WandWebSocket.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
