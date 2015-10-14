// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class this._cls1
    implements android.view.animation.ner
{

    final is._cls0 this$1;

    public void onAnimationEnd(Animation animation)
    {
        if (doCallback.booleanValue())
        {
            InterstitialWebView.access$200(_fld0);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    l.doCallback()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/house/view/InterstitialWebView$2

/* anonymous class */
    class InterstitialWebView._cls2
        implements Runnable
    {

        final InterstitialWebView this$0;
        final Boolean val$animated;
        final Boolean val$doCallback;

        public void run()
        {
            if (!animated.booleanValue())
            {
                if (doCallback.booleanValue())
                {
                    InterstitialWebView.access$200(InterstitialWebView.this);
                }
                return;
            } else
            {
                AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                alphaanimation.setDuration(150L);
                alphaanimation.setInterpolator(new AccelerateInterpolator());
                alphaanimation.setAnimationListener(new InterstitialWebView._cls2._cls1());
                InterstitialWebView.access$100(InterstitialWebView.this).startAnimation(alphaanimation);
                return;
            }
        }

            
            {
                this$0 = final_interstitialwebview;
                animated = boolean1;
                doCallback = Boolean.this;
                super();
            }
    }

}
