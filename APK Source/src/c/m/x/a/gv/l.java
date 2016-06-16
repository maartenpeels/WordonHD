// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.view.animation.Animation;

// Referenced classes of package c.m.x.a.gv:
//            d, j

final class l
    implements android.view.animation.Animation.AnimationListener
{

    final d a;
    final j b;

    l(j j1, d d1)
    {
        b = j1;
        a = d1;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        if (a.mAnimatingAway != null)
        {
            a.mAnimatingAway = null;
            b.a(a, a.mStateAfterAnimating, 0, 0, false);
        }
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
    }
}
