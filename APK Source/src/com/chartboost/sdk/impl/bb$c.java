// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.chartboost.sdk.impl:
//            bb, ba, d, m, 
//            l, i, n, s, 
//            a

private class b
    implements Runnable
{
    private class a extends l
    {

        final bb.c a;
        private ba b;

        protected n a(i j)
        {
            int k = j.a;
            if (k <= 300 || k >= 200) goto _L2; else goto _L1
_L1:
            Object obj;
            Object obj1;
            CBLogging.d("CBRequestManager", (new StringBuilder()).append("Request ").append(b.g()).append(" failed. Response code: ").append(k).toString());
            obj1 = new CBError(com.chartboost.sdk.Model.CBError.a.e, (new StringBuilder()).append("Request failed. Response code: ").append(k).append(" is not valid ").toString());
            obj = null;
_L13:
            com.chartboost.sdk.Libraries.g.a a1;
            StringBuilder stringbuilder;
            if (obj != null && obj1 == null)
            {
                return n.a(new bb.b(com.chartboost.sdk.Libraries.e.a.a(obj), j), null);
            } else
            {
                return n.a(new bb.a(((CBError) (obj1))));
            }
_L2:
            obj = j.b;
            if (obj == null) goto _L4; else goto _L3
_L3:
            obj = new String(((byte []) (obj)));
_L11:
            if (obj == null) goto _L6; else goto _L5
_L5:
            obj1 = com.chartboost.sdk.Libraries.e.a.a(new JSONObject(new JSONTokener(((String) (obj)))));
            a1 = b.l();
            CBLogging.c("CBRequestManager", (new StringBuilder()).append("Request ").append(b.g()).append(" succeeded. Response code: ").append(k).append(", body: ").append(((String) (obj))).toString());
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

        protected void a(bb.b b1)
        {
            if (bb.c.a(a).r() != null && b1 != null)
            {
                bb.c.a(a).r().a(bb.b.a(b1), bb.c.a(a));
            }
            if (!bb.c.a(a).h())
            {
                com.chartboost.sdk.impl.bb.b(a.a).c((File)bb.k().get(bb.c.a(a)));
                bb.k().remove(bb.c.a(a));
                bb.a(a.a, bb.c.a(a), com.chartboost.sdk.impl.bb.b.b(b1), null, true);
                return;
            } else
            {
                com.chartboost.sdk.Tracking.a.a().m().c((File)bb.l().get(bb.c.a(a)));
                com.chartboost.sdk.Tracking.a.a().q();
                CBLogging.a("CBRequestManager", "### Removing track events sent to server...");
                bb.l().remove(bb.c.a(a));
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
            if (s1 instanceof bb.a)
            {
                cberror = bb.a.a((bb.a)s1);
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
                a(new bb.b(((com.chartboost.sdk.Libraries.e.a) (obj)), s1.a));
                return;
            }
            if (bb.c.a(a).r() != null)
            {
                bb.c.a(a).r().a(((com.chartboost.sdk.Libraries.e.a) (obj)), bb.c.a(a), cberror);
            }
            if (!bb.c.a(a).h())
            {
                bb.c.a(a).d(false);
                bb.a(a.a, bb.c.a(a), s1.a, cberror, false);
                return;
            } else
            {
                bb.l().remove(bb.c.a(a));
                return;
            }
        }

        protected void b(Object obj)
        {
            a((bb.b)obj);
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

        public a(int j, String s1, ba ba1)
        {
            a = bb.c.this;
            super(j, s1, null);
            b = ba1;
        }
    }


    final bb a;
    private ba b;

    static ba a(a.b b1)
    {
        return b1.b;
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
        obj = new a(1, ((String) (obj)), b);
        ((a) (obj)).a(new d(30000, 0, 0.0F));
        bb.a(a).a(((l) (obj)));
    }

    public a.b(bb bb1, ba ba1)
    {
        a = bb1;
        super();
        b = ba1;
    }
}
