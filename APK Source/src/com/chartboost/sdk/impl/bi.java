// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.e;

// Referenced classes of package com.chartboost.sdk.impl:
//            bq, bn

public final class bi
{
    public static interface a
    {

        public abstract void a(com.chartboost.sdk.Model.a a1);
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        public static final b g;
        private static final b h[];

        public static b a(int i)
        {
            if (i == 0)
            {
                return null;
            }
            if (i > 0 && i <= values().length)
            {
                return values()[i - 1];
            } else
            {
                return null;
            }
        }

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/bi$b, s);
        }

        public static b[] values()
        {
            return (b[])h.clone();
        }

        static 
        {
            a = new b("PERSPECTIVE_ROTATE", 0);
            b = new b("BOUNCE", 1);
            c = new b("PERSPECTIVE_ZOOM", 2);
            d = new b("SLIDE_FROM_BOTTOM", 3);
            e = new b("SLIDE_FROM_TOP", 4);
            f = new b("FADE", 5);
            g = new b("NONE", 6);
            h = (new b[] {
                a, b, c, d, e, f, g
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public static void a(b b1, com.chartboost.sdk.Model.a a1, a a2)
    {
        b(b1, a1, a2, true);
    }

    static void a(b b1, com.chartboost.sdk.Model.a a1, a a2, boolean flag)
    {
        c(b1, a1, a2, flag);
    }

    public static void a(boolean flag, View view)
    {
        a(flag, view, 250L);
    }

    public static void a(boolean flag, View view, long l)
    {
        float f1 = 0.0F;
        view.clearAnimation();
        if (flag)
        {
            view.setVisibility(0);
        }
        float f;
        AlphaAnimation alphaanimation;
        if (flag)
        {
            f = 0.0F;
        } else
        {
            f = 1.0F;
        }
        if (flag)
        {
            f1 = 1.0F;
        }
        alphaanimation = new AlphaAnimation(f, f1);
        alphaanimation.setDuration(250L);
        alphaanimation.setFillBefore(true);
        view.startAnimation(alphaanimation);
    }

    public static void b(b b1, com.chartboost.sdk.Model.a a1, a a2)
    {
        c(b1, a1, a2, false);
    }

    private static void b(b b1, com.chartboost.sdk.Model.a a1, a a2, boolean flag)
    {
        if (b1 == b.g)
        {
            if (a2 != null)
            {
                a2.a(a1);
            }
        } else
        {
            if (a1 == null || a1.h == null)
            {
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
                return;
            }
            View view = a1.h.f();
            if (view == null)
            {
                e.a().d(a1);
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
                return;
            }
            ViewTreeObserver viewtreeobserver = view.getViewTreeObserver();
            if (viewtreeobserver.isAlive())
            {
                viewtreeobserver.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(view, b1, a1, a2, flag) {

                    final View a;
                    final b b;
                    final com.chartboost.sdk.Model.a c;
                    final a d;
                    final boolean e;

                    public void onGlobalLayout()
                    {
                        a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        com.chartboost.sdk.impl.bi.a(b, c, d, e);
                    }

            
            {
                a = view;
                b = b1;
                c = a1;
                d = a2;
                e = flag;
                super();
            }
                });
                return;
            }
        }
    }

    private static void c(b b1, com.chartboost.sdk.Model.a a1, a a2, boolean flag)
    {
        Object obj;
        obj = new AnimationSet(true);
        ((AnimationSet) (obj)).addAnimation(new AlphaAnimation(1.0F, 1.0F));
        if (a1 != null && a1.h != null) goto _L2; else goto _L1
_L1:
        CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
_L10:
        return;
_L2:
        float f;
        float f1;
        float f4;
        Object obj1;
        obj1 = a1.h.f();
        if (obj1 == null)
        {
            CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
            return;
        }
        if (a1.e == com.chartboost.sdk.Model.a.d.c || a1.e == com.chartboost.sdk.Model.a.d.b)
        {
            obj1 = a1.h;
        }
        f1 = ((View) (obj1)).getWidth();
        f = ((View) (obj1)).getHeight();
        f4 = (1.0F - 0.4F) / 2.0F;
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[b.values().length];
                try
                {
                    a[b.f.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[b.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[com.chartboost.sdk.impl.b.a.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[b.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.chartboost.sdk.impl.b.e.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.b.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        com.chartboost.sdk.impl._cls3.a[b1.ordinal()];
        JVM INSTR tableswitch 1 6: default 160
    //                   1 179
    //                   2 246
    //                   3 446
    //                   4 646
    //                   5 709
    //                   6 778;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        if (b1 == b.g)
        {
            if (a2 != null)
            {
                a2.a(a1);
                return;
            }
        } else
        {
            if (a2 != null)
            {
                CBUtility.e().postDelayed(new Runnable(a2, a1) {

                    final a a;
                    final com.chartboost.sdk.Model.a b;

                    public void run()
                    {
                        a.a(b);
                    }

            
            {
                a = a1;
                b = a2;
                super();
            }
                }, 250L);
            }
            ((View) (obj1)).startAnimation(((Animation) (obj)));
            return;
        }
        if (true) goto _L10; else goto _L4
_L4:
        AnimationSet animationset;
        if (flag)
        {
            obj = new AlphaAnimation(0.0F, 1.0F);
        } else
        {
            obj = new AlphaAnimation(1.0F, 0.0F);
        }
        ((Animation) (obj)).setDuration(250L);
        ((Animation) (obj)).setFillAfter(true);
        animationset = new AnimationSet(true);
        animationset.addAnimation(((Animation) (obj)));
        obj = animationset;
          goto _L3
_L5:
        Object obj2;
        if (flag)
        {
            obj2 = new bn(-60F, 0.0F, f1 / 2.0F, f / 2.0F, false);
        } else
        {
            obj2 = new bn(0.0F, 60F, f1 / 2.0F, f / 2.0F, false);
        }
        ((Animation) (obj2)).setDuration(250L);
        ((Animation) (obj2)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj2)));
        if (flag)
        {
            obj2 = new ScaleAnimation(0.4F, 1.0F, 0.4F, 1.0F);
        } else
        {
            obj2 = new ScaleAnimation(1.0F, 0.4F, 1.0F, 0.4F);
        }
        ((Animation) (obj2)).setDuration(250L);
        ((Animation) (obj2)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj2)));
        if (flag)
        {
            obj2 = new TranslateAnimation(f1 * f4, 0.0F, -f * 0.4F, 0.0F);
        } else
        {
            obj2 = new TranslateAnimation(0.0F, f1 * f4, 0.0F, f);
        }
        ((Animation) (obj2)).setDuration(250L);
        ((Animation) (obj2)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj2)));
          goto _L3
_L6:
        Object obj3;
        if (flag)
        {
            obj3 = new bn(-60F, 0.0F, f1 / 2.0F, f / 2.0F, true);
        } else
        {
            obj3 = new bn(0.0F, 60F, f1 / 2.0F, f / 2.0F, true);
        }
        ((Animation) (obj3)).setDuration(250L);
        ((Animation) (obj3)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj3)));
        if (flag)
        {
            obj3 = new ScaleAnimation(0.4F, 1.0F, 0.4F, 1.0F);
        } else
        {
            obj3 = new ScaleAnimation(1.0F, 0.4F, 1.0F, 0.4F);
        }
        ((Animation) (obj3)).setDuration(250L);
        ((Animation) (obj3)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj3)));
        if (flag)
        {
            obj3 = new TranslateAnimation(-f1 * 0.4F, 0.0F, f * f4, 0.0F);
        } else
        {
            obj3 = new TranslateAnimation(0.0F, f1, 0.0F, f * f4);
        }
        ((Animation) (obj3)).setDuration(250L);
        ((Animation) (obj3)).setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(((Animation) (obj3)));
          goto _L3
_L7:
        float f2;
        TranslateAnimation translateanimation;
        if (flag)
        {
            f2 = f;
        } else
        {
            f2 = 0.0F;
        }
        if (flag)
        {
            f = 0.0F;
        }
        translateanimation = new TranslateAnimation(0.0F, 0.0F, f2, f);
        translateanimation.setDuration(250L);
        translateanimation.setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(translateanimation);
          goto _L3
_L8:
        float f3;
        TranslateAnimation translateanimation1;
        if (flag)
        {
            f3 = -f;
        } else
        {
            f3 = 0.0F;
        }
        if (flag)
        {
            f = 0.0F;
        } else
        {
            f = -f;
        }
        translateanimation1 = new TranslateAnimation(0.0F, 0.0F, f3, f);
        translateanimation1.setDuration(250L);
        translateanimation1.setFillAfter(true);
        ((AnimationSet) (obj)).addAnimation(translateanimation1);
          goto _L3
_L9:
        if (flag)
        {
            ScaleAnimation scaleanimation = new ScaleAnimation(0.6F, 1.1F, 0.6F, 1.1F, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(Math.round(150F));
            scaleanimation.setStartOffset(0L);
            scaleanimation.setFillAfter(true);
            ((AnimationSet) (obj)).addAnimation(scaleanimation);
            scaleanimation = new ScaleAnimation(1.0F, 0.8181818F, 1.0F, 0.8181818F, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(Math.round(50F));
            scaleanimation.setStartOffset(Math.round(150F));
            scaleanimation.setFillAfter(true);
            ((AnimationSet) (obj)).addAnimation(scaleanimation);
            scaleanimation = new ScaleAnimation(1.0F, 1.111111F, 1.0F, 1.111111F, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(Math.round(24.99999F));
            scaleanimation.setStartOffset(Math.round(200F));
            scaleanimation.setFillAfter(true);
            ((AnimationSet) (obj)).addAnimation(scaleanimation);
        } else
        {
            ScaleAnimation scaleanimation1 = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
            scaleanimation1.setDuration(250L);
            scaleanimation1.setStartOffset(0L);
            scaleanimation1.setFillAfter(true);
            ((AnimationSet) (obj)).addAnimation(scaleanimation1);
        }
          goto _L3
    }
}
