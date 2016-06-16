// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.animation.Animator;
import android.view.ViewPropertyAnimator;
import android.widget.ImageButton;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView

class this._cls1
    implements android.animation.Listener
{

    final etClickable this$1;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        TJAdUnitView.access$100(_fld0).setClickable(true);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/tapjoy/TJAdUnitView$2

/* anonymous class */
    class TJAdUnitView._cls2
        implements Runnable
    {

        final TJAdUnitView this$0;

        public void run()
        {
            TJAdUnitView.access$100(TJAdUnitView.this).animate().alpha(1.0F).setDuration(500L).setListener(new TJAdUnitView._cls2._cls1());
        }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
    }

}
