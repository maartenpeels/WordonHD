// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient.android;

import com.turbomanage.httpclient.AsyncHttpClient;
import com.turbomanage.httpclient.RequestHandler;

// Referenced classes of package com.turbomanage.httpclient.android:
//            AsyncTaskFactory

public class AndroidHttpClient extends AsyncHttpClient
{

    public AndroidHttpClient()
    {
        this("");
    }

    public AndroidHttpClient(String s)
    {
        super(new AsyncTaskFactory(), s);
    }

    public AndroidHttpClient(String s, RequestHandler requesthandler)
    {
        super(new AsyncTaskFactory(), s, requesthandler);
    }

    private static void disableConnectionReuseIfNecessary()
    {
        if (Integer.parseInt(android.os.Build.VERSION.SDK) < 8)
        {
            System.setProperty("http.keepAlive", "false");
        }
    }

    static 
    {
        if (Integer.parseInt(android.os.Build.VERSION.SDK) < 8)
        {
            System.setProperty("http.keepAlive", "false");
        }
    }
}
