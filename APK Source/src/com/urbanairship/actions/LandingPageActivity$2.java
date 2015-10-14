// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

// Referenced classes of package com.urbanairship.actions:
//            LandingPageActivity

class > extends AnimatorListenerAdapter
{

    final View a;
    final LandingPageActivity b;

    public void onAnimationEnd(Animator animator)
    {
        a.setVisibility(8);
    }

    (LandingPageActivity landingpageactivity, View view)
    {
        b = landingpageactivity;
        a = view;
        super();
    }
}
