// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.SurfaceView;
import android.view.Window;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.k;
import com.chartboost.sdk.Tracking.a;
import com.chartboost.sdk.impl.ae;
import com.chartboost.sdk.impl.af;
import com.chartboost.sdk.impl.aw;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.bd;
import com.chartboost.sdk.impl.be;
import com.chartboost.sdk.impl.bh;
import com.chartboost.sdk.impl.bq;
import com.chartboost.sdk.impl.m;
import java.util.Locale;

// Referenced classes of package com.chartboost.sdk:
//            b, e, c, CBImpressionActivity, 
//            a, ChartboostDelegate

public final class Chartboost
{
    public static final class CBFramework extends Enum
    {

        public static final CBFramework CBFrameworkAir;
        public static final CBFramework CBFrameworkCocoonJS;
        public static final CBFramework CBFrameworkCordova;
        public static final CBFramework CBFrameworkCorona;
        public static final CBFramework CBFrameworkGameSalad;
        public static final CBFramework CBFrameworkUnity;
        private static final CBFramework b[];
        private final String a;

        public static CBFramework valueOf(String s)
        {
            return (CBFramework)Enum.valueOf(com/chartboost/sdk/Chartboost$CBFramework, s);
        }

        public static CBFramework[] values()
        {
            return (CBFramework[])b.clone();
        }

        public String toString()
        {
            return a;
        }

        static 
        {
            CBFrameworkUnity = new CBFramework("CBFrameworkUnity", 0, "Unity");
            CBFrameworkCorona = new CBFramework("CBFrameworkCorona", 1, "Corona");
            CBFrameworkAir = new CBFramework("CBFrameworkAir", 2, "AIR");
            CBFrameworkGameSalad = new CBFramework("CBFrameworkGameSalad", 3, "GameSalad");
            CBFrameworkCordova = new CBFramework("CBFrameworkCordova", 4, "Cordova");
            CBFrameworkCocoonJS = new CBFramework("CBFrameworkCocoonJS", 5, "CocoonJS");
            b = (new CBFramework[] {
                CBFrameworkUnity, CBFrameworkCorona, CBFrameworkAir, CBFrameworkGameSalad, CBFrameworkCordova, CBFrameworkCocoonJS
            });
        }

        private CBFramework(String s, int i1, String s1)
        {
            super(s, i1);
            a = s1;
        }
    }

    private static class a
        implements Runnable
    {

        private int a;
        private int b;
        private int c;

        private com.chartboost.sdk.a a()
        {
            return com.chartboost.sdk.b.d();
        }

        public void run()
        {
            com.chartboost.sdk.a a1 = a();
            if (com.chartboost.sdk.b.l() != null)
            {
                Chartboost.clearCache();
            }
            if (Chartboost.b != null && Chartboost.b.hashCode() == b)
            {
                Chartboost.b = null;
            }
            if (com.chartboost.sdk.Chartboost.k() != null && com.chartboost.sdk.Chartboost.k().hashCode() == a)
            {
                Chartboost.b(null);
            }
            if (a1 != null && a1.hashCode() == c)
            {
                com.chartboost.sdk.b.a(null);
            }
        }

        private a()
        {
            com.chartboost.sdk.a a1 = a();
            int i1;
            if (com.chartboost.sdk.Chartboost.k() == null)
            {
                i1 = -1;
            } else
            {
                i1 = com.chartboost.sdk.Chartboost.k().hashCode();
            }
            a = i1;
            if (Chartboost.b == null)
            {
                i1 = -1;
            } else
            {
                i1 = Chartboost.b.hashCode();
            }
            b = i1;
            if (a1 == null)
            {
                i1 = -1;
            } else
            {
                i1 = a1.hashCode();
            }
            c = i1;
        }

    }


    protected static Handler a;
    protected static k b = null;
    private static volatile Chartboost c = null;
    private static CBImpressionActivity d = null;
    private static com.chartboost.sdk.Model.a e = null;
    private static az f = null;
    private static bb g = null;
    private static m h = null;
    private static com.chartboost.sdk.Tracking.a i = null;
    private static boolean j = false;
    private static SparseBooleanArray k = new SparseBooleanArray();
    private static e l = null;
    private static com.chartboost.sdk.c m = null;
    private static boolean n = false;
    private static Runnable o;

    private Chartboost(Activity activity, String s, String s1)
    {
        b.b = activity.getApplication();
        com.chartboost.sdk.b.a = activity.getApplicationContext();
        c = this;
        a = new Handler();
        CBUtility.a(a);
        f = az.a();
        l = com.chartboost.sdk.e.a();
        g = bb.a(com.chartboost.sdk.b.a);
        h = g.a();
        m = com.chartboost.sdk.c.a();
        i = com.chartboost.sdk.Tracking.a.a();
        f.a(com.chartboost.sdk.b.a);
        be.a();
        o = new a();
        com.chartboost.sdk.b.a(s);
        com.chartboost.sdk.b.b(s1);
        com.chartboost.sdk.Libraries.c.a();
    }


    static Chartboost a(Chartboost chartboost)
    {
        c = chartboost;
        return chartboost;
    }

    protected static void a()
    {
        if (com.chartboost.sdk.b.a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling startSession().");
        } else
        {
            com.chartboost.sdk.b.c(true);
            i.h();
            com.chartboost.sdk.Tracking.a.b();
            com.chartboost.sdk.b.a(new b.a(com.chartboost.sdk.Tracking.a.i()) {

                final boolean a;

                public void a()
                {
                    if (a)
                    {
                        be.b();
                        ba ba1 = new ba("api/install");
                        ba1.b(Chartboost.getValidContext());
                        ba1.a(true);
                        ba1.a(new com.chartboost.sdk.Libraries.g.k[] {
                            com.chartboost.sdk.Libraries.g.a("status", com.chartboost.sdk.Libraries.a.a)
                        });
                        ba1.a(new com.chartboost.sdk.impl.ba.d(this) {

                            final _cls6 a;

                            public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba)
                            {
                                if (CBUtility.a(com.chartboost.sdk.b.l()))
                                {
                                    a1 = a1.e("latest-sdk-version");
                                    if (!TextUtils.isEmpty(a1) && !a1.equals("5.1.0"))
                                    {
                                        CBLogging.a(String.format(Locale.US, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios", new Object[] {
                                            "5.1.0", a1
                                        }));
                                    }
                                }
                            }

            
            {
                a = _pcls6;
                super();
            }
                        });
                    }
                }

            
            {
                a = flag;
                super();
            }
            });
            return;
        }
    }

    private static void a(int i1, boolean flag)
    {
        k.put(i1, flag);
    }

    protected static void a(Activity activity)
    {
        com.chartboost.sdk.b.a = activity.getApplicationContext();
        if (!(activity instanceof CBImpressionActivity))
        {
            b = com.chartboost.sdk.Libraries.k.a(activity);
            c(b, true);
        } else
        {
            a((CBImpressionActivity)activity);
        }
        a.removeCallbacks(o);
        if (activity != null && e(activity))
        {
            b(com.chartboost.sdk.Libraries.k.a(activity), true);
            if (activity instanceof CBImpressionActivity)
            {
                n = false;
            }
            m.a(activity, e);
            e = null;
            activity = m.c();
            if (activity != null)
            {
                activity.u();
                return;
            }
        }
    }

    static void a(Activity activity, boolean flag)
    {
        b(activity, flag);
    }

    protected static void a(CBImpressionActivity cbimpressionactivity)
    {
        if (!j)
        {
            com.chartboost.sdk.b.a = cbimpressionactivity.getApplicationContext();
            d = cbimpressionactivity;
            j = true;
        }
        a.removeCallbacks(o);
    }

    protected static void a(k k1)
    {
        k1 = com.chartboost.sdk.c.a().c();
        if (com.chartboost.sdk.b.a() != null && com.chartboost.sdk.b.a().ordinal() == CBFramework.CBFrameworkUnity.ordinal())
        {
            a();
        }
        if (k1 != null)
        {
            k1.t();
        }
    }

    static void a(k k1, boolean flag)
    {
        c(k1, flag);
    }

    protected static void a(com.chartboost.sdk.Model.a a1)
    {
        Object obj = e();
        if (obj != null && ((e) (obj)).c() && ((e) (obj)).d().h() != a1)
        {
            a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return;
        }
        if (com.chartboost.sdk.b.e())
        {
            if (j)
            {
                if (c() != null && obj != null)
                {
                    ((e) (obj)).a(a1);
                    return;
                }
                if (c() == null)
                {
                    CBLogging.b("Chartboost", "Activity not found to display the view");
                    a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY);
                } else
                {
                    CBLogging.b("Chartboost", "Missing view controller to manage the open impression activity");
                }
                a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.ERROR_DISPLAYING_VIEW);
                return;
            }
            if (!l())
            {
                a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY);
                return;
            }
            obj = getHostActivity();
            if (obj == null)
            {
                CBLogging.b("Chartboost", "Failed to display impression as the host activity reference has been lost!");
                a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY);
                return;
            }
            if (e != null && e != a1)
            {
                a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
                return;
            }
            e = a1;
            a1 = new Intent(((Context) (obj)), com/chartboost/sdk/CBImpressionActivity);
            boolean flag;
            boolean flag1;
            boolean flag2;
            if ((((Activity) (obj)).getWindow().getAttributes().flags & 0x400) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if ((((Activity) (obj)).getWindow().getAttributes().flags & 0x800) != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag && !flag1)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            a1.putExtra("paramFullscreen", flag2);
            try
            {
                ((Activity) (obj)).startActivity(a1);
                n = true;
                return;
            }
            // Misplaced declaration of an exception variable
            catch (com.chartboost.sdk.Model.a a1)
            {
                throw new RuntimeException("Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
            }
        }
        obj = e();
        if (obj != null && l())
        {
            ((e) (obj)).a(a1);
            return;
        } else
        {
            a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY);
            return;
        }
    }

    protected static void a(Runnable runnable)
    {
        if (!CBUtility.b())
        {
            a.post(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    static CBImpressionActivity b(CBImpressionActivity cbimpressionactivity)
    {
        d = cbimpressionactivity;
        return cbimpressionactivity;
    }

    static Runnable b(Runnable runnable)
    {
        o = runnable;
        return runnable;
    }

    protected static void b(Activity activity)
    {
        b(com.chartboost.sdk.Libraries.k.a(activity), false);
    }

    private static void b(Activity activity, boolean flag)
    {
        if (activity == null)
        {
            return;
        } else
        {
            a(activity.hashCode(), flag);
            return;
        }
    }

    protected static void b(k k1)
    {
        k1 = com.chartboost.sdk.c.a().c();
        if (k1 != null)
        {
            k1.v();
        }
    }

    private static void b(k k1, boolean flag)
    {
    }

    protected static boolean b()
    {
        com.chartboost.sdk.c c1 = com.chartboost.sdk.c.a();
        Object obj = c1.c();
        if (obj != null && ((com.chartboost.sdk.Model.a) (obj)).b == com.chartboost.sdk.Model.a.b.c)
        {
            if (((com.chartboost.sdk.Model.a) (obj)).s())
            {
                return true;
            } else
            {
                a(new Runnable(c1) {

                    final com.chartboost.sdk.c a;

                    public void run()
                    {
                        a.b();
                    }

            
            {
                a = c1;
                super();
            }
                });
                return true;
            }
        }
        obj = e();
        if (obj != null && ((e) (obj)).b())
        {
            a(new Runnable(((e) (obj)), c1) {

                final e a;
                final com.chartboost.sdk.c b;

                public void run()
                {
                    a.a(b.c(), true);
                }

            
            {
                a = e1;
                b = c1;
                super();
            }
            });
            return true;
        } else
        {
            return false;
        }
    }

    protected static Activity c()
    {
        if (com.chartboost.sdk.b.e())
        {
            return d;
        } else
        {
            return getHostActivity();
        }
    }

    static void c(Activity activity)
    {
        d(activity);
    }

    protected static void c(k k1)
    {
        e e1 = e();
        if (g(k1) && e1 != null)
        {
            com.chartboost.sdk.Model.a a1 = com.chartboost.sdk.c.a().c();
            if (a1 != null)
            {
                e1.c(a1);
                e = a1;
            }
            b(k1, false);
            if (k1.get() instanceof CBImpressionActivity)
            {
                d();
            }
        }
        if (!(k1.get() instanceof CBImpressionActivity))
        {
            c(k1, false);
        }
    }

    private static void c(k k1, boolean flag)
    {
        if (k1 == null)
        {
            return;
        } else
        {
            a(k1.a(), flag);
            return;
        }
    }

    public static void cacheInterstitial(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "cacheInterstitial location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadInterstitial(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            ae.f().b(s);
            return;
        }
    }

    public static void cacheMoreApps(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "cacheMoreApps location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadMoreApps(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            aw.f().b(s);
            return;
        }
    }

    public static void cacheRewardedVideo(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "cacheRewardedVideo location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadRewardedVideo(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            af.h().b(s);
            return;
        }
    }

    public static void clearCache()
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (com.chartboost.sdk.b.a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling clearImageCache().");
        } else
        {
            bd.a().b();
            af.h().a();
            ae.f().a();
            aw.f().a();
            com.chartboost.sdk.InPlay.a.b();
            return;
        }
    }

    public static void createSurfaceView(Activity activity)
    {
        if (bh.a(activity))
        {
            return;
        } else
        {
            a.post(new Runnable(activity) {

                final Activity a;

                public void run()
                {
                    CBLogging.e("VideoInit", "preparing activity for video surface");
                    SurfaceView surfaceview = new SurfaceView(a);
                    a.addContentView(surfaceview, new android.view.ViewGroup.LayoutParams(0, 0));
                }

            
            {
                a = activity;
                super();
            }
            });
            return;
        }
    }

    protected static void d()
    {
        if (j)
        {
            d = null;
            j = false;
        }
    }

    private static void d(Activity activity)
    {
        if (b != null && !b.b(activity) && l())
        {
            f(b);
            c(b, false);
        }
        a.removeCallbacks(o);
        b = com.chartboost.sdk.Libraries.k.a(activity);
        if (!getImpressionsUseActivities())
        {
            createSurfaceView(activity);
        }
        bb.d();
    }

    protected static boolean d(k k1)
    {
        if (k1 == null)
        {
            return false;
        }
        k1 = Boolean.valueOf(k.get(k1.a()));
        if (k1 != null)
        {
            return k1.booleanValue();
        } else
        {
            return false;
        }
    }

    public static void didPassAgeGate(boolean flag)
    {
        com.chartboost.sdk.b.d(flag);
    }

    protected static e e()
    {
        if (c() == null)
        {
            return null;
        } else
        {
            return l;
        }
    }

    static void e(k k1)
    {
        f(k1);
    }

    private static boolean e(Activity activity)
    {
        if (com.chartboost.sdk.b.e())
        {
            return d == activity;
        }
        if (b == null)
        {
            return activity == null;
        } else
        {
            return b.b(activity);
        }
    }

    static Runnable f()
    {
        return o;
    }

    private static void f(k k1)
    {
        if (!com.chartboost.sdk.b.e())
        {
            c(k1);
        }
        if (!(k1.get() instanceof CBImpressionActivity))
        {
            c(k1, false);
        }
        f.c(com.chartboost.sdk.b.a);
        h.b();
        g.g();
        if (i == null)
        {
            i = com.chartboost.sdk.Tracking.a.a();
        }
        i.c();
    }

    static boolean g()
    {
        return l();
    }

    private static boolean g(k k1)
    {
        if (com.chartboost.sdk.b.e())
        {
            if (k1 == null)
            {
                return d == null;
            } else
            {
                return k1.b(d);
            }
        }
        if (b == null)
        {
            return k1 == null;
        } else
        {
            return b.a(k1);
        }
    }

    public static boolean getAutoCacheAds()
    {
        return com.chartboost.sdk.b.g();
    }

    public static String getCustomId()
    {
        return com.chartboost.sdk.b.k();
    }

    public static com.chartboost.sdk.a getDelegate()
    {
        return com.chartboost.sdk.b.d();
    }

    protected static Activity getHostActivity()
    {
        if (b != null)
        {
            return (Activity)b.get();
        } else
        {
            return null;
        }
    }

    public static boolean getImpressionsUseActivities()
    {
        return com.chartboost.sdk.b.e();
    }

    public static com.chartboost.sdk.Libraries.CBLogging.Level getLoggingLevel()
    {
        return com.chartboost.sdk.b.j();
    }

    protected static Context getValidContext()
    {
        if (b != null)
        {
            return b.b();
        } else
        {
            return com.chartboost.sdk.b.l();
        }
    }

    static az h()
    {
        return f;
    }

    public static boolean hasInterstitial(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        return ae.f().c(s);
    }

    public static boolean hasMoreApps(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        return aw.f().c(s);
    }

    public static boolean hasRewardedVideo(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        return af.h().c(s);
    }

    static m i()
    {
        return h;
    }

    public static boolean isAnyViewVisible()
    {
        e e1 = e();
        if (e1 == null)
        {
            return false;
        } else
        {
            return e1.c();
        }
    }

    static bb j()
    {
        return g;
    }

    static CBImpressionActivity k()
    {
        return d;
    }

    private static boolean l()
    {
        return d(b);
    }

    public static boolean onBackPressed()
    {
        com.chartboost.sdk.b.p();
        if (b == null)
        {
            throw new IllegalStateException("The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
        }
        if (com.chartboost.sdk.b.e())
        {
            if (n)
            {
                n = false;
                b();
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return b();
        }
    }

    public static void onCreate(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                com.chartboost.sdk.Chartboost.c(a);
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void onDestroy(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                if (Chartboost.b == null || Chartboost.b.b(a))
                {
                    com.chartboost.sdk.Chartboost.a.removeCallbacks(Chartboost.f());
                    Chartboost.b(new a());
                    com.chartboost.sdk.Chartboost.a.postDelayed(Chartboost.f(), 10000L);
                }
                Chartboost.b(a);
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void onPause(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                k k1 = com.chartboost.sdk.Libraries.k.a(a);
                if (Chartboost.d(k1))
                {
                    Chartboost.b(k1);
                }
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void onResume(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                k k1 = com.chartboost.sdk.Libraries.k.a(a);
                if (Chartboost.d(k1))
                {
                    com.chartboost.sdk.Chartboost.a(k1);
                } else
                if (com.chartboost.sdk.b.a() != null && com.chartboost.sdk.b.a().ordinal() == CBFramework.CBFrameworkUnity.ordinal())
                {
                    com.chartboost.sdk.Chartboost.a();
                    return;
                }
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void onStart(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                com.chartboost.sdk.Chartboost.a.removeCallbacks(Chartboost.f());
                if (Chartboost.b != null && !Chartboost.b.b(a) && com.chartboost.sdk.Chartboost.g())
                {
                    Chartboost.e(Chartboost.b);
                    com.chartboost.sdk.Chartboost.a(Chartboost.b, false);
                }
                com.chartboost.sdk.Chartboost.a(a, true);
                Chartboost.b = com.chartboost.sdk.Libraries.k.a(a);
                com.chartboost.sdk.Chartboost.a();
                com.chartboost.sdk.Chartboost.a(a);
                Chartboost.h().b(com.chartboost.sdk.b.a);
                Chartboost.i().a();
                Chartboost.j().f();
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void onStop(Activity activity)
    {
        com.chartboost.sdk.b.p();
        a(new Runnable(activity) {

            final Activity a;

            public void run()
            {
                k k1 = com.chartboost.sdk.Libraries.k.a(a);
                if (Chartboost.d(k1))
                {
                    Chartboost.e(k1);
                }
            }

            
            {
                a = activity;
                super();
            }
        });
    }

    public static void setAutoCacheAds(boolean flag)
    {
        com.chartboost.sdk.b.b(flag);
    }

    public static void setCustomId(String s)
    {
        com.chartboost.sdk.b.c(s);
    }

    public static void setDelegate(ChartboostDelegate chartboostdelegate)
    {
        com.chartboost.sdk.b.a(chartboostdelegate);
    }

    public static void setFramework(CBFramework cbframework)
    {
        com.chartboost.sdk.b.a(cbframework);
    }

    public static void setImpressionsUseActivities(boolean flag)
    {
        com.chartboost.sdk.b.a(flag);
    }

    public static void setLoggingLevel(com.chartboost.sdk.Libraries.CBLogging.Level level)
    {
        com.chartboost.sdk.b.a(level);
    }

    public static void setShouldDisplayLoadingViewForMoreApps(boolean flag)
    {
        com.chartboost.sdk.b.g(flag);
    }

    public static void setShouldPauseClickForConfirmation(boolean flag)
    {
        com.chartboost.sdk.b.e(flag);
    }

    public static void setShouldPrefetchVideoContent(boolean flag)
    {
        com.chartboost.sdk.b.h(flag);
        if (flag)
        {
            be.b();
            return;
        } else
        {
            be.d();
            return;
        }
    }

    public static void setShouldRequestInterstitialsInFirstSession(boolean flag)
    {
        com.chartboost.sdk.b.f(flag);
    }

    public static void showInterstitial(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "showInterstitial location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadInterstitial(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            ae.f().a(s);
            return;
        }
    }

    public static void showMoreApps(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "showMoreApps location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadMoreApps(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            aw.f().a(s);
            return;
        }
    }

    public static void showRewardedVideo(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b("Chartboost", "showRewardedVideo location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadRewardedVideo(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        } else
        {
            af.h().a(s);
            return;
        }
    }

    public static void startWithAppId(Activity activity, String s, String s1)
    {
        s1 = com.chartboost.sdk.c.p.check(s + " " + s1, 9).split(" ");
        s1[0].trim();
        s1[1].trim();
        s = s1[0];
        s1 = s1[1];
        if (c != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorenter ;
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        if (activity != null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (!(activity instanceof Activity))
        {
            throw new RuntimeException("Activity object is null. Please pass a valid activity object");
        }
        break MISSING_BLOCK_LABEL_101;
        activity;
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorexit ;
        throw activity;
        if (s != null && s1 != null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        throw new RuntimeException("appId or appSignature is null. Please pass a valid id's");
        a(new Runnable(activity, s, s1) {

            final Activity a;
            final String b;
            final String c;

            public void run()
            {
                com.chartboost.sdk.Chartboost.a(new Chartboost(a, b, c));
            }

            
            {
                a = activity;
                b = s;
                c = s1;
                super();
            }
        });
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorexit ;
_L2:
    }

}
