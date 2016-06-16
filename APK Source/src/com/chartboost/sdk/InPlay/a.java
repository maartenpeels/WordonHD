// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import com.chartboost.sdk.c;
import com.chartboost.sdk.impl.ab;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.bc;
import com.chartboost.sdk.impl.m;
import com.chartboost.sdk.impl.s;
import java.util.ArrayList;
import java.util.LinkedHashMap;

// Referenced classes of package com.chartboost.sdk.InPlay:
//            CBInPlay

public final class com.chartboost.sdk.InPlay.a
{
    private class a
        implements com.chartboost.sdk.impl.n.a
    {

        final com.chartboost.sdk.InPlay.a a;

        public void a(s s1)
        {
            CBLogging.b(com.chartboost.sdk.InPlay.a.d(), (new StringBuilder()).append("Bitmap download failed ").append(s1.getMessage()).toString());
        }

        private a()
        {
            a = com.chartboost.sdk.InPlay.a.this;
            super();
        }

    }

    private class b
        implements com.chartboost.sdk.impl.n.b
    {

        protected boolean a;
        protected String b;
        protected CBInPlay c;
        final com.chartboost.sdk.InPlay.a d;

        public void a(Bitmap bitmap)
        {
            com.chartboost.sdk.InPlay.a.c().put(b, bitmap);
            com.chartboost.sdk.InPlay.a.a(d, c, b, a);
        }

        public volatile void a(Object obj)
        {
            a((Bitmap)obj);
        }

        private b()
        {
            d = com.chartboost.sdk.InPlay.a.this;
            super();
        }

    }


    private static final String a = com/chartboost/sdk/InPlay/a.getSimpleName();
    private static ArrayList b;
    private static int c = 4;
    private static com.chartboost.sdk.InPlay.a d;
    private static LinkedHashMap e;
    private static volatile boolean f = false;

    private com.chartboost.sdk.InPlay.a()
    {
        b = new ArrayList();
        e = new LinkedHashMap(c);
    }

    public static com.chartboost.sdk.InPlay.a a()
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/InPlay/a;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new com.chartboost.sdk.InPlay.a();
        }
        com/chartboost/sdk/InPlay/a;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        com/chartboost/sdk/InPlay/a;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(CBInPlay cbinplay, String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        cbinplay.a((Bitmap)e.get(s));
        b.add(cbinplay);
        s = com.chartboost.sdk.b.d();
        if (s == null || !flag)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        s.didCacheInPlay(cbinplay.getLocation());
        if (!e() && !f)
        {
            a(cbinplay.getLocation(), false);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        cbinplay;
        throw cbinplay;
    }

    static void a(com.chartboost.sdk.InPlay.a a1, CBInPlay cbinplay, String s, boolean flag)
    {
        a1.a(cbinplay, s, flag);
    }

    private void a(String s, boolean flag)
    {
        f = true;
        ba ba1 = new ba("/inplay/get");
        ba1.a("raw", Boolean.valueOf(true));
        ba1.a("cache", Boolean.valueOf(true));
        ba1.a(com.chartboost.sdk.impl.l.a.c);
        ba1.b(true);
        ba1.a("location", s);
        ba1.a(com.chartboost.sdk.Model.b.d);
        ba1.a(new com.chartboost.sdk.impl.ba.c(s, flag) {

            final String a;
            final boolean b;
            final com.chartboost.sdk.InPlay.a c;

            public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba2)
            {
label0:
                {
                    com.chartboost.sdk.InPlay.a.a(false);
                    if (a1.c())
                    {
                        ba2 = new CBInPlay();
                        ba2.a(a1);
                        ba2.b(a1.e("name"));
                        if (!TextUtils.isEmpty(a))
                        {
                            ba2.a(a);
                        }
                        a1 = a1.a("icons");
                        if (a1.c() && !TextUtils.isEmpty(a1.e("lg")))
                        {
                            a1 = a1.e("lg");
                            if (com.chartboost.sdk.InPlay.a.c().get(a1) != null)
                            {
                                break label0;
                            }
                            b b1 = c. new b();
                            a a2 = c. new a();
                            b1.c = ba2;
                            b1.b = a1;
                            b1.a = b;
                            a1 = new ab(a1, b1, 0, 0, null, a2);
                            bb.a(com.chartboost.sdk.b.l()).a().a(a1);
                        }
                    }
                    return;
                }
                com.chartboost.sdk.InPlay.a.a(c, ba2, a1, true);
            }

            public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba2, CBError cberror)
            {
                CBLogging.b(com.chartboost.sdk.InPlay.a.d(), (new StringBuilder()).append("InPlay cache call failed").append(cberror).toString());
                com.chartboost.sdk.InPlay.a.a(false);
                if (com.chartboost.sdk.b.d() != null)
                {
                    ba2 = com.chartboost.sdk.b.d();
                    String s1 = a;
                    if (cberror != null)
                    {
                        a1 = cberror.c();
                    } else
                    {
                        a1 = null;
                    }
                    ba2.didFailToLoadInPlay(s1, a1);
                }
            }

            
            {
                c = com.chartboost.sdk.InPlay.a.this;
                a = s;
                b = flag;
                super();
            }
        });
    }

    static boolean a(boolean flag)
    {
        f = flag;
        return flag;
    }

    public static void b()
    {
        if (e != null)
        {
            e.clear();
        }
        if (b != null)
        {
            b.clear();
        }
    }

    static LinkedHashMap c()
    {
        return e;
    }

    static String d()
    {
        return a;
    }

    private static boolean e()
    {
        return b.size() == c;
    }

    protected void a(CBInPlay cbinplay)
    {
        Object obj = cbinplay.a();
        ba ba1 = new ba("/inplay/show");
        ba1.a("inplay-dictionary", obj);
        ba1.a(true);
        ba1.s();
        if (cbinplay.a().c())
        {
            obj = ((com.chartboost.sdk.Libraries.e.a) (obj)).e("ad_id");
        } else
        {
            obj = null;
        }
        com.chartboost.sdk.Tracking.a.a("in-play", cbinplay.getLocation(), ((String) (obj)));
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (e()) goto _L2; else goto _L1
_L1:
        boolean flag = f;
        if (!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        a(s, true);
        if (true) goto _L2; else goto _L4
_L4:
        s;
        throw s;
    }

    protected void b(CBInPlay cbinplay)
    {
        Object obj1 = cbinplay.a();
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        Object obj;
        cbinplay = ((com.chartboost.sdk.Libraries.e.a) (obj1)).e("link");
        obj = ((com.chartboost.sdk.Libraries.e.a) (obj1)).e("deep-link");
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            boolean flag;
            try
            {
                flag = bc.a(((String) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                CBLogging.b(a, "Cannot open a url");
                continue; /* Loop/switch isn't completed */
            }
            if (flag)
            {
                cbinplay = ((CBInPlay) (obj));
            }
        }
_L4:
        obj = new com.chartboost.sdk.c.b(((com.chartboost.sdk.Libraries.e.a) (obj1))) {

            final com.chartboost.sdk.Libraries.e.a a;
            final com.chartboost.sdk.InPlay.a b;

            public void a()
            {
                ba ba1 = com.chartboost.sdk.c.a().d();
                ba1.a("to", a);
                ba1.a("cgn", a);
                ba1.a("creative", a);
                ba1.a("ad_id", a);
                ba1.a("type", a);
                ba1.a("more_type", a);
                ba1.a(true);
                ba1.s();
            }

            
            {
                b = com.chartboost.sdk.InPlay.a.this;
                a = a2;
                super();
            }
        };
        obj1 = com.chartboost.sdk.c.a();
        if (!TextUtils.isEmpty(cbinplay))
        {
            ((c) (obj1)).b(null, cbinplay, ((com.chartboost.sdk.c.b) (obj)));
            return;
        } else
        {
            ((c) (obj1)).b.a(null, false, cbinplay, com.chartboost.sdk.Model.CBError.CBClickError.URI_INVALID, ((com.chartboost.sdk.c.b) (obj)));
            return;
        }
_L2:
        cbinplay = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (b.size() <= 0) goto _L2; else goto _L1
_L1:
        com.chartboost.sdk.Tracking.a.b("in-play", s, true);
        boolean flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        CBLogging.a(a, "InPlay is not available :(");
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public CBInPlay c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        CBInPlay cbinplay = null;
        if (b.size() > 0)
        {
            cbinplay = (CBInPlay)b.get(0);
            b.remove(0);
        }
        if (!e() && !f)
        {
            a(s, true);
        }
        if (cbinplay != null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        CBLogging.a(a, "InPlay Object not available returning null :(");
        this;
        JVM INSTR monitorexit ;
        return cbinplay;
        s;
        throw s;
    }

}
