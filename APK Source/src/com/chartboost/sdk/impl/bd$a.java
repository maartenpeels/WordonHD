// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.b;
import com.chartboost.sdk.Libraries.h;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.chartboost.sdk.impl:
//            bd, ay, ce

private class b
    implements Runnable
{

    final bd a;
    private String b;
    private final WeakReference c;
    private CBUtility.a d;
    private String e;
    private Bundle f;

    static WeakReference a(b b1)
    {
        return b1.c;
    }

    private com.chartboost.sdk.Libraries. b()
    {
        return (com.chartboost.sdk.Libraries.)com.chartboost.sdk.impl.bd.b(a).get(e);
    }

    static e b(e e1)
    {
        return e1.d;
    }

    static Bundle c(d d1)
    {
        return d1.f;
    }

    public void a()
    {
        com.chartboost.sdk.Libraries.  = b();
        if ( != null && c != null && c.get() != null && this == bd.a((ImageView)c.get()))
        {
            .();
        }
        CBUtility.e().post(new Runnable() {

            final com.chartboost.sdk.Libraries.j.a a;
            final bd.a b;

            public void run()
            {
                if (bd.a.a(b) != null)
                {
                    ImageView imageview = (ImageView)bd.a.a(b).get();
                    bd.a a1 = bd.a(imageview);
                    if (a != null && b == a1)
                    {
                        imageview.setImageBitmap(a.a());
                    }
                }
                if (com.chartboost.sdk.impl.bd.a.b(b) != null)
                {
                    com.chartboost.sdk.impl.bd.a.b(b).a(a, bd.a.c(b));
                }
            }

            
            {
                b = bd.a.this;
                a = a2;
                super();
            }
        });
    }

    public void run()
    {
        Object obj;
        byte abyte0[];
        HttpGet httpget;
        abyte0 = null;
        if (bd.a(a, e))
        {
            a();
            return;
        }
        obj = com.chartboost.sdk.impl.ay.b();
        httpget = new HttpGet(b);
        CBLogging.a("CBWebImageCache", (new StringBuilder()).append("downloading image to cache... ").append(b).toString());
        obj = ((HttpClient) (obj)).execute(httpget);
        int i = ((HttpResponse) (obj)).getStatusLine().getStatusCode();
        if (i == 200) goto _L2; else goto _L1
_L1:
        CBLogging.d("CBWebImageCache:ImageDownloader", (new StringBuilder()).append("Error ").append(i).append(" while retrieving bitmap from ").append(b).toString());
        CBUtility.a(((HttpResponse) (obj)));
        a();
        return;
        Object obj1;
        obj1;
_L13:
        httpget.abort();
        CBUtility.a(((HttpResponse) (obj)));
        CBLogging.d("CBWebImageCache", (new StringBuilder()).append("I/O error while retrieving bitmap from ").append(b).toString(), ((Throwable) (obj1)));
_L4:
        a();
        return;
_L2:
        HttpEntity httpentity = ((HttpResponse) (obj)).getEntity();
        if (httpentity == null) goto _L4; else goto _L3
_L3:
        obj1 = httpentity.getContent();
        abyte0 = com.chartboost.sdk.impl.ce.b(((InputStream) (obj1)));
        String s = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(abyte0));
        if (!s.equals(e))
        {
            e = s;
            CBLogging.b("CBWebImageCache:ImageDownloader", (new StringBuilder()).append("Error: checksum did not match while downloading from ").append(b).toString());
        }
        bd.a(a).a(String.format("%s%s", new Object[] {
            e, ".png"
        }), abyte0);
        com.chartboost.sdk.impl.bd.b(a, e);
        if (obj1 == null) goto _L6; else goto _L5
_L5:
        ((InputStream) (obj1)).close();
          goto _L4
        obj1;
_L12:
        httpget.abort();
        CBUtility.a(((HttpResponse) (obj)));
        CBLogging.d("CBWebImageCache", (new StringBuilder()).append("Incorrect URL: ").append(b).toString(), ((Throwable) (obj1)));
          goto _L4
_L6:
        CBUtility.a(httpentity);
          goto _L4
        obj1;
_L11:
        httpget.abort();
        CBUtility.a(((HttpResponse) (obj)));
        CBLogging.d("CBWebImageCache", (new StringBuilder()).append("Error while retrieving bitmap from ").append(b).toString(), ((Throwable) (obj1)));
          goto _L4
        Exception exception1;
        exception1;
        Exception exception;
        obj1 = abyte0;
        exception = exception1;
_L14:
        if (obj1 == null) goto _L8; else goto _L7
_L7:
        ((InputStream) (obj1)).close();
_L10:
        throw exception;
_L8:
        CBUtility.a(httpentity);
        if (true) goto _L10; else goto _L9
_L9:
        obj1;
        obj = null;
          goto _L11
        obj1;
        obj = null;
          goto _L12
        obj1;
        obj = null;
          goto _L13
        exception;
          goto _L14
    }

    public wable(bd bd1, ImageView imageview, _cls1.a a1, String s, Bundle bundle, String s1)
    {
        a = bd1;
        super();
        c = new WeakReference(imageview);
        bd1 = new <init>(this);
        if (imageview != null)
        {
            imageview.setImageDrawable(bd1);
        }
        e = s;
        d = a1;
        f = bundle;
        b = s1;
    }
}
