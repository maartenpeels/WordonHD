// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.Model.b;
import com.chartboost.sdk.d;

// Referenced classes of package com.chartboost.sdk.impl:
//            ae, be, ba, bm

public class af extends ae
{

    private static af b;
    private static String c = "CBRewardedVideo";

    private af()
    {
    }

    static Context a(af af1)
    {
        return af1.d();
    }

    static void a(af af1, a a1)
    {
        af1.d.h(a1);
    }

    static void a(af af1, a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        af1.a(a1, cbimpressionerror);
    }

    static Context b(af af1)
    {
        return af1.d();
    }

    static void b(af af1, a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        af1.a(a1, cbimpressionerror);
    }

    public static af h()
    {
        if (b == null)
        {
            b = new af();
        }
        return b;
    }

    static String i()
    {
        return c;
    }

    protected a a(String s1, boolean flag)
    {
        return new a(com.chartboost.sdk.Model.a.c.c, flag, s1, false);
    }

    protected boolean b(a a1, com.chartboost.sdk.Libraries.e.a a2)
    {
        return true;
    }

    protected com.chartboost.sdk.d.a c()
    {
        return new com.chartboost.sdk.d.a() {

            final af a;

            public void a(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didClickRewardedVideo(a1.d);
                }
            }

            public void a(a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didFailToLoadRewardedVideo(a1.d, cbimpressionerror);
                }
            }

            public void b(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCloseRewardedVideo(a1.d);
                }
            }

            public void c(a a1)
            {
                a.s(a1);
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDismissRewardedVideo(a1.d);
                }
            }

            public void d(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCacheRewardedVideo(a1.d);
                }
            }

            public void e(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDisplayRewardedVideo(a1.d);
                }
            }

            public boolean f(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.d().shouldDisplayRewardedVideo(a1.d);
                } else
                {
                    return true;
                }
            }

            public boolean g(a a1)
            {
                return true;
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
                a = af.this;
                super();
            }
        };
    }

    protected boolean d(a a1)
    {
        return !com.chartboost.sdk.impl.be.b(a1);
    }

    protected ba e(a a1)
    {
        a1 = new ba("/reward/get");
        a1.a(l.a.c);
        a1.a(b.b);
        a1.a("local-videos", h().g());
        return a1;
    }

    public String e()
    {
        return "rewarded-video";
    }

    protected void g(a a1)
    {
        if (!be.c(a1.w()))
        {
            CBLogging.b(c, "Video not available in the cache, so cannot show rewarded video");
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.VIDEO_UNAVAILABLE);
            com.chartboost.sdk.impl.be.b();
            return;
        } else
        {
            super.g(a1);
            return;
        }
    }

    protected void h(a a1)
    {
        com.chartboost.sdk.Libraries.e.a a2 = a1.w().a("ux").a("pre-popup");
        if (a2.c() && a2.a("title").d() && a2.a("text").d() && a2.a("confirm").d() && a2.a("cancel").d() && d() != null)
        {
            a.post(new Runnable(a2, a1) {

                final com.chartboost.sdk.Libraries.e.a a;
                final a b;
                final af c;

                public void run()
                {
                    bm.a a3 = new bm.a();
                    a3.a(a.e("title")).b(a.e("text")).d(a.e("confirm")).c(a.e("cancel"));
                    a3.a(com.chartboost.sdk.impl.af.a(c), new bm.b(this) {

                        final _cls1 a;

                        public void a(bm bm)
                        {
                            com.chartboost.sdk.impl.af.a(a.c, a.b, com.chartboost.sdk.Model.CBError.CBImpressionError.USER_CANCELLATION);
                        }

                        public void a(bm bm, int j)
                        {
                            if (j == 1)
                            {
                                com.chartboost.sdk.impl.af.a(a.c, a.b);
                                return;
                            } else
                            {
                                com.chartboost.sdk.impl.af.b(a.c, a.b, com.chartboost.sdk.Model.CBError.CBImpressionError.USER_CANCELLATION);
                                return;
                            }
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }

            
            {
                c = af.this;
                a = a1;
                b = a2;
                super();
            }
            });
            return;
        } else
        {
            super.h(a1);
            return;
        }
    }

    protected void i(a a1)
    {
    }

    protected ba l(a a1)
    {
        a1 = super.l(a1);
        a1.a("/reward/show");
        return a1;
    }

    protected void s(a a1)
    {
        com.chartboost.sdk.Libraries.e.a a2 = a1.w().a("ux").a("post-popup");
        if (a2.c() && a2.a("title").d() && a2.a("text").d() && a2.a("confirm").d() && d() != null && a1.l)
        {
            a.post(new Runnable(a2) {

                final com.chartboost.sdk.Libraries.e.a a;
                final af b;

                public void run()
                {
                    bm.a a3 = new bm.a();
                    a3.a(a.e("title")).b(a.e("text")).c(a.e("confirm"));
                    a3.a(com.chartboost.sdk.impl.af.b(b), new bm.b(this) {

                        final _cls2 a;

                        public void a(bm bm, int j)
                        {
                            CBLogging.c(af.i(), "post-popup dismissed");
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                }

            
            {
                b = af.this;
                a = a1;
                super();
            }
            });
        }
    }

}
