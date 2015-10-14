// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.j;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk

public abstract class bl extends RelativeLayout
{
    public class a extends bk
    {

        final bl b;

        public void a(j j1, android.view.ViewGroup.LayoutParams layoutparams)
        {
            a(j1);
            layoutparams.width = j1.h();
            layoutparams.height = j1.i();
        }

        protected void a(boolean flag)
        {
            if (!bl.b(b) || !flag) goto _L2; else goto _L1
_L1:
            if (bl.c(b)) goto _L4; else goto _L3
_L3:
            if (getDrawable() == null) goto _L6; else goto _L5
_L5:
            getDrawable().setColorFilter(0x77000000, android.graphics.PorterDuff.Mode.SRC_ATOP);
_L13:
            invalidate();
            bl.a(b, true);
_L4:
            return;
_L6:
            if (getBackground() != null)
            {
                getBackground().setColorFilter(0x77000000, android.graphics.PorterDuff.Mode.SRC_ATOP);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (!bl.c(b)) goto _L4; else goto _L7
_L7:
            if (getDrawable() == null) goto _L9; else goto _L8
_L8:
            getDrawable().clearColorFilter();
_L11:
            invalidate();
            bl.a(b, false);
            return;
_L9:
            if (getBackground() != null)
            {
                getBackground().clearColorFilter();
            }
            if (true) goto _L11; else goto _L10
_L10:
            if (true) goto _L13; else goto _L12
_L12:
        }

        public a(Context context)
        {
            b = bl.this;
            super(context);
            bl.a(bl.this, false);
        }
    }


    private static Rect d = new Rect();
    private a a;
    private boolean b;
    protected Button c;
    private boolean e;

    public bl(Context context)
    {
        super(context);
        b = false;
        c = null;
        e = true;
        b();
    }

    static a a(bl bl1)
    {
        return bl1.a;
    }

    static boolean a(View view, MotionEvent motionevent)
    {
        return b(view, motionevent);
    }

    static boolean a(bl bl1, boolean flag)
    {
        bl1.b = flag;
        return flag;
    }

    private void b()
    {
        a = new a(getContext());
        a.setOnTouchListener(new android.view.View.OnTouchListener() {

            final bl a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                boolean flag = bl.a(view, motionevent);
                motionevent.getActionMasked();
                JVM INSTR tableswitch 0 4: default 44
            //                           0 46
            //                           1 73
            //                           2 59
            //                           3 119
            //                           4 119;
                   goto _L1 _L2 _L3 _L4 _L5 _L5
_L1:
                return true;
_L2:
                bl.a(a).a(flag);
                return flag;
_L4:
                bl.a(a).a(flag);
                continue; /* Loop/switch isn't completed */
_L3:
                if (a.getVisibility() == 0 && a.isEnabled() && flag)
                {
                    a.a(motionevent);
                }
                bl.a(a).a(false);
                continue; /* Loop/switch isn't completed */
_L5:
                bl.a(a).a(false);
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                a = bl.this;
                super();
            }
        });
        addView(a, new android.widget.RelativeLayout.LayoutParams(-1, -1));
    }

    private static boolean b(View view, MotionEvent motionevent)
    {
        view.getLocalVisibleRect(d);
        Rect rect = d;
        rect.left = rect.left + view.getPaddingLeft();
        rect = d;
        rect.top = rect.top + view.getPaddingTop();
        rect = d;
        rect.right = rect.right - view.getPaddingRight();
        rect = d;
        rect.bottom = rect.bottom - view.getPaddingBottom();
        return d.contains(Math.round(motionevent.getX()), Math.round(motionevent.getY()));
    }

    static boolean b(bl bl1)
    {
        return bl1.e;
    }

    static boolean c(bl bl1)
    {
        return bl1.b;
    }

    public TextView a()
    {
        if (c == null)
        {
            c = new Button(getContext());
            c.setGravity(17);
        }
        c.postInvalidate();
        return c;
    }

    protected abstract void a(MotionEvent motionevent);

    public void a(android.widget.ImageView.ScaleType scaletype)
    {
        a.setScaleType(scaletype);
    }

    public void a(j j)
    {
        a.a(j);
        a(((String) (null)));
    }

    public void a(j j, android.widget.RelativeLayout.LayoutParams layoutparams)
    {
        a.a(j, layoutparams);
        a(((String) (null)));
    }

    public void a(String s)
    {
        if (s != null)
        {
            a().setText(s);
            addView(a(), new android.widget.RelativeLayout.LayoutParams(-1, -1));
            a.setVisibility(8);
            a(false);
            c.setOnClickListener(new android.view.View.OnClickListener() {

                final bl a;

                public void onClick(View view)
                {
                    a.a(null);
                }

            
            {
                a = bl.this;
                super();
            }
            });
        } else
        if (c != null)
        {
            removeView(a());
            c = null;
            a.setVisibility(0);
            a(true);
            return;
        }
    }

    public void a(boolean flag)
    {
        e = flag;
    }

}
