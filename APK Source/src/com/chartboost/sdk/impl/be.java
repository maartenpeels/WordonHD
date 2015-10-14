// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.Tracking.a;
import com.chartboost.sdk.b;
import com.chartboost.sdk.d;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;

// Referenced classes of package com.chartboost.sdk.impl:
//            d, m, ba, bb, 
//            az, l, i, n, 
//            r, q, h, s

public class be
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/be$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("kCBIntial", 0);
            b = new a("kCBInProgress", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int i1)
        {
            super(s, i1);
        }
    }

    private static class b extends l
    {

        private String a;
        private long b;
        private String c;

        static long a(b b1)
        {
            return b1.b;
        }

        static String b(b b1)
        {
            return b1.a;
        }

        static String c(b b1)
        {
            return b1.c;
        }

        protected n a(i i1)
        {
            if (i1 != null)
            {
                long l1 = (System.currentTimeMillis() - b) / 1000L;
                com.chartboost.sdk.Tracking.a.d(a, Long.valueOf(l1).toString(), c);
                CBLogging.a(com.chartboost.sdk.impl.be.g(), (new StringBuilder()).append("Video download Success. Storing video in cache").append(a).toString());
                com.chartboost.sdk.impl.be.h().a(a, i1.b);
                com.chartboost.sdk.Tracking.a.e("cache", "hit", a);
            }
            if (be.i().get() > 0 && be.j().incrementAndGet() >= 1 && be.k() != null)
            {
                i1 = be.k();
                be.c(null);
                CBUtility.e().post(new Runnable(this, i1) {

                    final com.chartboost.sdk.Model.a a;
                    final b b;

                    public void run()
                    {
                        if (a != null)
                        {
                            a.q().r(a);
                        }
                    }

            
            {
                b = b1;
                a = a1;
                super();
            }
                });
            }
            if (be.j().get() == be.i().get())
            {
                be.j().set(0);
                be.i().set(0);
                com.chartboost.sdk.impl.be.b(com.chartboost.sdk.impl.a.a);
                be.l().clear();
            }
            return com.chartboost.sdk.impl.n.a(null, null);
        }

        protected void b(Object obj)
        {
        }

        public l.a s()
        {
            return com.chartboost.sdk.impl.l.a.a;
        }

        public b(int i1, String s1, c c1, String s2)
        {
            super(i1, s1, c1);
            a = s2;
            c = s1;
            b = System.currentTimeMillis();
        }
    }

    private static class c
        implements n.a
    {

        private b a;

        static b a(c c1, b b1)
        {
            c1.a = b1;
            return b1;
        }

        public void a(s s1)
        {
            if ((s1 instanceof r) || (s1 instanceof q) || (s1 instanceof com.chartboost.sdk.impl.h))
            {
                if (a != null)
                {
                    long l1 = (System.currentTimeMillis() - com.chartboost.sdk.impl.b.a(a)) / 1000L;
                    com.chartboost.sdk.Tracking.a.a(com.chartboost.sdk.impl.b.b(a), Long.valueOf(l1).toString(), b.c(a), s1.getMessage());
                    com.chartboost.sdk.Tracking.a.e("cache", "miss", com.chartboost.sdk.impl.b.b(a));
                }
                be.l().put(Integer.valueOf(a.hashCode()), a);
                CBLogging.b(com.chartboost.sdk.impl.be.g(), (new StringBuilder()).append("Error downloading video ").append(s1.getMessage()).append(com.chartboost.sdk.impl.b.b(a)).toString());
            }
        }

        private c()
        {
        }

    }


    public static be a;
    private static final String b = com/chartboost/sdk/impl/be.getSimpleName();
    private static h c;
    private static m d;
    private static ConcurrentHashMap e;
    private static a f;
    private static a g;
    private static AtomicInteger h = new AtomicInteger();
    private static AtomicInteger i = new AtomicInteger();
    private static boolean j = true;
    private static com.chartboost.sdk.Model.a k;
    private static boolean l = false;
    private static Observer m = new Observer() {

        public void update(Observable observable, Object obj)
        {
            com.chartboost.sdk.impl.be.f();
        }

    };
    private static ba.c n = new ba.c() {

        public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1)
        {
            com/chartboost/sdk/impl/be;
            JVM INSTR monitorenter ;
            com.chartboost.sdk.impl.be.a(com.chartboost.sdk.impl.a.a);
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_48;
            }
            CBLogging.a(com.chartboost.sdk.impl.be.g(), (new StringBuilder()).append("Got Video list from server :)").append(a1).toString());
            com.chartboost.sdk.impl.be.a(a1.a("videos"));
            com/chartboost/sdk/impl/be;
            JVM INSTR monitorexit ;
            return;
            a1;
            com/chartboost/sdk/impl/be;
            JVM INSTR monitorexit ;
            throw a1;
        }

        public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1, CBError cberror)
        {
        }

    };

    private be()
    {
    }

    static a a(a a1)
    {
        f = a1;
        return a1;
    }

    public static be a()
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        be be1;
        if (a == null)
        {
            a = new be();
            m();
        }
        be1 = a;
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return be1;
        Exception exception;
        exception;
        throw exception;
    }

    public static String a(String s)
    {
        if (c.c(s))
        {
            return c.d(s).getPath();
        } else
        {
            return null;
        }
    }

    public static void a(com.chartboost.sdk.Libraries.e.a a1)
    {
        int i1 = 0;
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        com.chartboost.sdk.Tracking.a.e();
        if (a1 == null) goto _L2; else goto _L1
_L1:
        HashMap hashmap;
        HashMap hashmap1;
        String as[];
        hashmap = new HashMap();
        hashmap1 = new HashMap();
        as = c();
_L5:
        if (i1 >= a1.o()) goto _L4; else goto _L3
_L3:
        Object obj;
        obj = a1.c(i1);
        if (((com.chartboost.sdk.Libraries.e.a) (obj)).b("id") || ((com.chartboost.sdk.Libraries.e.a) (obj)).b("video"))
        {
            break MISSING_BLOCK_LABEL_186;
        }
        String s = ((com.chartboost.sdk.Libraries.e.a) (obj)).e("id");
        obj = ((com.chartboost.sdk.Libraries.e.a) (obj)).e("video");
        if (!c.c(s))
        {
            hashmap1.put(s, obj);
            i.incrementAndGet();
        }
        hashmap.put(s, obj);
        break MISSING_BLOCK_LABEL_186;
        a1;
        throw a1;
_L4:
        if (!hashmap1.isEmpty())
        {
            g = com.chartboost.sdk.impl.a.b;
        }
        if (j)
        {
            j = false;
        }
        CBLogging.a(b, "synchronizeVideos: Delete and Download new videos");
        a(hashmap, as);
        if (com.chartboost.sdk.b.t())
        {
            a(hashmap1);
        }
_L2:
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
        i1++;
          goto _L5
    }

    public static void a(com.chartboost.sdk.Model.a a1)
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        k = a1;
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    private static void a(HashMap hashmap)
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        CBLogging.a(b, "downloadVideos: Downloading videos from server");
        b b1;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); d.a(b1))
        {
            String s = (String)iterator.next();
            c c1 = new c();
            b1 = new b(0, (String)hashmap.get(s), c1, s);
            b1.a(new com.chartboost.sdk.impl.d(30000, 0, 0.0F));
            com.chartboost.sdk.impl.c.a(c1, b1);
            b1.a(Integer.valueOf(m.hashCode()));
            com.chartboost.sdk.Tracking.a.a((String)hashmap.get(s), s);
        }

        break MISSING_BLOCK_LABEL_139;
        hashmap;
        throw hashmap;
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
    }

    private static void a(HashMap hashmap, String as[])
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        CBLogging.a(b, "deleteVideos: Deleteing videos in cache");
        if (hashmap == null || as == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        int j1 = as.length;
        int i1 = 0;
_L3:
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        Object obj = as[i1];
        if (hashmap.containsKey(obj))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = c.d(((String) (obj)));
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        c.c(((File) (obj)));
        i1++;
          goto _L3
_L2:
        return;
        hashmap;
        throw hashmap;
    }

    static a b(a a1)
    {
        g = a1;
        return a1;
    }

    public static String b(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (a1 == null)
        {
            return null;
        }
        com.chartboost.sdk.Libraries.e.a a2 = a1.a("assets");
        if (a2.b())
        {
            return null;
        }
        if (CBUtility.c().b())
        {
            a1 = "video-portrait";
        } else
        {
            a1 = "video-landscape";
        }
        a1 = a2.a(a1);
        if (a1.b())
        {
            return null;
        }
        a1 = a1.e("id");
        if (TextUtils.isEmpty(a1))
        {
            return null;
        } else
        {
            return a(a1);
        }
    }

    public static void b()
    {
        int i1 = 0;
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        if (!l)
        {
            m();
        }
        CBLogging.a(b, "Calling Prfetch Video");
        if (com.chartboost.sdk.impl.a.b == f) goto _L2; else goto _L1
_L1:
        Object obj;
        a a1;
        obj = com.chartboost.sdk.impl.a.b;
        a1 = g;
        if (obj != a1) goto _L3; else goto _L2
_L2:
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (e != null && !e.isEmpty())
        {
            e.clear();
            d.a(Integer.valueOf(m.hashCode()));
            g = com.chartboost.sdk.impl.a.a;
            CBLogging.a(b, "prefetchVideo: Clearing all volley request for new start");
        }
        f = com.chartboost.sdk.impl.a.b;
        obj = new JSONArray();
        if (c() == null) goto _L5; else goto _L4
_L4:
        String as[];
        int j1;
        as = c();
        j1 = as.length;
_L6:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        ((JSONArray) (obj)).put(as[i1]);
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
        com.chartboost.sdk.Tracking.a.d();
        i.set(0);
        h.set(0);
        ba ba1 = new ba("/api/video-prefetch");
        ba1.a("local-videos", obj);
        ba1.a(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", com.chartboost.sdk.Libraries.a.a), com.chartboost.sdk.Libraries.g.a("videos", com.chartboost.sdk.Libraries.g.b(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("video", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("id", com.chartboost.sdk.Libraries.g.a())
            })))
        }));
        ba1.b(true);
        ba1.a(n);
        if (true) goto _L2; else goto _L7
_L7:
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(String s)
    {
        if (c.c(s))
        {
            c.b(s);
        }
    }

    public static boolean b(com.chartboost.sdk.Model.a a1)
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        if (!e()) goto _L2; else goto _L1
_L1:
        CBLogging.e(b, "Saving video impression request for video prefetch completion");
        a(a1);
        boolean flag = true;
_L4:
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        a1;
        throw a1;
    }

    static com.chartboost.sdk.Model.a c(com.chartboost.sdk.Model.a a1)
    {
        k = a1;
        return a1;
    }

    public static boolean c(com.chartboost.sdk.Libraries.e.a a1)
    {
        return b(a1) != null;
    }

    public static String[] c()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.a();
        }
    }

    public static void d()
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        d.a(Integer.valueOf(m.hashCode()));
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean e()
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        a a1;
        a a2;
        a1 = g;
        a2 = com.chartboost.sdk.impl.a.b;
        boolean flag;
        if (a1 == a2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    static void f()
    {
        n();
    }

    static String g()
    {
        return b;
    }

    static h h()
    {
        return c;
    }

    static AtomicInteger i()
    {
        return i;
    }

    static AtomicInteger j()
    {
        return h;
    }

    static com.chartboost.sdk.Model.a k()
    {
        return k;
    }

    static ConcurrentHashMap l()
    {
        return e;
    }

    private static void m()
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        boolean flag = l;
        if (!flag) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
_L2:
        l = true;
        c = new h("CBVideoDirectory", true);
        e = new ConcurrentHashMap();
        f = com.chartboost.sdk.impl.a.a;
        g = com.chartboost.sdk.impl.a.a;
        d = com.chartboost.sdk.impl.bb.a(com.chartboost.sdk.b.l()).a();
        com.chartboost.sdk.impl.az.a().addObserver(m);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private static void n()
    {
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorenter ;
        CBLogging.a(b, "Process Request called");
        if (f == com.chartboost.sdk.impl.a.b) goto _L2; else goto _L1
_L1:
        a a1;
        a a2;
        a1 = g;
        a2 = com.chartboost.sdk.impl.a.b;
        if (a1 != a2) goto _L3; else goto _L2
_L2:
        com/chartboost/sdk/impl/be;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (g == com.chartboost.sdk.impl.a.a && e != null || e.size() > 0)
        {
            Iterator iterator = e.keySet().iterator();
            while (iterator.hasNext()) 
            {
                Integer integer = (Integer)iterator.next();
                g = com.chartboost.sdk.impl.a.b;
                d.a((l)e.get(integer));
                e.remove(integer);
            }
        }
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

}
