// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, t, 
//            l, ah, ag, b

static class ta.g
{

    String a;
    int b;
    int c;
    int d;
    boolean e;
    boolean f;
    ArrayList g;
     h;
     i;
     j;
    ag k;

    int a(int i1, int j1)
    {
        if (j1 <= 0)
        {
            return 0;
        }
        if (i1 == -1)
        {
            return j1;
        }
        if (i1 < j1)
        {
            return i1;
        } else
        {
            return j1;
        }
    }

    int a(ta.g g1)
    {
        this;
        JVM INSTR monitorenter ;
        int k1 = a.l.h.b(a);
        int i1 = -1;
        int j1 = g1..;
        if (j1 == 0) goto _L2; else goto _L1
_L1:
        if (a.ab == 0L || (System.currentTimeMillis() - a.ab) / 1000L < (long)j1) goto _L2; else goto _L3
_L3:
        c();
        a.ac = 7;
        i1 = l.c.c("The volatile expiration for this ad has been hit.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return i1;
_L2:
        j1 = g1..;
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        i1 = a(-1, j1 - a.l.h.a(g1., (System.currentTimeMillis() - a.ab) / 1000L));
        if (i1 != 0 || j1 == 0)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        c();
        a.ac = 7;
        i1 = l.c.c("Ad is not ready to be played due to the volatile play cap.");
          goto _L4
        int l1 = c;
        j1 = i1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        j1 = a(i1, l1 - k1);
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        a.ac = 5;
        i1 = l.c.c((new StringBuilder()).append("Ad is not ready to be played due to the daily play cap for zone ").append(a).toString());
          goto _L4
        l1 = d;
        i1 = j1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        i1 = a(j1, l1 - a.l.h.a(a));
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        a.ac = 3;
        i1 = l.c.c((new StringBuilder()).append("Ad is not ready to be played due to the session play cap for zone ").append(a).toString());
          goto _L4
        if (!j.a)
        {
            break MISSING_BLOCK_LABEL_735;
        }
        j1 = j.b.;
        if (j1 <= 0) goto _L6; else goto _L5
_L5:
        j1 = a(i1, j1 - k1);
_L8:
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_346;
        }
        a.ac = 4;
        i1 = l.c.c("Ad is not ready to be played due to the V4VC daily play cap.");
          goto _L4
        k1 = j.b.;
        l1 = j.b.;
        i1 = j1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_402;
        }
        i1 = a(j1, l1 - a.l.h.a(a, k1));
        j1 = i1;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_424;
        }
        a.ac = 4;
        i1 = l.c.c("Ad is not ready to be played due to the V4VC custom play cap.");
          goto _L4
_L9:
        k1 = g1.;
        l1 = g1..;
        i1 = j1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_466;
        }
        i1 = a(j1, l1 - a.l.h.a(k1));
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_491;
        }
        a.ac = 7;
        c();
        i1 = l.c.c("Ad is not ready to be played due to the daily play cap.");
          goto _L4
        l1 = g1..;
        j1 = i1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_527;
        }
        j1 = a(i1, l1 - a.l.h.b(k1));
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_552;
        }
        a.ac = 7;
        c();
        i1 = l.c.c("Ad is not ready to be played due to the weekly play cap.");
          goto _L4
        l1 = g1..;
        i1 = j1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_588;
        }
        i1 = a(j1, l1 - a.l.h.c(k1));
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_613;
        }
        a.ac = 7;
        c();
        i1 = l.c.c("Ad is not ready to be played due to the monthly play cap.");
          goto _L4
        l1 = g1..;
        j1 = i1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_649;
        }
        j1 = a(i1, l1 - a.l.h.d(k1));
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_674;
        }
        a.ac = 7;
        c();
        i1 = l.c.c("Ad is not ready to be played due to the half-year play cap.");
          goto _L4
        int i2;
        l1 = g1..;
        i2 = g1..;
        i1 = j1;
        if (i2 <= 0) goto _L4; else goto _L7
_L7:
        i1 = a(j1, i2 - a.l.h.a(k1, l1));
          goto _L4
        g1;
        throw g1;
_L6:
        j1 = i1;
          goto _L8
        j1 = i1;
          goto _L9
    }

    boolean a()
    {
        return a(false, true);
    }

    boolean a(ta.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.e("uuid");
        e = g1.h("enabled");
        f = g1.h("active");
        if (!e || !f)
        {
            return true;
        }
        b = g1.g("play_interval");
        c = g1.g("daily_play_cap");
        d = g1.g("session_play_cap");
        g = new ArrayList();
        ArrayList arraylist = g1.d("play_order");
        g = arraylist;
        if (arraylist == null)
        {
            return false;
        }
        h = new <init>();
        if (!h.a(g1.b("tracking")))
        {
            return false;
        }
        i = new init>();
        if (!i.(g1.c("ads")))
        {
            return false;
        }
        j = new <init>();
        if (!j.a(g1.b("v4vc")))
        {
            return false;
        } else
        {
            k = a.l.g.a(a);
            return true;
        }
    }

    boolean a(boolean flag)
    {
        int i1;
        int j1;
        if (!flag)
        {
            com.jirbo.adcolony.a.h();
        }
        if (!e || !f)
        {
            return false;
        }
        if (i.() == 0 || g.size() == 0)
        {
            return false;
        }
        j1 = g.size();
        i1 = 0;
_L4:
        a a1;
label0:
        {
            if (i1 >= j1)
            {
                break MISSING_BLOCK_LABEL_109;
            }
            a1 = i();
            if (a1 == null)
            {
                return false;
            }
            if (a1.())
            {
                break label0;
            } else
            {
                k();
                i1++;
                continue; /* Loop/switch isn't completed */
            }
        }
_L2:
        if (a1 == null)
        {
            return false;
        }
        return a(a1) != 0;
        a1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    boolean a(boolean flag, boolean flag1)
    {
        int i1;
        int j1;
        if (!flag1)
        {
            return a(flag);
        }
        if (!e || !f)
        {
            a.ac = 1;
            return l.c.b((new StringBuilder()).append("Ad is not ready to be played, as zone ").append(a).append(" is disabled or inactive.").toString());
        }
        if (i.() == 0 || g.size() == 0)
        {
            a.ac = 5;
            return l.c.b((new StringBuilder()).append("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone ").append(a).append(".").toString());
        }
        j1 = g.size();
        i1 = 0;
_L4:
        a a1;
label0:
        {
            if (i1 >= j1)
            {
                break MISSING_BLOCK_LABEL_213;
            }
            a1 = i();
            if (a1 == null)
            {
                return l.c.b("Ad is not ready to be played due to an unknown error.");
            }
            if (a1.())
            {
                break label0;
            } else
            {
                k();
                i1++;
                continue; /* Loop/switch isn't completed */
            }
        }
_L2:
        if (a1 == null)
        {
            a.ac = 6;
            return l.c.b("Ad is not ready to be played as required assets are still downloading or otherwise missing.");
        }
        return a(a1) != 0;
        a1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    boolean b()
    {
        if (b <= 1)
        {
            return false;
        }
        a.l.g.b = true;
        ag ag1 = k;
        int i1 = ag1.b;
        ag1.b = i1 + 1;
        if (i1 == 0)
        {
            return false;
        }
        if (k.b >= b)
        {
            k.b = 0;
        }
        return true;
    }

    boolean b(boolean flag)
    {
        if (!flag)
        {
            return f();
        }
        if (!e || !f)
        {
            a.ac = 1;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is disabled or inactive.").toString());
        }
        if (i.() == 0)
        {
            a.ac = 5;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as there are currently no ads to play in zone ").append(a).append(".").toString());
        }
        if (i.()..)
        {
            a.ac = 14;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is V4VC enabled and must be played using an AdColonyV4VCAd object.").toString());
        } else
        {
            return true;
        }
    }

    void c()
    {
        a.l.b.e();
    }

    boolean c(boolean flag)
    {
        if (!flag)
        {
            return h();
        }
        if (!e || !f)
        {
            a.ac = 1;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is disabled or inactive.").toString());
        }
        if (i.() == 0)
        {
            a.ac = 5;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as there are currently no ads to play in zone ").append(a).append(".").toString());
        }
        if (i.()..)
        {
            return true;
        } else
        {
            a.ac = 15;
            return l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is not V4VC enabled and must be played using an AdColonyVideoAd object.").toString());
        }
    }

    int d()
    {
        this;
        JVM INSTR monitorenter ;
        int i1 = a(i());
        this;
        JVM INSTR monitorexit ;
        return i1;
        Exception exception;
        exception;
        throw exception;
    }

    boolean e()
    {
        return b(true);
    }

    boolean f()
    {
        if (!e || !f)
        {
            return false;
        }
        if (i.() == 0)
        {
            return false;
        }
        return !i.()..;
    }

    boolean g()
    {
        return c(true);
    }

    boolean h()
    {
        if (!e || !f)
        {
            return false;
        }
        if (i.() == 0)
        {
            return false;
        }
        return i.()..;
    }

     i()
    {
        if (g.size() > 0)
        {
            return i.((String)g.get(k.c % g.size()));
        } else
        {
            return null;
        }
    }

     j()
    {
        if (g.size() > 0)
        {
            return i.(k.c % g.size());
        } else
        {
            return null;
        }
    }

    void k()
    {
        if (g.size() > 0)
        {
            k.c = (k.c + 1) % g.size();
        }
    }

    void l()
    {
        if (e && f)
        {
            int i1 = 0;
            while (i1 < i.()) 
            {
                i.(i1).();
                i1++;
            }
        }
    }

    ta.g()
    {
    }
}
