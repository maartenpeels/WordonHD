// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.f;

// Referenced classes of package com.chartboost.sdk.impl:
//            aq, bl, av, bd, 
//            bc, ax, bk

public class as extends aq
{

    private ax a;
    private TextView b;
    private TextView c;
    private TextView d;
    private LinearLayout e;
    private av f;
    private bl g;
    private int h;
    private Point i;
    private j j;
    private android.view.View.OnClickListener k;

    public as(ax ax1, Context context)
    {
        super(context);
        a = ax1;
        e = new LinearLayout(context);
        e.setOrientation(1);
        setGravity(16);
        boolean flag = com.chartboost.sdk.f.a(context);
        b = new TextView(context);
        b.setTypeface(null, 1);
        ax1 = b;
        float f1;
        if (flag)
        {
            f1 = 21F;
        } else
        {
            f1 = 16F;
        }
        ax1.setTextSize(2, f1);
        b.setTextColor(0xff000000);
        b.setSingleLine();
        b.setEllipsize(android.text.TextUtils.TruncateAt.END);
        c = new TextView(context);
        ax1 = c;
        if (flag)
        {
            f1 = 16F;
        } else
        {
            f1 = 10F;
        }
        ax1.setTextSize(2, f1);
        c.setTextColor(0xff000000);
        c.setSingleLine();
        c.setEllipsize(android.text.TextUtils.TruncateAt.END);
        d = new TextView(context);
        ax1 = d;
        if (flag)
        {
            f1 = 18F;
        } else
        {
            f1 = 11F;
        }
        ax1.setTextSize(2, f1);
        d.setTextColor(0xff000000);
        d.setMaxLines(2);
        d.setEllipsize(android.text.TextUtils.TruncateAt.END);
        g = new bl(context) {

            final as a;

            protected void a(MotionEvent motionevent)
            {
                as.b(a).onClick(as.a(a));
            }

            
            {
                a = as.this;
                super(context);
            }
        };
        g.a(android.widget.ImageView.ScaleType.FIT_CENTER);
        f = new av(context);
        setFocusable(false);
        setGravity(16);
        addView(f);
        addView(e, new android.widget.LinearLayout.LayoutParams(0, -2, 1.0F));
        addView(g);
        setBackgroundColor(0);
        e.addView(b, new android.widget.LinearLayout.LayoutParams(-1, -2));
        e.addView(c, new android.widget.LinearLayout.LayoutParams(-1, -2));
        e.addView(d, new android.widget.LinearLayout.LayoutParams(-1, -1));
    }

    static bl a(as as1)
    {
        return as1.g;
    }

    private void a(bk bk, int l, com.chartboost.sdk.Libraries.e.a a1)
    {
        if (a1.b())
        {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("index", l);
        String s;
        if (a1.e("checksum") != null && !a1.e("checksum").isEmpty())
        {
            s = a1.e("checksum");
        } else
        {
            s = "";
        }
        bd.a().a(a1.e("url"), s, null, bk, bundle);
    }

    static android.view.View.OnClickListener b(as as1)
    {
        return as1.k;
    }

    private int c()
    {
        byte byte0;
        if (CBUtility.c().c())
        {
            if (com.chartboost.sdk.f.a(getContext()))
            {
                byte0 = 74;
            } else
            {
                byte0 = 41;
            }
        } else
        if (com.chartboost.sdk.f.a(getContext()))
        {
            byte0 = 74;
        } else
        {
            byte0 = 41;
        }
        return CBUtility.a(byte0, getContext());
    }

    public int a()
    {
        char c1;
        if (CBUtility.c().c())
        {
            if (com.chartboost.sdk.f.a(getContext()))
            {
                c1 = '\206';
            } else
            {
                c1 = 'K';
            }
        } else
        if (com.chartboost.sdk.f.a(getContext()))
        {
            c1 = '\206';
        } else
        {
            c1 = 'M';
        }
        return CBUtility.a(c1, getContext());
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1, int l)
    {
        b.setText(a1.a("name").d("Unknown App"));
        android.widget.LinearLayout.LayoutParams layoutparams;
        int i1;
        if (TextUtils.isEmpty(a1.e("publisher")))
        {
            c.setVisibility(8);
        } else
        {
            c.setText(a1.e("publisher"));
        }
        if (TextUtils.isEmpty(a1.e("description")))
        {
            d.setVisibility(8);
        } else
        {
            d.setText(a1.e("description"));
        }
        if (a1.b("border-color"))
        {
            i1 = 0xffb6b6b6;
        } else
        {
            i1 = com.chartboost.sdk.f.a(a1.e("border-color"));
        }
        h = i1;
        if (a1.c("offset"))
        {
            i = new Point(a1.a("offset").f("x"), a1.a("offset").f("y"));
        } else
        {
            i = new Point(0, 0);
        }
        j = null;
        if (a1.c("deep-link") && bc.a(a1.e("deep-link")))
        {
            if (a.l.e())
            {
                j = a.l;
            } else
            {
                g.a("Play");
            }
        } else
        if (a.k.e())
        {
            j = a.k;
        } else
        {
            g.a("Install");
        }
        if (com.chartboost.sdk.f.a(getContext()))
        {
            i1 = 14;
        } else
        {
            i1 = 7;
        }
        i1 = CBUtility.a(i1, getContext());
        if (j != null)
        {
            g.a(j);
            i1 = i1 * 2 + Math.round(((float)j.b() * (float)c()) / (float)j.c());
        } else
        {
            g.a().setTextColor(0xff21a7e7);
            i1 = CBUtility.a(8, getContext());
            g.a().setPadding(i1, i1, i1, i1);
            i1 = CBUtility.a(100, getContext());
        }
        layoutparams = new android.widget.LinearLayout.LayoutParams(i1, c());
        g.setLayoutParams(layoutparams);
        a(((bk) (f)), l, a1.a("assets").a("icon"));
        f.a(h);
        f.a(0.1666667F);
        b();
    }

    protected void b()
    {
        android.widget.LinearLayout.LayoutParams layoutparams;
        int l;
        if (com.chartboost.sdk.f.a(getContext()))
        {
            l = 14;
        } else
        {
            l = 7;
        }
        l = CBUtility.a(l, getContext());
        layoutparams = new android.widget.LinearLayout.LayoutParams(a() - l * 2, a() - l * 2);
        layoutparams.setMargins(l, l, l, l);
        e.setPadding(0, l, 0, l);
        g.setPadding(i.x * 2 + l, i.y * 2, l, 0);
        f.setLayoutParams(layoutparams);
        f.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        super.setOnClickListener(onclicklistener);
        k = onclicklistener;
    }
}
