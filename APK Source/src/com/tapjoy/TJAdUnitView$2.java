// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.animation.Animator;
import android.view.ViewPropertyAnimator;
import android.widget.ImageButton;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView

class this._cls0
    implements Runnable
{

    final TJAdUnitView this$0;

    public void run()
    {
        TJAdUnitView.access$100(TJAdUnitView.this).animate().alpha(1.0F).setDuration(500L).setListener(new android.animation.Animator.AnimatorListener() {

            final TJAdUnitView._cls2 this$1;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                TJAdUnitView.access$100(this$0).setClickable(true);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                this$1 = TJAdUnitView._cls2.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = TJAdUnitView.this;
        super();
    }
}
