// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.view.MotionEvent;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class Listener extends android.view.OnGestureListener
{

    final MraidView this$0;

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return true;
    }

    Listener()
    {
        this$0 = MraidView.this;
        super();
    }
}
