// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc, az

class a
    implements Runnable
{

    final String a;
    final b b;

    public void run()
    {
        bc.a(b.b, a, b.b, b.b);
    }

    Logging(Logging logging, String s)
    {
        b = logging;
        a = s;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/impl/bc$1

/* anonymous class */
    class bc._cls1
        implements Runnable
    {

        final String a;
        final Activity b;
        final com.chartboost.sdk.c.b c;
        final bc d;

        public void a(String s)
        {
            s = new bc._cls1._cls1(this, s);
            if (b != null)
            {
                b.runOnUiThread(s);
                return;
            } else
            {
                CBUtility.e().post(s);
                return;
            }
        }

        public void run()
        {
            Object obj;
            Object obj2;
            obj = a;
            obj2 = obj;
            if (!az.a().c()) goto _L2; else goto _L1
_L1:
            obj2 = null;
            Object obj1 = (HttpURLConnection)(new URL(a)).openConnection();
            ((HttpURLConnection) (obj1)).setInstanceFollowRedirects(false);
            ((HttpURLConnection) (obj1)).setConnectTimeout(30000);
            ((HttpURLConnection) (obj1)).setReadTimeout(30000);
            obj2 = ((HttpURLConnection) (obj1)).getHeaderField("Location");
            if (obj2 != null)
            {
                obj = obj2;
            }
            obj2 = obj;
            if (obj1 == null) goto _L2; else goto _L3
_L3:
            ((HttpURLConnection) (obj1)).disconnect();
_L8:
            a(((String) (obj)));
            return;
            Exception exception;
            exception;
            obj1 = obj2;
            obj2 = exception;
_L6:
            CBLogging.b("CBURLOpener", "Exception raised while opening a HTTP Conection", ((Throwable) (obj2)));
            obj2 = obj;
            if (obj1 != null)
            {
                ((HttpURLConnection) (obj1)).disconnect();
                continue; /* Loop/switch isn't completed */
            }
            break; /* Loop/switch isn't completed */
            obj;
            obj1 = null;
_L5:
            if (obj1 != null)
            {
                ((HttpURLConnection) (obj1)).disconnect();
            }
            throw obj;
            obj;
            continue; /* Loop/switch isn't completed */
            obj;
            if (true) goto _L5; else goto _L4
_L4:
            obj2;
            if (true) goto _L6; else goto _L2
_L2:
            obj = obj2;
            if (true) goto _L8; else goto _L7
_L7:
        }

            
            {
                d = bc1;
                a = s;
                b = activity;
                c = b1;
                super();
            }
    }

}
