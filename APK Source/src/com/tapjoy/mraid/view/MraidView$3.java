// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.view.MotionEvent;
import android.view.View;
import com.tapjoy.TapjoyLog;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls0
    implements android.view.Listener
{

    final MraidView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        TapjoyLog.i("MRAIDView", "background touch called");
        return true;
    }

    ()
    {
        this$0 = MraidView.this;
        super();
    }
}
