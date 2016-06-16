// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.view.animation.Animation;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class val.withCallback
    implements android.view.animation.tener
{

    final InterstitialWebView this$0;
    final Boolean val$withCallback;

    public void onAnimationEnd(Animation animation)
    {
        if (val$withCallback.booleanValue())
        {
            InterstitialWebView.access$300(InterstitialWebView.this);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    stener()
    {
        this$0 = final_interstitialwebview;
        val$withCallback = Boolean.this;
        super();
    }
}
