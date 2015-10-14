// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.f;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            ao, ai

public abstract class an extends RelativeLayout
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a e[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/an$a, s);
        }

        public static a[] values()
        {
            return (a[])e.clone();
        }

        static 
        {
            a = new a("TOP", 0);
            b = new a("BOTTOM", 1);
            c = new a("LEFT", 2);
            d = new a("RIGHT", 3);
            e = (new a[] {
                a, b, c, d
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    protected ai a;
    private ao b;
    private a c;

    public an(Context context, ai ai1)
    {
        super(context);
        a = ai1;
        c = a.b;
        a(context);
    }

    private void a(Context context)
    {
        context = getContext();
        setGravity(17);
        b = new ao(context);
        b.a(-1);
        b.setBackgroundColor(0xccffffff);
        addView(b, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        addView(a(), new android.widget.RelativeLayout.LayoutParams(-1, -1));
    }

    private void a(boolean flag, long l)
    {
        float f1;
        Runnable runnable;
        a.t = flag;
        if (flag && getVisibility() == 0 || !flag && getVisibility() == 8)
        {
            return;
        }
        runnable = new Runnable(flag) {

            final boolean a;
            final an b;

            public void run()
            {
                if (!a)
                {
                    b.setVisibility(8);
                    b.clearAnimation();
                }
                b.a.h.remove(Integer.valueOf(hashCode()));
            }

            
            {
                b = an.this;
                a = flag;
                super();
            }
        };
        if (flag)
        {
            setVisibility(0);
        }
        f1 = CBUtility.a(b(), getContext());
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[a.values().length];
                try
                {
                    a[a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls2.a[c.ordinal()];
        JVM INSTR tableswitch 1 4: default 108
    //                   1 168
    //                   2 216
    //                   3 255
    //                   4 303;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_303;
_L1:
        TranslateAnimation translateanimation = null;
_L6:
        translateanimation.setDuration(l);
        float f2;
        if (flag)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        translateanimation.setFillAfter(flag);
        startAnimation(translateanimation);
        a.h.put(Integer.valueOf(hashCode()), runnable);
        f.a.postDelayed(runnable, l);
        return;
_L2:
        if (flag)
        {
            f2 = -f1;
        } else
        {
            f2 = 0.0F;
        }
        if (flag)
        {
            f1 = 0.0F;
        } else
        {
            f1 = -f1;
        }
        translateanimation = new TranslateAnimation(0.0F, 0.0F, f2, f1);
          goto _L6
_L3:
        if (flag)
        {
            f2 = f1;
        } else
        {
            f2 = 0.0F;
        }
        if (flag)
        {
            f1 = 0.0F;
        }
        translateanimation = new TranslateAnimation(0.0F, 0.0F, f2, f1);
          goto _L6
_L4:
        if (flag)
        {
            f2 = -f1;
        } else
        {
            f2 = 0.0F;
        }
        if (flag)
        {
            f1 = 0.0F;
        } else
        {
            f1 = -f1;
        }
        translateanimation = new TranslateAnimation(f2, f1, 0.0F, 0.0F);
          goto _L6
        if (flag)
        {
            f2 = f1;
        } else
        {
            f2 = 0.0F;
        }
        if (flag)
        {
            f1 = 0.0F;
        }
        translateanimation = new TranslateAnimation(f2, f1, 0.0F, 0.0F);
          goto _L6
    }

    protected abstract View a();

    public void a(a a1)
    {
        int i;
        if (a1 == null)
        {
            throw new IllegalArgumentException("the given side cannot be null");
        }
        c = a1;
        a1 = null;
        setClickable(false);
        i = b();
        _cls2.a[c.ordinal()];
        JVM INSTR tableswitch 1 4: default 72
    //                   1 78
    //                   2 112
    //                   3 146
    //                   4 181;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        setLayoutParams(a1);
        return;
_L2:
        a1 = new android.widget.RelativeLayout.LayoutParams(-1, CBUtility.a(i, getContext()));
        a1.addRule(10);
        b.b(1);
        continue; /* Loop/switch isn't completed */
_L3:
        a1 = new android.widget.RelativeLayout.LayoutParams(-1, CBUtility.a(i, getContext()));
        a1.addRule(12);
        b.b(4);
        continue; /* Loop/switch isn't completed */
_L4:
        a1 = new android.widget.RelativeLayout.LayoutParams(CBUtility.a(i, getContext()), -1);
        a1.addRule(9);
        b.b(8);
        continue; /* Loop/switch isn't completed */
_L5:
        a1 = new android.widget.RelativeLayout.LayoutParams(CBUtility.a(i, getContext()), -1);
        a1.addRule(11);
        b.b(2);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void a(boolean flag)
    {
        a(flag, 250L);
    }

    protected abstract int b();
}
