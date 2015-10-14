// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.b;
import com.chartboost.sdk.d;
import com.chartboost.sdk.f;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk, bl, aq, bc, 
//            ar, as, au, at

public class ax extends f
{
    public class a extends com.chartboost.sdk.f.a
    {

        final ax b;
        private bl c;
        private bk d;
        private TextView e;
        private RelativeLayout f;
        private ListView g;
        private a h;

        protected void a(int i1, int j1)
        {
            Context context = getContext();
            com.chartboost.sdk.Libraries.f f2 = CBUtility.c();
            Object obj;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            android.widget.RelativeLayout.LayoutParams layoutparams2;
            if (f2.b() && ax.e(b).e())
            {
                obj = ax.e(b);
            } else
            if (f2.c() && com.chartboost.sdk.impl.ax.f(b).e())
            {
                obj = com.chartboost.sdk.impl.ax.f(b);
            } else
            if (ax.g(b).e())
            {
                obj = ax.g(b);
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                com.chartboost.sdk.impl.ax.a(b, ((j) (obj)).i());
                if (((j) (obj)).h() < i1)
                {
                    com.chartboost.sdk.impl.ax.a(b, Math.round((float)ax.h(b) * ((float)i1 / (float)((j) (obj)).h())));
                }
                e.setVisibility(8);
                d.a(((j) (obj)));
            } else
            {
                obj = b;
                if (c())
                {
                    i1 = 80;
                } else
                {
                    i1 = 40;
                }
                com.chartboost.sdk.impl.ax.a(((ax) (obj)), CBUtility.a(i1, context));
                e.setVisibility(0);
            }
            if (ax.i(b).c())
            {
                com.chartboost.sdk.impl.ax.a(b, CBUtility.a(ax.i(b).k(), context));
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-1, ax.h(b));
            if (com.chartboost.sdk.impl.ax.j(b).e() && f2.b())
            {
                obj = com.chartboost.sdk.impl.ax.j(b);
            } else
            if (ax.k(b).e() && f2.c())
            {
                obj = ax.k(b);
            } else
            if (ax.l(b).e())
            {
                obj = ax.l(b);
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                c.a(((j) (obj)), layoutparams1);
                if (c())
                {
                    i1 = 14;
                } else
                {
                    i1 = 7;
                }
                i1 = CBUtility.a(i1, context);
            } else
            {
                c.a("X");
                obj = c.a();
                float f1;
                if (c())
                {
                    f1 = 26F;
                } else
                {
                    f1 = 16F;
                }
                ((TextView) (obj)).setTextSize(2, f1);
                c.a().setTextColor(com.chartboost.sdk.impl.ax.d(b));
                c.a().setTypeface(Typeface.SANS_SERIF, 1);
                layoutparams1.width = ax.h(b) / 2;
                layoutparams1.height = ax.h(b) / 3;
                if (c())
                {
                    i1 = 30;
                } else
                {
                    i1 = 20;
                }
                i1 = CBUtility.a(i1, context);
            }
            j1 = Math.round((float)(ax.h(b) - layoutparams1.height) / 2.0F);
            layoutparams1.rightMargin = i1;
            layoutparams1.topMargin = j1;
            layoutparams1.addRule(11);
            layoutparams.width = -1;
            layoutparams.height = -1;
            layoutparams.addRule(3, f.getId());
            g.setAdapter(h);
            g.setLayoutParams(layoutparams);
            c.setLayoutParams(layoutparams1);
            f.setLayoutParams(layoutparams2);
        }

        public void b()
        {
            super.b();
            c = null;
            d = null;
            g = null;
        }

        private a(Context context)
        {
            b = ax.this;
            super(ax.this, context);
            setBackgroundColor(-1);
            d = new bk(context);
            c = new _cls1(this, context, ax.this);
            e = new TextView(context);
            e.setBackgroundColor(com.chartboost.sdk.impl.ax.b(ax.this));
            e.setText(ax.c(ax.this));
            e.setTextColor(com.chartboost.sdk.impl.ax.d(ax.this));
            ax1 = e;
            float f1;
            if (c())
            {
                f1 = 30F;
            } else
            {
                f1 = 18F;
            }
            setTextSize(2, f1);
            e.setGravity(17);
            g = new ListView(context);
            g.setBackgroundColor(-1);
            g.setDividerHeight(0);
            a(g);
            addView(g);
            d.setFocusable(false);
            c.setFocusable(false);
            c.setClickable(true);
            d.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            c.a(android.widget.ImageView.ScaleType.FIT_CENTER);
            f = new RelativeLayout(context);
            f.addView(d, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            f.addView(e, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            addView(f, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            addView(c, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            a(f);
            h = new a(this, context);
        }

    }

    public class a.a extends ArrayAdapter
    {

        final a a;
        private Context b;

        public com.chartboost.sdk.Libraries.e.a a(int i1)
        {
            return (com.chartboost.sdk.Libraries.e.a)ax.m(a.b).get(i1);
        }

        public int getCount()
        {
            return ax.m(a.b).size();
        }

        public Object getItem(int i1)
        {
            return a(i1);
        }

        public int getItemViewType(int i1)
        {
            com.chartboost.sdk.Libraries.e.a a1 = a(i1).a("type");
            b ab[] = b.values();
            for (i1 = 0; i1 < ab.length; i1++)
            {
                if (a1.equals(com.chartboost.sdk.impl.b.a(ab[i1])))
                {
                    return i1;
                }
            }

            return 0;
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            int j1 = 0;
            com.chartboost.sdk.Libraries.e.a a1 = a(i1);
            com.chartboost.sdk.Libraries.e.a a2 = a1.a("type");
            viewgroup = null;
            b ab[] = b.values();
label0:
            do
            {
label1:
                {
                    view = viewgroup;
                    if (j1 < ab.length)
                    {
                        if (!a2.equals(com.chartboost.sdk.impl.b.a(ab[j1])))
                        {
                            break label1;
                        }
                        try
                        {
                            view = (aq)com.chartboost.sdk.impl.b.b(ab[j1]).getConstructor(new Class[] {
                                com/chartboost/sdk/impl/ax, android/content/Context
                            }).newInstance(new Object[] {
                                a.b, b
                            });
                        }
                        // Misplaced declaration of an exception variable
                        catch (View view)
                        {
                            CBLogging.b(this, "error in more apps list", view);
                            view = viewgroup;
                        }
                    }
                    if (view == null)
                    {
                        return new View(getContext());
                    }
                    break label0;
                }
                j1++;
            } while (true);
            view.a(a1, i1);
            viewgroup = view.getLayoutParams();
            if (viewgroup != null && (viewgroup instanceof android.widget.AbsListView.LayoutParams))
            {
                viewgroup = (android.widget.AbsListView.LayoutParams)viewgroup;
                viewgroup.width = -1;
                viewgroup.height = view.a();
            } else
            {
                viewgroup = new android.widget.AbsListView.LayoutParams(-1, view.a());
            }
            view.setLayoutParams(viewgroup);
            view.setOnClickListener(new android.view.View.OnClickListener(this, a1, i1) {

                final com.chartboost.sdk.Libraries.e.a a;
                final int b;
                final a.a c;

                public void onClick(View view)
                {
label0:
                    {
                        String s1 = a.e("deep-link");
                        if (!TextUtils.isEmpty(s1))
                        {
                            view = s1;
                            if (com.chartboost.sdk.impl.bc.a(s1))
                            {
                                break label0;
                            }
                        }
                        view = a.e("link");
                    }
                    if (c.a.b.a(view, a))
                    {
                        com.chartboost.sdk.Tracking.a.a(ax.n(c.a.b).q().e(), a.e("location"), a.e("ad_id"), b);
                    }
                }

            
            {
                c = a1;
                a = a2;
                b = i1;
                super();
            }
            });
            return view;
        }

        public int getViewTypeCount()
        {
            return b.values().length;
        }

        public a.a(a a1, Context context)
        {
            a = a1;
            super(context, 0, ax.m(a1.b));
            b = context;
        }
    }

    private static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        private static final b g[];
        private String e;
        private Class f;

        static String a(b b1)
        {
            return b1.e;
        }

        static Class b(b b1)
        {
            return b1.f;
        }

        public static b valueOf(String s1)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/ax$b, s1);
        }

        public static b[] values()
        {
            return (b[])g.clone();
        }

        static 
        {
            a = new b("FEATURED", 0, "featured", com/chartboost/sdk/impl/ar);
            b = new b("REGULAR", 1, "regular", com/chartboost/sdk/impl/as);
            c = new b("WEBVIEW", 2, "webview", com/chartboost/sdk/impl/au);
            d = new b("VIDEO", 3, "video", com/chartboost/sdk/impl/at);
            g = (new b[] {
                a, b, c, d
            });
        }

        private b(String s1, int i1, String s2, Class class1)
        {
            super(s1, i1);
            e = s2;
            f = class1;
        }
    }


    protected j k;
    protected j l;
    private List m;
    private j n;
    private j o;
    private j p;
    private j q;
    private j r;
    private j s;
    private j t;
    private Set u;
    private int v;
    private com.chartboost.sdk.Libraries.e.a w;
    private int x;
    private int y;
    private String z;

    public ax(com.chartboost.sdk.Model.a a1)
    {
        super(a1);
        m = new ArrayList();
        t = new j(this);
        r = new j(this);
        q = new j(this);
        s = new j(this);
        n = new j(this);
        p = new j(this);
        o = new j(this);
        l = new j(this);
        k = new j(this);
    }

    static int a(ax ax1, int i1)
    {
        ax1.v = i1;
        return i1;
    }

    private void a(com.chartboost.sdk.Libraries.e.a a1, String s1)
    {
        if (a1.b(s1))
        {
            return;
        } else
        {
            j j1 = new j(this);
            u.add(j1);
            j1.a(a1, s1, new Bundle());
            return;
        }
    }

    static void a(ax ax1)
    {
        ax1.h();
    }

    static int b(ax ax1)
    {
        return ax1.x;
    }

    static String c(ax ax1)
    {
        return ax1.z;
    }

    static int d(ax ax1)
    {
        return ax1.y;
    }

    static j e(ax ax1)
    {
        return ax1.q;
    }

    static j f(ax ax1)
    {
        return ax1.r;
    }

    static j g(ax ax1)
    {
        return ax1.t;
    }

    static int h(ax ax1)
    {
        return ax1.v;
    }

    static com.chartboost.sdk.Libraries.e.a i(ax ax1)
    {
        return ax1.w;
    }

    static j j(ax ax1)
    {
        return ax1.o;
    }

    static j k(ax ax1)
    {
        return ax1.p;
    }

    static j l(ax ax1)
    {
        return ax1.n;
    }

    static List m(ax ax1)
    {
        return ax1.m;
    }

    static com.chartboost.sdk.Model.a n(ax ax1)
    {
        return ax1.f;
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (!super.a(a1))
        {
            return false;
        }
        a1 = a1.a("cells");
        if (a1.b())
        {
            a(com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_RESPONSE);
            return false;
        }
        u = new HashSet();
        int i1 = 0;
        while (i1 < a1.o()) 
        {
            com.chartboost.sdk.Libraries.e.a a2 = a1.c(i1);
            m.add(a2);
            com.chartboost.sdk.Libraries.e.a a3 = a2.a("type");
            if (a3.equals("regular"))
            {
                a2 = a2.a("assets");
                if (a2.c())
                {
                    a(a2, "icon");
                }
            } else
            if (a3.equals("featured"))
            {
                a2 = a2.a("assets");
                if (a2.c())
                {
                    a(a2, "portrait");
                    a(a2, "landscape");
                }
            } else
            if (!a3.equals("webview"));
            i1++;
        }
        n.a("close");
        p.a("close-landscape");
        o.a("close-portrait");
        t.a("header-center");
        q.a("header-portrait");
        r.a("header-landscape");
        s.a("header-tile");
        l.a("play-button");
        k.a("install-button");
        w = e.a("header-height");
        if (w.c())
        {
            v = w.k();
        } else
        {
            if (a(com.chartboost.sdk.b.l()))
            {
                i1 = 80;
            } else
            {
                i1 = 40;
            }
            v = i1;
        }
        if (e.c("background-color"))
        {
            i1 = a(e.e("background-color"));
        } else
        {
            i1 = 0xff21a7e7;
        }
        x = i1;
        if (e.c("header-text"))
        {
            a1 = e.e("header-text");
        } else
        {
            a1 = "More Free Games";
        }
        z = a1;
        if (e.c("text-color"))
        {
            i1 = a(e.e("text-color"));
        } else
        {
            i1 = -1;
        }
        y = i1;
        return true;
    }

    protected com.chartboost.sdk.f.a b(Context context)
    {
        return new a(context);
    }

    public void d()
    {
        super.d();
        m = null;
        for (Iterator iterator = u.iterator(); iterator.hasNext(); ((j)iterator.next()).d()) { }
        u.clear();
        n.d();
        p.d();
        o.d();
        t.d();
        s.d();
        q.d();
        r.d();
        l.d();
        k.d();
    }

    // Unreferenced inner class com/chartboost/sdk/impl/ax$a$1

/* anonymous class */
    class a._cls1 extends bl
    {

        final ax a;
        final a b;

        protected void a(MotionEvent motionevent)
        {
            com.chartboost.sdk.impl.ax.a(b.b);
        }

            
            {
                b = a1;
                a = ax1;
                super(context);
            }
    }

}
