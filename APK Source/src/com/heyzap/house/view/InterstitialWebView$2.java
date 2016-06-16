// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class val.doCallback
    implements Runnable
{

    final InterstitialWebView this$0;
    final Boolean val$animated;
    final Boolean val$doCallback;

    public void run()
    {
        if (!val$animated.booleanValue())
        {
            if (val$doCallback.booleanValue())
            {
                InterstitialWebView.access$200(InterstitialWebView.this);
            }
            return;
        } else
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(150L);
            alphaanimation.setInterpolator(new AccelerateInterpolator());
            alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final InterstitialWebView._cls2 this$1;

                public void onAnimationEnd(Animation animation)
                {
                    if (doCallback.booleanValue())
                    {
                        InterstitialWebView.access$200(this$0);
                    }
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$1 = InterstitialWebView._cls2.this;
                super();
            }
            });
            InterstitialWebView.access$100(InterstitialWebView.this).startAnimation(alphaanimation);
            return;
        }
    }

    _cls1.this._cls1()
    {
        this$0 = final_interstitialwebview;
        val$animated = boolean1;
        val$doCallback = Boolean.this;
        super();
    }
}
