// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.impl.bi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

public abstract class f
{
    public abstract class a extends RelativeLayout
    {

        final f a;
        private boolean b;
        private int c;
        private int d;
        private int e;
        private int f;
        private com.chartboost.sdk.Libraries.f g;

        static com.chartboost.sdk.Libraries.f a(a a1)
        {
            return a1.g;
        }

        private boolean b(int i1, int j1)
        {
            com.chartboost.sdk.Libraries.f f1;
            if (b)
            {
                return false;
            }
            f1 = CBUtility.c();
            if (c == i1 && d == j1 && g == f1)
            {
                return true;
            }
            b = true;
            if (!a.i || !f1.b()) goto _L2; else goto _L1
_L1:
            a.g = f1;
_L4:
            a(i1, j1);
            post(new Runnable(this) {

                final a a;

                public void run()
                {
                    a.requestLayout();
                }

            
            {
                a = a1;
                super();
            }
            });
            c = i1;
            d = j1;
            g = f1;
            boolean flag = true;
_L5:
            b = false;
            return flag;
_L2:
            if (!a.j || !f1.c()) goto _L4; else goto _L3
_L3:
            a.g = f1;
              goto _L4
            Exception exception;
            exception;
            CBLogging.b("CBViewProtocol", "Exception raised while layouting Subviews", exception);
            flag = false;
              goto _L5
        }

        public final void a()
        {
            a(false);
        }

        protected abstract void a(int i1, int j1);

        public final void a(View view)
        {
            int i1 = 200;
            if (200 == getId())
            {
                i1 = 200 + 1;
            }
            for (View view1 = findViewById(i1); view1 != null; view1 = findViewById(i1))
            {
                i1++;
            }

            view.setId(i1);
            view.setSaveEnabled(false);
        }

        public final void a(boolean flag)
        {
            if (flag)
            {
                g = null;
            }
            a((Activity)getContext());
        }

        public boolean a(Activity activity)
        {
            if (e != -1 && f != -1) goto _L2; else goto _L1
_L1:
            int i1;
            int j1;
            j1 = getWidth();
            i1 = getHeight();
            if (j1 != 0 && i1 != 0)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            View view1 = activity.getWindow().findViewById(0x1020002);
            View view;
            view = view1;
            if (view1 != null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            view = activity.getWindow().getDecorView();
            j1 = view.getWidth();
            i1 = view.getHeight();
_L4:
            int k1;
label0:
            {
                if (j1 != 0)
                {
                    k1 = i1;
                    if (i1 != 0)
                    {
                        break label0;
                    }
                }
                DisplayMetrics displaymetrics = new DisplayMetrics();
                activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                j1 = displaymetrics.widthPixels;
                k1 = displaymetrics.heightPixels;
            }
            e = j1;
            f = k1;
_L2:
            return b(e, f);
            Exception exception;
            exception;
            i1 = 0;
            j1 = 0;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void b()
        {
        }

        protected boolean c()
        {
            return com.chartboost.sdk.f.a(getContext());
        }

        public void onDetachedFromWindow()
        {
            super.onDetachedFromWindow();
            for (int i1 = 0; i1 < a.h.size(); i1++)
            {
                com.chartboost.sdk.f.a.removeCallbacks((Runnable)a.h.get(Integer.valueOf(i1)));
            }

            a.h.clear();
        }

        protected void onSizeChanged(int i1, int j1, int k1, int l1)
        {
            super.onSizeChanged(i1, j1, k1, l1);
            e = i1;
            f = j1;
            if (c != -1 && d != -1)
            {
                a();
            }
        }

        public a(Context context)
        {
            a = f.this;
            super(context);
            b = false;
            c = -1;
            d = -1;
            e = -1;
            f = -1;
            g = null;
            com.chartboost.sdk.f.a(f.this, this);
            com.chartboost.sdk.f.a(f.this, false);
            setFocusableInTouchMode(true);
            requestFocus();
        }
    }

    public static interface b
    {

        public abstract boolean a();
    }


    public static Handler a = CBUtility.e();
    public boolean b;
    protected List c;
    protected List d;
    protected com.chartboost.sdk.Libraries.e.a e;
    protected com.chartboost.sdk.Model.a f;
    protected com.chartboost.sdk.Libraries.f g;
    public Map h;
    protected boolean i;
    protected boolean j;
    private boolean k;
    private a l;

    public f(com.chartboost.sdk.Model.a a1)
    {
        b = false;
        c = new ArrayList();
        d = new ArrayList();
        h = Collections.synchronizedMap(new HashMap());
        i = true;
        j = true;
        f = a1;
        l = null;
        g = CBUtility.c();
        k = false;
    }

    public static int a(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        if (s.startsWith("#"))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        int i1 = Color.parseColor(s);
        return i1;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        s = (new StringBuilder()).append("#").append(s).toString();
        Object obj;
label0:
        {
            if (s.length() != 4)
            {
                obj = s;
                if (s.length() != 5)
                {
                    break label0;
                }
            }
            obj = new StringBuilder(s.length() * 2 + 1);
            ((StringBuilder) (obj)).append("#");
            for (i1 = 0; i1 < s.length() - 1; i1++)
            {
                ((StringBuilder) (obj)).append(s.charAt(i1 + 1));
                ((StringBuilder) (obj)).append(s.charAt(i1 + 1));
            }

            obj = ((StringBuilder) (obj)).toString();
        }
        i1 = Color.parseColor(((String) (obj)));
        return i1;
        s;
        CBLogging.d("CBViewProtocol", (new StringBuilder()).append("error parsing color ").append(((String) (obj))).toString(), s);
        return 0;
    }

    static a a(f f1, a a1)
    {
        f1.l = a1;
        return a1;
    }

    public static boolean a(Context context)
    {
        return (context.getResources().getConfiguration().screenLayout & 0xf) >= 4;
    }

    static boolean a(f f1, boolean flag)
    {
        f1.k = flag;
        return flag;
    }

    public com.chartboost.sdk.Libraries.f a()
    {
        return g;
    }

    protected void a(View view, Runnable runnable, long l1)
    {
        Runnable runnable1 = (Runnable)h.get(Integer.valueOf(view.hashCode()));
        if (runnable1 != null)
        {
            a.removeCallbacks(runnable1);
        }
        h.put(Integer.valueOf(view.hashCode()), runnable);
        a.postDelayed(runnable, l1);
    }

    protected void a(com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        f.a(cbimpressionerror);
    }

    public void a(b b1)
    {
        if (b1.a())
        {
            d.remove(b1);
        }
        c.remove(b1);
        if (!c.isEmpty() || b())
        {
            return;
        } else
        {
            CBLogging.b("CBViewProtocol", "Error while downloading the assets");
            a(com.chartboost.sdk.Model.CBError.CBImpressionError.ASSETS_DOWNLOAD_FAILURE);
            return;
        }
    }

    public void a(boolean flag, View view)
    {
        a(flag, view, true);
    }

    public void a(boolean flag, View view, boolean flag1)
    {
        if ((flag && view.getVisibility() == 0 || !flag && view.getVisibility() == 8) && h.get(Integer.valueOf(view.hashCode())) == null)
        {
            return;
        }
        if (!flag1)
        {
            int i1;
            if (flag)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            view.setVisibility(i1);
            view.setClickable(flag);
            return;
        } else
        {
            Runnable runnable = new Runnable(flag, view) {

                final boolean a;
                final View b;
                final f c;

                public void run()
                {
                    if (!a)
                    {
                        b.setVisibility(8);
                        b.setClickable(false);
                    }
                    c.h.remove(Integer.valueOf(b.hashCode()));
                }

            
            {
                c = f.this;
                a = flag;
                b = view;
                super();
            }
            };
            bi.a(flag, view, 250L);
            a(view, runnable, 250L);
            return;
        }
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        e = a1.a("assets");
        if (e.b())
        {
            CBLogging.b("CBViewProtocol", "Assets got from the response is null or empty");
            a(com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_RESPONSE);
            return false;
        } else
        {
            return true;
        }
    }

    public boolean a(String s, com.chartboost.sdk.Libraries.e.a a1)
    {
        return f.a(s, a1);
    }

    protected abstract a b(Context context);

    public void b(b b1)
    {
        c.add(b1);
        d.add(b1);
    }

    public boolean b()
    {
        if (!d.isEmpty())
        {
            CBLogging.d("CBViewProtocol", "not completed loading assets for impression");
            return false;
        } else
        {
            i();
            return true;
        }
    }

    public com.chartboost.sdk.Model.CBError.CBImpressionError c()
    {
        Activity activity = Chartboost.c();
        if (activity == null)
        {
            l = null;
            return com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY;
        }
        if (!j && !i)
        {
            return com.chartboost.sdk.Model.CBError.CBImpressionError.WRONG_ORIENTATION;
        }
        g = CBUtility.c();
        if (g.c() && !j || g.b() && !i)
        {
            g = g.a();
        }
        if (l == null)
        {
            l = b(activity);
        }
        if (l.a(activity))
        {
            return null;
        } else
        {
            l = null;
            return com.chartboost.sdk.Model.CBError.CBImpressionError.ERROR_CREATING_VIEW;
        }
    }

    public void d()
    {
        f();
        for (int i1 = 0; i1 < h.size(); i1++)
        {
            a.removeCallbacks((Runnable)h.get(Integer.valueOf(i1)));
        }

        h.clear();
    }

    public a e()
    {
        return l;
    }

    public void f()
    {
        if (l != null)
        {
            l.b();
        }
        l = null;
    }

    public com.chartboost.sdk.Libraries.e.a g()
    {
        return e;
    }

    protected void h()
    {
        if (k)
        {
            return;
        } else
        {
            k = true;
            f.b();
            return;
        }
    }

    protected void i()
    {
        f.c();
    }

    public boolean j()
    {
        return false;
    }

    public void k()
    {
        if (b)
        {
            b = false;
        }
        if (e() != null && CBUtility.c() != com.chartboost.sdk.a.a(e()))
        {
            e().a(false);
        }
    }

    public void l()
    {
        b = true;
    }

}
