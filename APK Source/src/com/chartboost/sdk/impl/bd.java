// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.h;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.chartboost.sdk.impl:
//            ay, ce

public final class bd
{
    private class a
        implements Runnable
    {

        final bd a;
        private String b;
        private final WeakReference c;
        private b d;
        private String e;
        private Bundle f;

        static WeakReference a(a a1)
        {
            return a1.c;
        }

        private com.chartboost.sdk.Libraries.j.a b()
        {
            return (com.chartboost.sdk.Libraries.j.a)bd.b(a).get(e);
        }

        static b b(a a1)
        {
            return a1.d;
        }

        static Bundle c(a a1)
        {
            return a1.f;
        }

        public void a()
        {
            com.chartboost.sdk.Libraries.j.a a1 = b();
            if (a1 != null && c != null && c.get() != null && this == bd.a((ImageView)c.get()))
            {
                a1.b();
            }
            CBUtility.e().post(new Runnable(this, a1) {

                final com.chartboost.sdk.Libraries.j.a a;
                final a b;

                public void run()
                {
                    if (a.a(b) != null)
                    {
                        ImageView imageview = (ImageView)a.a(b).get();
                        a a1 = bd.a(imageview);
                        if (a != null && b == a1)
                        {
                            imageview.setImageBitmap(a.a());
                        }
                    }
                    if (a.b(b) != null)
                    {
                        a.b(b).a(a, a.c(b));
                    }
                }

            
            {
                b = a1;
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
            obj = ay.b();
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
            abyte0 = ce.b(((InputStream) (obj1)));
            String s = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(abyte0));
            if (!s.equals(e))
            {
                e = s;
                CBLogging.b("CBWebImageCache:ImageDownloader", (new StringBuilder()).append("Error: checksum did not match while downloading from ").append(b).toString());
            }
            bd.a(a).a(String.format("%s%s", new Object[] {
                e, ".png"
            }), abyte0);
            bd.b(a, e);
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

        public a(ImageView imageview, b b1, String s, Bundle bundle, String s1)
        {
            a = bd.this;
            super();
            c = new WeakReference(imageview);
            bd1 = new c(this);
            if (imageview != null)
            {
                imageview.setImageDrawable(bd.this);
            }
            e = s;
            d = b1;
            f = bundle;
            b = s1;
        }
    }

    public static interface b
    {

        public abstract void a(com.chartboost.sdk.Libraries.j.a a1, Bundle bundle);
    }

    static class c extends BitmapDrawable
    {

        private final WeakReference a;

        public a a()
        {
            return (a)a.get();
        }

        public c(a a1)
        {
            a = new WeakReference(a1);
        }
    }


    private static volatile bd c = null;
    private h a;
    private Map b;

    private bd()
    {
        a = new h("CBImagesDirectory", true);
        b = new HashMap();
    }

    static h a(bd bd1)
    {
        return bd1.a;
    }

    private com.chartboost.sdk.Libraries.j.a a(String s)
    {
        if (b(s))
        {
            if (b.containsKey(s))
            {
                return (com.chartboost.sdk.Libraries.j.a)b.get(s);
            } else
            {
                com.chartboost.sdk.Libraries.j.a a1 = new com.chartboost.sdk.Libraries.j.a(s, a.d(String.format("%s%s", new Object[] {
                    s, ".png"
                })), a);
                b.put(s, a1);
                return a1;
            }
        }
        if (b.containsKey(s))
        {
            b.remove(s);
        }
        return null;
    }

    static a a(ImageView imageview)
    {
        return b(imageview);
    }

    public static bd a()
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/impl/bd;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new bd();
        }
        com/chartboost/sdk/impl/bd;
        JVM INSTR monitorexit ;
_L2:
        return c;
        Exception exception;
        exception;
        com/chartboost/sdk/impl/bd;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(bd bd1, String s)
    {
        return bd1.b(s);
    }

    static com.chartboost.sdk.Libraries.j.a b(bd bd1, String s)
    {
        return bd1.a(s);
    }

    private static a b(ImageView imageview)
    {
        if (imageview != null)
        {
            imageview = imageview.getDrawable();
            if (imageview instanceof c)
            {
                return ((c)imageview).a();
            }
        }
        return null;
    }

    static Map b(bd bd1)
    {
        return bd1.b;
    }

    private boolean b(String s)
    {
        return a.c(String.format("%s%s", new Object[] {
            s, ".png"
        }));
    }

    public void a(String s, String s1, b b1, ImageView imageview, Bundle bundle)
    {
        com.chartboost.sdk.Libraries.j.a a1 = a(s1);
        if (a1 != null)
        {
            if (imageview != null)
            {
                imageview.setImageBitmap(a1.a());
            }
            if (b1 != null)
            {
                b1.a(a1, bundle);
            }
            return;
        }
        if (s == null && b1 != null)
        {
            b1.a(null, bundle);
        }
        s = new a(imageview, b1, s1, bundle, s);
        ay.a().execute(s);
    }

    public void b()
    {
        a.b();
        b.clear();
    }

}
