// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.jirbo.adcolony:
//            ab, d, v, l, 
//            a, f, k

class t
{
    static class a
    {

        String a;
        int b;
        String c;
        double d;

        a(String s, double d1, String s1, int i)
        {
            c = s;
            d = d1;
            a = s1;
            b = i;
        }
    }


    d a;
    ArrayList b;
    HashMap c;
    HashMap d;
    boolean e;
    boolean f;

    t(d d1)
    {
        b = new ArrayList();
        c = new HashMap();
        d = new HashMap();
        e = false;
        f = false;
        a = d1;
    }

    int a(int i)
    {
        return a(i, 86400D);
    }

    int a(int i, double d1)
    {
        this;
        JVM INSTR monitorenter ;
        double d2;
        int i1;
        d2 = ab.c();
        i1 = b.size() - 1;
        int j = 0;
_L2:
        if (i1 < 0)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        double d3 = ((a)b.get(i1)).d;
        if (d3 >= d2 - d1)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        this;
        JVM INSTR monitorexit ;
        return j;
        int j1 = ((a)b.get(i1)).b;
        if (i == j1)
        {
            j++;
        }
        i1--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    int a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1;
        int j;
        s1 = a.e.j;
        j = b.size();
        int i;
        boolean flag;
        i = 0;
        flag = false;
        j--;
_L9:
        if (j < 0) goto _L2; else goto _L1
_L1:
        if (b.get(j) == null) goto _L2; else goto _L3
_L3:
        String s2 = ((a)b.get(j)).c;
        if (s2 != null) goto _L4; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return i;
_L4:
        if (!((a)b.get(j)).c.equals(s1)) goto _L6; else goto _L5
_L5:
        boolean flag1 = ((a)b.get(j)).a.equals(s);
        if (flag1)
        {
            i++;
            flag = true;
        } else
        {
            flag = true;
        }
        j--;
        continue; /* Loop/switch isn't completed */
_L6:
        if (flag) goto _L2; else goto _L7
_L7:
        break MISSING_BLOCK_LABEL_133;
        s;
        throw s;
        if (true) goto _L9; else goto _L8
_L8:
    }

    int a(String s, double d1)
    {
        this;
        JVM INSTR monitorenter ;
        double d2;
        int j;
        d2 = ab.c();
        j = b.size() - 1;
        int i = 0;
_L2:
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        double d3 = ((a)b.get(j)).d;
        if (d3 >= d2 - d1)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        this;
        JVM INSTR monitorexit ;
        return i;
        boolean flag = s.equals(((a)b.get(j)).a);
        if (flag)
        {
            i++;
        }
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        throw s;
    }

    void a()
    {
        b();
        e = false;
    }

    void a(String s, int i)
    {
        l.a.b("Adding play event to play history");
        e = true;
        b.add(new a(a.e.j, ab.c(), s, i));
        s = (Integer)c.get(Integer.valueOf(i));
        l.a.a("Got play count of ").a(s).b(" for this ad");
        if (s == null)
        {
            c.put(Integer.valueOf(i), Integer.valueOf(1));
            return;
        } else
        {
            c.put(Integer.valueOf(i), Integer.valueOf(s.intValue() + 1));
            return;
        }
    }

    int b(int i)
    {
        return a(i, 604800D);
    }

    int b(String s)
    {
        return a(s, 86400D);
    }

    void b()
    {
        com.jirbo.adcolony.a.r = true;
        ADCData.g g;
        if (!f || ((a)b.get(b.size() - 1)).c != a.e.j)
        {
            if ((g = k.b(new f("play_history_info.txt"))) != null)
            {
                b.clear();
                d = new HashMap();
                Object obj = g.b("reward_credit");
                for (int i = 0; i < ((ADCData.g) (obj)).o(); i++)
                {
                    String s = ((ADCData.g) (obj)).a(i);
                    int j1 = ((ADCData.g) (obj)).g(s);
                    d.put(s, Integer.valueOf(j1));
                }

                obj = g.c("play_events");
                for (int j = 0; j < ((ADCData.c) (obj)).i(); j++)
                {
                    ADCData.g g1 = ((ADCData.c) (obj)).b(j);
                    double d1 = g1.f("timestamp");
                    String s1 = g1.e("zone_id");
                    int k1 = g1.g("ad_id");
                    if (d1 != 0.0D && s1 != null && k1 != 0)
                    {
                        b.add(new a(null, d1, s1, k1));
                    }
                }

                c = new HashMap();
                g = g.b("play_counts");
                for (int i1 = 0; i1 < g.o(); i1++)
                {
                    int l1 = Integer.parseInt(g.a(i1));
                    int i2 = g.g((new StringBuilder()).append("").append(l1).toString());
                    c.put(Integer.valueOf(l1), Integer.valueOf(i2));
                }

                f = true;
                return;
            }
        }
    }

    void b(String s, int i)
    {
        d.put(s, Integer.valueOf(i));
        e = true;
    }

    int c(int i)
    {
        return a(i, 2628000D);
    }

    int c(String s)
    {
        s = (Integer)d.get(s);
        if (s == null)
        {
            return 0;
        } else
        {
            return s.intValue();
        }
    }

    void c()
    {
        Object obj = new ADCData.c();
        ADCData.g g = new ADCData.g();
        ADCData.g g1 = new ADCData.g();
        double d1 = ab.c();
        int i = b.size() - 1;
label0:
        do
        {
            a a1;
label1:
            {
                if (i >= 0)
                {
                    a1 = (a)b.get(i);
                    if (a1.d >= d1 - 2678400D)
                    {
                        break label1;
                    }
                }
                g.a("play_events", ((ADCData.i) (obj)));
                int j;
                for (obj = c.keySet().iterator(); ((Iterator) (obj)).hasNext(); g1.b((new StringBuilder()).append("").append(i).toString(), j))
                {
                    i = ((Integer)((Iterator) (obj)).next()).intValue();
                    j = ((Integer)c.get(Integer.valueOf(i))).intValue();
                }

                break label0;
            }
            ADCData.g g2 = new ADCData.g();
            g2.b("zone_id", a1.a);
            g2.b("ad_id", a1.b);
            g2.b("timestamp", a1.d);
            ((ADCData.c) (obj)).a(g2);
            i--;
        } while (true);
        g.a("play_counts", g1);
        g1 = new ADCData.g();
        if (d.size() > 0)
        {
            String s;
            for (Iterator iterator = d.keySet().iterator(); iterator.hasNext(); g1.b(s, ((Integer)d.get(s)).intValue()))
            {
                s = (String)iterator.next();
            }

        }
        g.a("reward_credit", g1);
        l.a.a("Saving play history");
        k.a(new f("play_history_info.txt"), g);
    }

    int d(int i)
    {
        return a(i, 15768000D);
    }

    void d()
    {
        if (e)
        {
            e = false;
            c();
        }
    }
}
