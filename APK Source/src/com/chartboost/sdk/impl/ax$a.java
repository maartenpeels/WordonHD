// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Typeface;
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
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.d;
import java.lang.reflect.Constructor;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            ax, bk, bl, aq, 
//            bc

public class <init> extends com.chartboost.sdk.ax.a
{
    public class a extends ArrayAdapter
    {

        final ax.a a;
        private Context b;

        public com.chartboost.sdk.Libraries.e.a a(int i)
        {
            return (com.chartboost.sdk.Libraries.e.a)ax.m(a.b).get(i);
        }

        public int getCount()
        {
            return ax.m(a.b).size();
        }

        public Object getItem(int i)
        {
            return a(i);
        }

        public int getItemViewType(int i)
        {
            com.chartboost.sdk.Libraries.e.a a1 = a(i).a("type");
            ax.b ab[] = ax.b.values();
            for (i = 0; i < ab.length; i++)
            {
                if (a1.equals(ax.b.a(ab[i])))
                {
                    return i;
                }
            }

            return 0;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            int k = 0;
            com.chartboost.sdk.Libraries.e.a a1 = a(i);
            com.chartboost.sdk.Libraries.e.a a2 = a1.a("type");
            viewgroup = null;
            ax.b ab[] = ax.b.values();
label0:
            do
            {
label1:
                {
                    view = viewgroup;
                    if (k < ab.length)
                    {
                        if (!a2.equals(ax.b.a(ab[k])))
                        {
                            break label1;
                        }
                        try
                        {
                            view = (aq)ax.b.b(ab[k]).getConstructor(new Class[] {
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
                k++;
            } while (true);
            view.a(a1, i);
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
            view.setOnClickListener(new android.view.View.OnClickListener(this, a1, i) {

                final com.chartboost.sdk.Libraries.e.a a;
                final int b;
                final a c;

                public void onClick(View view)
                {
label0:
                    {
                        String s = a.e("deep-link");
                        if (!TextUtils.isEmpty(s))
                        {
                            view = s;
                            if (bc.a(s))
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
                b = i;
                super();
            }
            });
            return view;
        }

        public int getViewTypeCount()
        {
            return ax.b.values().length;
        }

        public a(Context context)
        {
            a = ax.a.this;
            super(context, 0, ax.m(ax.a.this.b));
            b = context;
        }
    }


    final ax b;
    private bl c;
    private bk d;
    private TextView e;
    private RelativeLayout f;
    private ListView g;
    private a h;

    protected void a(int i, int k)
    {
        Context context = getContext();
        f f2 = CBUtility.c();
        Object obj;
        android.widget.iveLayout.LayoutParams layoutparams;
        android.widget.iveLayout.LayoutParams layoutparams1;
        android.widget.iveLayout.LayoutParams layoutparams2;
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
            ax.a(b, ((j) (obj)).i());
            if (((j) (obj)).h() < i)
            {
                ax.a(b, Math.round((float)ax.h(b) * ((float)i / (float)((j) (obj)).h())));
            }
            e.setVisibility(8);
            d.a(((j) (obj)));
        } else
        {
            obj = b;
            if (c())
            {
                i = 80;
            } else
            {
                i = 40;
            }
            ax.a(((ax) (obj)), CBUtility.a(i, context));
            e.setVisibility(0);
        }
        if (ax.i(b).())
        {
            ax.a(b, CBUtility.a(ax.i(b).(), context));
        }
        layoutparams = new android.widget.iveLayout.LayoutParams(-2, -2);
        layoutparams1 = new android.widget.iveLayout.LayoutParams(-2, -2);
        layoutparams2 = new android.widget.iveLayout.LayoutParams(-1, ax.h(b));
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
                i = 14;
            } else
            {
                i = 7;
            }
            i = CBUtility.a(i, context);
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
                i = 30;
            } else
            {
                i = 20;
            }
            i = CBUtility.a(i, context);
        }
        k = Math.round((float)(ax.h(b) - layoutparams1.height) / 2.0F);
        layoutparams1.rightMargin = i;
        layoutparams1.topMargin = k;
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
        super.();
        c = null;
        d = null;
        g = null;
    }

    private s(ax ax1, Context context)
    {
        b = ax1;
        super(ax1, context);
        setBackgroundColor(-1);
        d = new bk(context);
        c = new bl(context, ax1) {

            final ax a;
            final ax.a b;

            protected void a(MotionEvent motionevent)
            {
                ax.a(b.b);
            }

            
            {
                b = ax.a.this;
                a = ax1;
                super(context);
            }
        };
        e = new TextView(context);
        e.setBackgroundColor(ax.b(ax1));
        e.setText(ax.c(ax1));
        e.setTextColor(com.chartboost.sdk.impl.ax.d(ax1));
        ax1 = e;
        float f1;
        if (c())
        {
            f1 = 30F;
        } else
        {
            f1 = 18F;
        }
        ax1.setTextSize(2, f1);
        e.setGravity(17);
        g = new ListView(context);
        g.setBackgroundColor(-1);
        g.setDividerHeight(0);
        a(g);
        addView(g);
        d.setFocusable(false);
        c.setFocusable(false);
        c.setClickable(true);
        d.setScaleType(android.widget.View.ScaleType.CENTER_CROP);
        c.a(android.widget.View.ScaleType.FIT_CENTER);
        f = new RelativeLayout(context);
        f.addView(d, new android.widget.iveLayout.LayoutParams(-1, -1));
        f.addView(e, new android.widget.iveLayout.LayoutParams(-1, -1));
        addView(f, new android.widget.iveLayout.LayoutParams(-1, -1));
        addView(c, new android.widget.iveLayout.LayoutParams(-1, -1));
        a(f);
        h = new a(context);
    }

    a(ax ax1, Context context, a a1)
    {
        this(ax1, context);
    }
}
