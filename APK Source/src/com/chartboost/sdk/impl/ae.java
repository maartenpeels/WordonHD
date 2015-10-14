// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.Model.b;
import com.chartboost.sdk.d;
import org.json.JSONArray;

// Referenced classes of package com.chartboost.sdk.impl:
//            be, ba

public class ae extends d
{

    private static final String b = com/chartboost/sdk/impl/ae.getSimpleName();
    private static ae c;

    protected ae()
    {
    }

    public static ae f()
    {
        if (c == null)
        {
            c = new ae();
        }
        return c;
    }

    protected a a(String s, boolean flag)
    {
        return new a(com.chartboost.sdk.Model.a.c.a, flag, s, false);
    }

    protected void a(a a1, com.chartboost.sdk.Libraries.e.a a2)
    {
        if (b(a1, a2) && !be.c(a2))
        {
            CBLogging.b(b, "Video is unavailable so cannot show the video impression");
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.VIDEO_UNAVAILABLE);
            if (a1.f)
            {
                a1.a(a2);
                com.chartboost.sdk.impl.be.a(a1);
            }
            com.chartboost.sdk.impl.be.b();
            return;
        }
        if (a2.c() && a2.a("videos").c())
        {
            com.chartboost.sdk.impl.be.a(a2.a("videos"));
        }
        super.a(a1, a2);
    }

    protected boolean b(a a1, com.chartboost.sdk.Libraries.e.a a2)
    {
        return a2.a("media-type").equals("video");
    }

    protected com.chartboost.sdk.d.a c()
    {
        return new com.chartboost.sdk.d.a() {

            final ae a;

            public void a(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didClickInterstitial(a1.d);
                }
            }

            public void a(a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didFailToLoadInterstitial(a1.d, cbimpressionerror);
                }
            }

            public void b(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCloseInterstitial(a1.d);
                }
            }

            public void c(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDismissInterstitial(a1.d);
                }
            }

            public void d(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCacheInterstitial(a1.d);
                }
            }

            public void e(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDisplayInterstitial(a1.d);
                }
            }

            public boolean f(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.d().shouldDisplayInterstitial(a1.d);
                } else
                {
                    return true;
                }
            }

            public boolean g(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.d().shouldRequestInterstitial(a1.d);
                } else
                {
                    return true;
                }
            }

            public boolean h(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.r();
                } else
                {
                    return true;
                }
            }

            
            {
                a = ae.this;
                super();
            }
        };
    }

    protected ba e(a a1)
    {
        a1 = new ba("/interstitial/get");
        a1.a(l.a.c);
        a1.a(b.b);
        a1.a("local-videos", g());
        return a1;
    }

    public String e()
    {
        return "interstitial";
    }

    public JSONArray g()
    {
        JSONArray jsonarray = new JSONArray();
        String as[] = be.c();
        if (as != null)
        {
            int k = as.length;
            for (int j = 0; j < k; j++)
            {
                jsonarray.put(as[j]);
            }

        }
        return jsonarray;
    }

    protected void i(a a1)
    {
        if (a1.e == com.chartboost.sdk.Model.a.d.b)
        {
            return;
        } else
        {
            super.i(a1);
            return;
        }
    }

    protected ba l(a a1)
    {
        return new ba("/interstitial/show");
    }

    public void r(a a1)
    {
        if (!a1.w().b())
        {
            super.a(a1, a1.w());
        } else
        if (!c(a1.d) && !a1.q)
        {
            a(e(a1), a1);
            return;
        }
    }

}
