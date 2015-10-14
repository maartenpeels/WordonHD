// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.b;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.chartboost.sdk.impl:
//            ay, az

public final class bc
{
    public static interface a
    {

        public abstract void a(com.chartboost.sdk.Model.a a1, boolean flag, String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror, com.chartboost.sdk.c.b b1);
    }


    private static bc c;
    private a a;
    private com.chartboost.sdk.Model.a b;

    private bc(a a1)
    {
        a = a1;
    }

    public static bc a(a a1)
    {
        if (c == null)
        {
            c = new bc(a1);
        }
        return c;
    }

    static void a(bc bc1, String s, Context context, com.chartboost.sdk.c.b b1)
    {
        bc1.a(s, context, b1);
    }

    private void a(String s, Context context, com.chartboost.sdk.c.b b1)
    {
        if (b != null && b.a())
        {
            b.b = com.chartboost.sdk.Model.a.b.f;
        }
        if (context == null)
        {
            context = com.chartboost.sdk.b.l();
        }
        if (context != null) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.a(b, false, s, com.chartboost.sdk.Model.CBError.CBClickError.NO_HOST_ACTIVITY, b1);
        }
_L3:
        return;
_L2:
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!(context instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        intent.setData(Uri.parse(s));
        context.startActivity(intent);
_L6:
        if (a != null)
        {
            a.a(b, true, s, null, b1);
            return;
        }
          goto _L3
        Exception exception;
        exception;
        if (!s.startsWith("market://")) goto _L5; else goto _L4
_L4:
        Object obj = (new StringBuilder()).append("http://market.android.com/").append(s.substring(9)).toString();
        s = new Intent("android.intent.action.VIEW");
        if (!(context instanceof Activity))
        {
            s.addFlags(0x10000000);
        }
        s.setData(Uri.parse(((String) (obj))));
        context.startActivity(s);
        s = ((String) (obj));
          goto _L6
        obj;
        context = s;
        s = ((String) (obj));
_L7:
        CBLogging.b("CBURLOpener", "Exception raised openeing an inavld playstore URL", s);
        if (a != null)
        {
            a.a(b, false, context, com.chartboost.sdk.Model.CBError.CBClickError.URI_UNRECOGNIZED, b1);
            return;
        }
          goto _L3
_L5:
        if (a != null)
        {
            a.a(b, false, s, com.chartboost.sdk.Model.CBError.CBClickError.URI_UNRECOGNIZED, b1);
        }
          goto _L6
        s;
        context = ((Context) (obj));
          goto _L7
    }

    public static boolean a(String s)
    {
        Context context = com.chartboost.sdk.b.l();
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!(context instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        intent.setData(Uri.parse(s));
        return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
    }

    public void a(com.chartboost.sdk.Model.a a1, String s, Activity activity, com.chartboost.sdk.c.b b1)
    {
        b = a1;
        Object obj = new URI(s);
        obj = ((URI) (obj)).getScheme();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        if (a != null)
        {
            a.a(a1, false, s, com.chartboost.sdk.Model.CBError.CBClickError.URI_INVALID, b1);
        }
_L2:
        return;
        activity;
        if (a == null) goto _L2; else goto _L1
_L1:
        a.a(a1, false, s, com.chartboost.sdk.Model.CBError.CBClickError.URI_INVALID, b1);
        return;
        if (!((String) (obj)).equals("http") && !((String) (obj)).equals("https"))
        {
            a(s, ((Context) (activity)), b1);
            return;
        } else
        {
            a1 = new Runnable(s, activity, b1) {

                final String a;
                final Activity b;
                final com.chartboost.sdk.c.b c;
                final bc d;

                public void a(String s1)
                {
                    s1 = new Runnable(this, s1) {

                        final String a;
                        final _cls1 b;

                        public void run()
                        {
                            com.chartboost.sdk.impl.bc.a(b.d, a, b.b, b.c);
                        }

            
            {
                b = _pcls1;
                a = s;
                super();
            }
                    };
                    if (b != null)
                    {
                        b.runOnUiThread(s1);
                        return;
                    } else
                    {
                        CBUtility.e().post(s1);
                        return;
                    }
                }

                public void run()
                {
                    Object obj1;
                    Object obj3;
                    obj1 = a;
                    obj3 = obj1;
                    if (!com.chartboost.sdk.impl.az.a().c()) goto _L2; else goto _L1
_L1:
                    obj3 = null;
                    Object obj2 = (HttpURLConnection)(new URL(a)).openConnection();
                    ((HttpURLConnection) (obj2)).setInstanceFollowRedirects(false);
                    ((HttpURLConnection) (obj2)).setConnectTimeout(30000);
                    ((HttpURLConnection) (obj2)).setReadTimeout(30000);
                    obj3 = ((HttpURLConnection) (obj2)).getHeaderField("Location");
                    if (obj3 != null)
                    {
                        obj1 = obj3;
                    }
                    obj3 = obj1;
                    if (obj2 == null) goto _L2; else goto _L3
_L3:
                    ((HttpURLConnection) (obj2)).disconnect();
_L8:
                    a(((String) (obj1)));
                    return;
                    Exception exception;
                    exception;
                    obj2 = obj3;
                    obj3 = exception;
_L6:
                    CBLogging.b("CBURLOpener", "Exception raised while opening a HTTP Conection", ((Throwable) (obj3)));
                    obj3 = obj1;
                    if (obj2 != null)
                    {
                        ((HttpURLConnection) (obj2)).disconnect();
                        continue; /* Loop/switch isn't completed */
                    }
                    break; /* Loop/switch isn't completed */
                    obj1;
                    obj2 = null;
_L5:
                    if (obj2 != null)
                    {
                        ((HttpURLConnection) (obj2)).disconnect();
                    }
                    throw obj1;
                    obj1;
                    continue; /* Loop/switch isn't completed */
                    obj1;
                    if (true) goto _L5; else goto _L4
_L4:
                    obj3;
                    if (true) goto _L6; else goto _L2
_L2:
                    obj1 = obj3;
                    if (true) goto _L8; else goto _L7
_L7:
                }

            
            {
                d = bc.this;
                a = s;
                b = activity;
                c = b1;
                super();
            }
            };
            com.chartboost.sdk.impl.ay.a().execute(a1);
            return;
        }
    }
}
