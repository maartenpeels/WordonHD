// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.graphics.Bitmap;
import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            AdColonyAd, a, ab, AdColonyAdListener, 
//            AdColonyBrowser, ac, ad, d, 
//            l, j, u

public final class AdColonyV4VCAd extends AdColonyAd
{

    AdColonyAdListener v;
    boolean w;
    boolean x;
    boolean y;

    public AdColonyV4VCAd()
    {
        w = false;
        x = false;
        a.u = false;
        com.jirbo.adcolony.a.e();
        j = "v4vc";
        y = false;
        k = "fullscreen";
        l = ab.b();
    }

    public AdColonyV4VCAd(String s)
    {
        w = false;
        x = false;
        com.jirbo.adcolony.a.e();
        g = s;
        j = "v4vc";
        y = false;
        k = "fullscreen";
        l = ab.b();
    }

    void a()
    {
        if (f == 4 && x)
        {
            a("Result");
        }
        if (v != null)
        {
            v.onAdColonyAdAttemptFinished(this);
        }
        com.jirbo.adcolony.a.h();
        if (!a.u && !AdColonyBrowser.B)
        {
            for (int i = 0; i < a.ad.size(); i++)
            {
                ((Bitmap)a.ad.get(i)).recycle();
            }

            a.ad.clear();
        }
        a.K = null;
        if (!x)
        {
            a.v = true;
        }
        System.gc();
    }

    void a(String s)
    {
        String s1 = getRewardName();
        String s2 = (new StringBuilder()).append("").append(getRewardAmount()).toString();
        s1 = (new StringBuilder()).append(s2).append(" ").append(s1).toString();
        if (s.equals("Confirmation"))
        {
            a.I = new ac(s1, this);
            return;
        } else
        {
            a.I = new ad(s1, this);
            return;
        }
    }

    boolean a(boolean flag)
    {
        return false;
    }

    boolean b()
    {
        return true;
    }

    void c(boolean flag)
    {
        if (flag)
        {
            if (a.l.b(this))
            {
                if (v != null)
                {
                    v.onAdColonyAdStarted(this);
                }
                f = 4;
            } else
            {
                f = 3;
            }
        } else
        {
            f = 1;
        }
        if (f != 4 && v != null)
        {
            v.onAdColonyAdAttemptFinished(this);
        }
    }

    public int getRemainingViewsUntilReward()
    {
        if (!c())
        {
            return 0;
        } else
        {
            return h.j.f - a.l.e(h.j.d);
        }
    }

    public int getRewardAmount()
    {
        if (!c())
        {
            return 0;
        } else
        {
            return h.j.c;
        }
    }

    public String getRewardName()
    {
        if (!c())
        {
            return "";
        } else
        {
            return h.j.d;
        }
    }

    public int getViewsPerReward()
    {
        if (!c())
        {
            return 0;
        } else
        {
            return h.j.f;
        }
    }

    public boolean isReady()
    {
        if (g == null)
        {
            g = a.l.f();
            if (g == null)
            {
                return false;
            }
        }
        return a.l.g(g);
    }

    public void show()
    {
        a.ac = 0;
        if (!y) goto _L2; else goto _L1
_L1:
        l.d.b("Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt.");
_L4:
        return;
_L2:
        y = true;
        if (isReady())
        {
            continue; /* Loop/switch isn't completed */
        }
        new j(a.l) {

            final AdColonyV4VCAd a;

            void a()
            {
                if (a.g != null)
                {
                    o.d.a(a.g, a);
                }
            }

            
            {
                a = AdColonyV4VCAd.this;
                super(d1);
            }
        };
        f = 2;
        if (v == null) goto _L4; else goto _L3
_L3:
        v.onAdColonyAdAttemptFinished(this);
        return;
        if (!a.v) goto _L4; else goto _L5
_L5:
        new j(a.l) {

            final AdColonyV4VCAd a;

            void a()
            {
                o.d.a(a.g, a);
            }

            
            {
                a = AdColonyV4VCAd.this;
                super(d1);
            }
        };
        a.v = false;
        c();
        a.J = this;
        a.l.a(this);
        if (w)
        {
            a("Confirmation");
            return;
        } else
        {
            c(true);
            return;
        }
    }

    public AdColonyV4VCAd withConfirmationDialog()
    {
        return withConfirmationDialog(true);
    }

    public AdColonyV4VCAd withConfirmationDialog(boolean flag)
    {
        w = flag;
        return this;
    }

    public AdColonyV4VCAd withListener(AdColonyAdListener adcolonyadlistener)
    {
        v = adcolonyadlistener;
        return this;
    }

    public AdColonyV4VCAd withResultsDialog()
    {
        return withResultsDialog(true);
    }

    public AdColonyV4VCAd withResultsDialog(boolean flag)
    {
        x = flag;
        a.u = x;
        return this;
    }
}
