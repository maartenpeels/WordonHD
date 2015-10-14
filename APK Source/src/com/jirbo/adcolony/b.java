// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.jirbo.adcolony:
//            l, a, f, k, 
//            ab, g, q, z, 
//            d, c, v, ADCDownload

class b
    implements ADCDownload.Listener
{

    d a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    double g;
    Handler h;
    Runnable i;
    n.e j;

    b(d d1)
    {
        e = true;
        f = false;
        j = new n.e();
        a = d1;
        if (Looper.myLooper() == null)
        {
            Looper.prepare();
        }
        h = new Handler();
        i = new Runnable() {

            final b a;

            public void run()
            {
                a.e = true;
                if (a.f)
                {
                    a.e();
                }
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    void a()
    {
    }

    boolean a(ADCData.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        if (!g1.e("status").equals("success"))
        {
            return false;
        }
        if (!j.a(g1.b("app")))
        {
            return false;
        }
        l.a.b("Finished parsing manifest");
        if (!j.h.equalsIgnoreCase("none"))
        {
            l.c.b("Enabling debug logging.");
            com.jirbo.adcolony.a.a(1);
        } else
        {
            com.jirbo.adcolony.a.a(2);
        }
        return true;
    }

    boolean a(String s)
    {
        return a(s, true);
    }

    boolean a(String s, boolean flag)
    {
        for (int i1 = 0; i1 < j.n.a(); i1++)
        {
            n.ab ab1 = j.n.a(i1);
            if (ab1.c(flag) && ab1.a.equals(s))
            {
                return true;
            }
        }

        return false;
    }

    void b()
    {
        f f1;
label0:
        {
            l.b.b("Attempting to load backup manifest from file.");
            f1 = new f("manifest.txt");
            ADCData.g g1 = k.b(f1);
            if (g1 != null)
            {
                if (!a(g1))
                {
                    break label0;
                }
                b = true;
                j.a();
            }
            return;
        }
        l.b.b("Invalid manifest loaded.");
        f1.c();
        b = false;
    }

    boolean b(String s)
    {
        return b(s, false);
    }

    boolean b(String s, boolean flag)
    {
        if (flag)
        {
            return c(s, flag);
        }
        if (!b)
        {
            return l.c.b("Ads are not ready to be played, as they are still downloading.");
        }
        if (flag)
        {
            return j.a(s, true, false);
        } else
        {
            return j.a(s, false, true);
        }
    }

    String c()
    {
        String s = null;
        if (!b)
        {
            return null;
        }
        for (int i1 = 0; i1 < j.n.a(); i1++)
        {
            n.ab ab1 = j.n.a(i1);
            if (!ab1.e())
            {
                continue;
            }
            s = ab1.a;
            if (ab1.a())
            {
                return ab1.a;
            }
        }

        return s;
    }

    boolean c(String s, boolean flag)
    {
        if (!b)
        {
            return false;
        }
        if (flag)
        {
            return j.a(s, true, false);
        } else
        {
            return j.a(s, false, true);
        }
    }

    String d()
    {
        String s = null;
        if (!b)
        {
            return null;
        }
        for (int i1 = 0; i1 < j.n.a(); i1++)
        {
            n.ab ab1 = j.n.a(i1);
            if (!ab1.g())
            {
                continue;
            }
            s = ab1.a;
            if (ab1.a())
            {
                return ab1.a;
            }
        }

        return s;
    }

    void e()
    {
        if (e || a.z)
        {
            e = false;
            c = true;
            f = false;
            h.postDelayed(i, 60000L);
            return;
        } else
        {
            f = true;
            return;
        }
    }

    void f()
    {
        if (ab.c() >= g)
        {
            c = true;
        }
        if (c)
        {
            c = false;
            if (com.jirbo.adcolony.g.c() >= 32)
            {
                g = ab.c() + 600D;
                g();
            }
        }
        if (!q.c())
        {
            if (a.C)
            {
                com.jirbo.adcolony.a.h();
            }
            a.C = false;
            return;
        }
        if (!a.C)
        {
            com.jirbo.adcolony.a.h();
        }
        a.C = true;
    }

    void g()
    {
        a.r = true;
        l.b.b("Refreshing manifest");
        if (!q.c())
        {
            l.b.b("Not connected to network.");
            l.a.a("attempted_load:").a(d).a(" is_configured:").b(b);
            if (!d)
            {
                d = true;
                if (!b)
                {
                    b();
                }
            }
            return;
        }
        z z1 = new z();
        Object obj = a.a;
        z1.a(c.c);
        z1.a("?app_id=");
        z1.a(a.a.j);
        z1.a("&zones=");
        if (a.a.k != null)
        {
            String as[] = a.a.k;
            int j1 = as.length;
            boolean flag = true;
            int i1 = 0;
            while (i1 < j1) 
            {
                String s = as[i1];
                if (flag)
                {
                    flag = false;
                } else
                {
                    z1.a(",");
                }
                z1.a(s);
                i1++;
            }
        }
        String s1;
        if (a.l.e.j == null)
        {
            as = "";
        } else
        {
            as = a.l.e.j;
        }
        s1 = (new StringBuilder()).append("").append(a.l.e.i).toString();
        z1.a(a.a.h);
        z1.a("&carrier=");
        z1.a(q.a(a.a.w));
        z1.a("&network_type=");
        if (q.a())
        {
            z1.a("wifi");
        } else
        if (q.b())
        {
            z1.a("cell");
        } else
        {
            z1.a("none");
        }
        z1.a("&custom_id=");
        z1.a(q.a(a.a.x));
        z1.a("&sid=");
        z1.a(as);
        z1.a("&s_imp_count=");
        z1.a(s1);
        l.b.b("Downloading ad manifest from");
        l.b.b(z1);
        (new ADCDownload(a, z1.toString(), this)).b();
    }

    public void on_download_finished(ADCDownload adcdownload)
    {
        a.r = true;
        ADCData.g g1;
        if (adcdownload.i)
        {
            l.c.b("Finished downloading:");
            l.c.b(adcdownload.c);
            g1 = k.b(adcdownload.n);
            if (g1 == null)
            {
                l.a.b("Invalid JSON in manifest.  Raw data:");
                l.a.b(adcdownload.n);
                return;
            }
        } else
        {
            l.c.b("Error downloading:");
            l.c.b(adcdownload.c);
            return;
        }
        if (a(g1))
        {
            l.b.b("Ad manifest updated.");
            (new f("manifest.txt")).a(adcdownload.n);
            b = true;
            j.a();
            if (j.i == null || j.i.equals(""))
            {
                j.i = "all";
            }
            if (j.j == null || j.j.equals(""))
            {
                j.j = "all";
            }
            com.jirbo.adcolony.a.h();
            return;
        } else
        {
            l.b.b("Invalid manifest.");
            return;
        }
    }
}
