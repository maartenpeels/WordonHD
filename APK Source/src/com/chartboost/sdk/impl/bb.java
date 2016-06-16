// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.Tracking.a;
import com.chartboost.sdk.b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.chartboost.sdk.impl:
//            ad, az, ba, i, 
//            ay, m, s, d, 
//            l, n, a

public class bb
    implements Observer
{
    public static class a extends s
    {

        private CBError b;

        static CBError a(a a1)
        {
            return a1.b;
        }

        public a(CBError cberror)
        {
            b = cberror;
        }
    }

    public static class b
    {

        private com.chartboost.sdk.Libraries.e.a a;
        private i b;

        static com.chartboost.sdk.Libraries.e.a a(b b1)
        {
            return b1.a;
        }

        static i b(b b1)
        {
            return b1.b;
        }

        public b(com.chartboost.sdk.Libraries.e.a a1, i i1)
        {
            a = a1;
            b = i1;
        }
    }

    private class c
        implements Runnable
    {

        final bb a;
        private ba b;

        static ba a(c c1)
        {
            return c1.b;
        }

        public void run()
        {
            b.a(com.chartboost.sdk.b.l());
            b.c();
            Object obj = String.format("%s%s", new Object[] {
                "https://live.chartboost.com", b.e()
            });
            b.d();
            b.a();
            obj = new a(this, 1, ((String) (obj)), b);
            ((a) (obj)).a(new d(30000, 0, 0.0F));
            com.chartboost.sdk.impl.bb.a(a).a(((l) (obj)));
        }

        public c(ba ba1)
        {
            a = bb.this;
            super();
            b = ba1;
        }
    }

    private class c.a extends l
    {

        final c a;
        private ba b;

        protected n a(i i1)
        {
            int j1 = i1.a;
            if (j1 <= 300 || j1 >= 200) goto _L2; else goto _L1
_L1:
            Object obj;
            Object obj1;
            CBLogging.d("CBRequestManager", (new StringBuilder()).append("Request ").append(b.g()).append(" failed. Response code: ").append(j1).toString());
            obj1 = new CBError(com.chartboost.sdk.Model.CBError.a.e, (new StringBuilder()).append("Request failed. Response code: ").append(j1).append(" is not valid ").toString());
            obj = null;
_L13:
            com.chartboost.sdk.Libraries.g.a a1;
            StringBuilder stringbuilder;
            if (obj != null && obj1 == null)
            {
                return com.chartboost.sdk.impl.n.a(new b(com.chartboost.sdk.Libraries.e.a.a(obj), i1), null);
            } else
            {
                return com.chartboost.sdk.impl.n.a(new a(((CBError) (obj1))));
            }
_L2:
            obj = i1.b;
            if (obj == null) goto _L4; else goto _L3
_L3:
            obj = new String(((byte []) (obj)));
_L11:
            if (obj == null) goto _L6; else goto _L5
_L5:
            obj1 = com.chartboost.sdk.Libraries.e.a.a(new JSONObject(new JSONTokener(((String) (obj)))));
            a1 = b.l();
            CBLogging.c("CBRequestManager", (new StringBuilder()).append("Request ").append(b.g()).append(" succeeded. Response code: ").append(j1).append(", body: ").append(((String) (obj))).toString());
            if (((com.chartboost.sdk.Libraries.e.a) (obj1)).f("status") == 404)
            {
                obj = new CBError(com.chartboost.sdk.Model.CBError.a.g, "404 error from server");
                break; /* Loop/switch isn't completed */
            }
            stringbuilder = new StringBuilder();
            if (a1 == null) goto _L8; else goto _L7
_L7:
            if (!a1.a(obj1, stringbuilder))
            {
                obj = new CBError(com.chartboost.sdk.Model.CBError.a.d, "Json response failed validation");
                CBLogging.b("CBRequestManager", (new StringBuilder()).append("Json response failed validation: ").append(stringbuilder.toString()).toString());
                break; /* Loop/switch isn't completed */
            }
              goto _L8
_L6:
            obj1 = new CBError(com.chartboost.sdk.Model.CBError.a.c, "Response is not a valid json object");
            obj = null;
            continue; /* Loop/switch isn't completed */
            obj1;
            obj = null;
_L9:
            obj1 = new CBError(com.chartboost.sdk.Model.CBError.a.a, ((Exception) (obj1)).getLocalizedMessage());
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            obj = obj1;
            obj1 = exception;
            if (true) goto _L9; else goto _L8
_L8:
            obj = null;
            break; /* Loop/switch isn't completed */
_L4:
            obj = null;
            if (true) goto _L11; else goto _L10
_L10:
            Object obj2 = obj;
            obj = obj1;
            obj1 = obj2;
            if (true) goto _L13; else goto _L12
_L12:
        }

        protected void a(b b1)
        {
            if (com.chartboost.sdk.impl.c.a(a).r() != null && b1 != null)
            {
                com.chartboost.sdk.impl.c.a(a).r().a(com.chartboost.sdk.impl.b.a(b1), com.chartboost.sdk.impl.c.a(a));
            }
            if (!com.chartboost.sdk.impl.c.a(a).h())
            {
                com.chartboost.sdk.impl.bb.b(a.a).c((File)bb.k().get(com.chartboost.sdk.impl.c.a(a)));
                bb.k().remove(com.chartboost.sdk.impl.c.a(a));
                com.chartboost.sdk.impl.bb.a(a.a, com.chartboost.sdk.impl.c.a(a), com.chartboost.sdk.impl.b.b(b1), null, true);
                return;
            } else
            {
                com.chartboost.sdk.Tracking.a.a().m().c((File)bb.l().get(com.chartboost.sdk.impl.c.a(a)));
                com.chartboost.sdk.Tracking.a.a().q();
                CBLogging.a("CBRequestManager", "### Removing track events sent to server...");
                bb.l().remove(com.chartboost.sdk.impl.c.a(a));
                return;
            }
        }

        public void b(s s1)
        {
            CBError cberror;
            Object obj;
            com.chartboost.sdk.Libraries.e.a a1;
            if (s1 == null)
            {
                return;
            }
            if (s1 instanceof a)
            {
                cberror = com.chartboost.sdk.impl.a.a((a)s1);
            } else
            {
                cberror = new CBError(com.chartboost.sdk.Model.CBError.a.e, s1.getMessage());
            }
            a1 = com.chartboost.sdk.Libraries.e.a.a;
            obj = a1;
            if (s1 == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            obj = a1;
            if (s1.a == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            obj = a1;
            if (s1.a.b != null)
            {
                obj = a1;
                try
                {
                    if (s1.a.b.length > 0)
                    {
                        obj = com.chartboost.sdk.Libraries.e.a.j(new String(s1.a.b));
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    CBLogging.d("CBRequestManager", "unable to read error json", ((Throwable) (obj)));
                    obj = a1;
                }
            }
            if (s1.a != null && s1.a.a == 200)
            {
                a(new b(((com.chartboost.sdk.Libraries.e.a) (obj)), s1.a));
                return;
            }
            if (com.chartboost.sdk.impl.c.a(a).r() != null)
            {
                com.chartboost.sdk.impl.c.a(a).r().a(((com.chartboost.sdk.Libraries.e.a) (obj)), com.chartboost.sdk.impl.c.a(a), cberror);
            }
            if (!com.chartboost.sdk.impl.c.a(a).h())
            {
                com.chartboost.sdk.impl.c.a(a).d(false);
                com.chartboost.sdk.impl.bb.a(a.a, com.chartboost.sdk.impl.c.a(a), s1.a, cberror, false);
                return;
            } else
            {
                bb.l().remove(com.chartboost.sdk.impl.c.a(a));
                return;
            }
        }

        protected void b(Object obj)
        {
            a((b)obj);
        }

        public Map i()
            throws com.chartboost.sdk.impl.a
        {
            HashMap hashmap = new HashMap();
            Iterator iterator = b.j().entrySet().iterator();
            while (iterator.hasNext()) 
            {
                Object obj = (java.util.Map.Entry)iterator.next();
                Object obj1 = ((java.util.Map.Entry) (obj)).getKey();
                if (((java.util.Map.Entry) (obj)).getValue() != null)
                {
                    obj = ((java.util.Map.Entry) (obj)).getValue().toString();
                } else
                {
                    obj = null;
                }
                hashmap.put(obj1, obj);
            }
            return hashmap;
        }

        public String p()
        {
            String s2 = b.b();
            String s1 = s2;
            if (s2 == null)
            {
                s1 = "application/json; charset=utf-8";
            }
            return s1;
        }

        public byte[] q()
        {
            String s1;
            if (b.i() == null)
            {
                s1 = "";
            } else
            {
                s1 = b.i().toString();
            }
            return s1.getBytes();
        }

        public l.a s()
        {
            return b.n();
        }

        public c.a(c c1, int i1, String s1, ba ba1)
        {
            a = c1;
            super(i1, s1, null);
            b = ba1;
        }
    }


    private static bb b;
    private static ConcurrentHashMap e;
    private static ConcurrentHashMap f;
    private static List g = new ArrayList();
    private az a;
    private m c;
    private h d;
    private CountDownTimer h;

    private bb(Context context)
    {
        a = null;
        c = com.chartboost.sdk.impl.ad.a(context.getApplicationContext());
        a = com.chartboost.sdk.impl.az.a();
        d = new h("CBRequestManager", false);
        e = new ConcurrentHashMap();
        f = new ConcurrentHashMap();
        a.addObserver(this);
    }

    private ba a(String s)
    {
        Object obj = null;
        ba ba1 = obj;
        if (!TextUtils.isEmpty(s))
        {
            s = d.a(s);
            ba1 = obj;
            if (s != null)
            {
                ba1 = com.chartboost.sdk.impl.ba.a(s);
            }
        }
        return ba1;
    }

    public static bb a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new bb(context);
        }
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorexit ;
_L2:
        return b;
        context;
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorexit ;
        throw context;
    }

    static m a(bb bb1)
    {
        return bb1.c;
    }

    private void a(ba ba1)
    {
        if (ba1 != null)
        {
            Object obj = null;
            File file = obj;
            if (ba1.k())
            {
                file = obj;
                if (ba1 instanceof ba)
                {
                    file = d.a(null, ba1.t());
                }
            }
            if ((ba1.k() || ba1.m()) && file != null)
            {
                e.put(ba1, file);
            }
        }
    }

    private void a(ba ba1, i i1, CBError cberror, boolean flag)
    {
        if (ba1 == null)
        {
            return;
        }
        com.chartboost.sdk.Libraries.e.b b1 = com.chartboost.sdk.Libraries.e.a("endpoint", ba1.g());
        com.chartboost.sdk.Libraries.e.b b2;
        com.chartboost.sdk.Libraries.e.b b3;
        if (i1 == null)
        {
            i1 = "None";
        } else
        {
            i1 = Integer.valueOf(i1.a);
        }
        b2 = com.chartboost.sdk.Libraries.e.a("statuscode", i1);
        if (cberror == null)
        {
            i1 = "None";
        } else
        {
            i1 = cberror.a();
        }
        b3 = com.chartboost.sdk.Libraries.e.a("error", i1);
        if (cberror == null)
        {
            i1 = "None";
        } else
        {
            i1 = cberror.b();
        }
        i1 = com.chartboost.sdk.Libraries.e.a(new com.chartboost.sdk.Libraries.e.b[] {
            b1, b2, b3, com.chartboost.sdk.Libraries.e.a("errorDescription", i1), com.chartboost.sdk.Libraries.e.a("retryCount", Integer.valueOf(ba1.o()))
        });
        if (flag)
        {
            ba1 = "success";
        } else
        {
            ba1 = "failure";
        }
        com.chartboost.sdk.Tracking.a.a("request_manager", "request", ba1, null, null, null, i1.e());
    }

    static void a(bb bb1, ba ba1, i i1, CBError cberror, boolean flag)
    {
        bb1.a(ba1, i1, cberror, flag);
    }

    static h b(bb bb1)
    {
        return bb1.d;
    }

    public static void b()
    {
        Object obj = new ArrayList();
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        ((List) (obj)).addAll(g);
        g.clear();
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        Runnable runnable;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); com.chartboost.sdk.impl.ay.a().execute(runnable))
        {
            runnable = (Runnable)((Iterator) (obj)).next();
        }

        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void d()
    {
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorenter ;
        h h1 = com.chartboost.sdk.Libraries.h.c();
        String as[];
        as = null;
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        as = h1.a();
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        int j1 = as.length;
        int i1 = 0;
_L10:
        if (i1 >= j1) goto _L2; else goto _L4
_L4:
        Object obj1 = as[i1];
        com.chartboost.sdk.Libraries.e.a a1 = h1.a(((String) (obj1)));
        if (!a1.c()) goto _L6; else goto _L5
_L5:
        h1.b(((String) (obj1)));
        obj1 = com.chartboost.sdk.impl.ba.a(a1);
        if (obj1 == null) goto _L8; else goto _L7
_L7:
        ((ba) (obj1)).a(true);
        ((ba) (obj1)).s();
          goto _L6
_L8:
        CBLogging.b("CBRequestManager", "Error processing video completeion event");
          goto _L6
        Object obj;
        obj;
        CBLogging.b("CBRequestManager", "Error executing saved requests", ((Throwable) (obj)));
_L2:
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorexit ;
        return;
        obj;
        throw obj;
_L6:
        i1++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static boolean h()
    {
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorenter ;
        if (f == null) goto _L2; else goto _L1
_L1:
        boolean flag = f.isEmpty();
        if (flag) goto _L2; else goto _L3
_L3:
        flag = true;
_L5:
        com/chartboost/sdk/impl/bb;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    static ConcurrentHashMap k()
    {
        return e;
    }

    static ConcurrentHashMap l()
    {
        return f;
    }

    public m a()
    {
        return c;
    }

    protected void a(ba ba1, ba.c c1)
    {
        if (ba1 != null)
        {
            if (!a.c())
            {
                CBError cberror = new CBError(com.chartboost.sdk.Model.CBError.a.b, null);
                ba1.d(false);
                if (!ba1.h())
                {
                    if (ba1.p())
                    {
                        ba1.c(false);
                        a(ba1);
                    }
                    a(ba1, null, cberror, false);
                    if (c1 != null)
                    {
                        c1.a(null, ba1, cberror);
                        return;
                    }
                }
            } else
            {
                if (!ba1.h() && ba1.p())
                {
                    ba1.c(false);
                    a(ba1);
                }
                a(((Runnable) (new c(ba1))));
                return;
            }
        }
    }

    public void a(Runnable runnable)
    {
        boolean flag = false;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        com.chartboost.sdk.Libraries.c.a a1 = com.chartboost.sdk.Libraries.c.c();
        if (a1 != com.chartboost.sdk.Libraries.c.a.a && a1 != com.chartboost.sdk.Libraries.c.a.b)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        g.add(runnable);
_L1:
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        if (flag)
        {
            com.chartboost.sdk.impl.ay.a().execute(runnable);
        }
        return;
        flag = true;
          goto _L1
        runnable;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        throw runnable;
    }

    public void c()
    {
        int i1 = 0;
        this;
        JVM INSTR monitorenter ;
        if (e == null || e.isEmpty()) goto _L2; else goto _L1
_L1:
        Iterator iterator = e.keySet().iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        Object obj = (ba)iterator.next();
        if (obj == null) goto _L6; else goto _L5
_L5:
        if (((ba) (obj)).q()) goto _L6; else goto _L7
_L7:
        ((ba) (obj)).a(((ba) (obj)).o() + 1);
        ((ba) (obj)).a(((ba) (obj)).r());
          goto _L6
        Exception exception;
        exception;
        throw exception;
_L2:
        String as[] = d.a();
        if (as == null) goto _L4; else goto _L8
_L8:
        int j1 = as.length;
_L13:
        if (i1 >= j1) goto _L4; else goto _L9
_L9:
        obj = as[i1];
        ba ba1 = a(((String) (obj)));
        if (ba1 == null) goto _L11; else goto _L10
_L10:
        e.put(ba1, d.d(((String) (obj))));
        ba1.c(false);
        ba1.a(ba1.o() + 1);
        ba1.a(ba1.r());
          goto _L11
_L4:
        e();
        f();
        this;
        JVM INSTR monitorexit ;
        return;
_L11:
        i1++;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public void e()
    {
        Object obj1;
        obj1 = com.chartboost.sdk.Tracking.a.a();
        if (!com.chartboost.sdk.b.i())
        {
            if (f != null && !f.isEmpty())
            {
                f.clear();
            }
            ((com.chartboost.sdk.Tracking.a) (obj1)).m().b();
            return;
        }
        this;
        JVM INSTR monitorenter ;
        boolean flag = f.isEmpty();
        if (!flag) goto _L2; else goto _L1
_L1:
        h h1 = ((com.chartboost.sdk.Tracking.a) (obj1)).m();
        String as[];
        as = null;
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        as = h1.a();
        if (as == null) goto _L4; else goto _L3
_L3:
        int j1 = as.length;
        int i1 = 0;
_L5:
        String s;
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        s = as[i1];
        if (!((com.chartboost.sdk.Tracking.a) (obj1)).b(s))
        {
            Object obj2 = h1.a(s);
            if (((com.chartboost.sdk.Libraries.e.a) (obj2)).c())
            {
                CBLogging.a("CBRequestManager", (new StringBuilder()).append("### Flushing out ").append(s).append("track events from cache to server...").toString());
                obj2 = ((com.chartboost.sdk.Tracking.a) (obj1)).a(((com.chartboost.sdk.Libraries.e.a) (obj2)));
                f.put(obj2, h1.d(s));
                ((ba) (obj2)).s();
            }
        }
        i1++;
        if (true) goto _L5; else goto _L4
        Object obj;
        obj;
        CBLogging.b("CBRequestManager", "Error executing saved requests", ((Throwable) (obj)));
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L2:
        Iterator iterator = f.keySet().iterator();
_L7:
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            obj1 = (ba)iterator.next();
        } while (obj1 == null);
        if (((ba) (obj1)).q()) goto _L7; else goto _L6
_L6:
        ((ba) (obj1)).a(((ba) (obj1)).o() + 1);
        ((ba) (obj1)).a(((ba) (obj1)).r());
        if (true) goto _L7; else goto _L8
_L8:
        if (true) goto _L4; else goto _L9
_L9:
    }

    public void f()
    {
        if (h == null)
        {
            h = (new CountDownTimer(0x3a980L, 1000L) {

                final bb a;

                public void onFinish()
                {
                    a.c();
                }

                public void onTick(long l1)
                {
                }

            
            {
                a = bb.this;
                super(l1, l2);
            }
            }).start();
        }
    }

    public void g()
    {
        CBLogging.a("CBRequestManager", "Timer stopped:");
        if (h != null)
        {
            h.cancel();
            h = null;
        }
    }

    public ConcurrentHashMap i()
    {
        return e;
    }

    public h j()
    {
        return d;
    }

    public void update(Observable observable, Object obj)
    {
        if (h != null)
        {
            g();
        }
        c();
    }

}
