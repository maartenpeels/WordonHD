// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.chartboost.sdk.impl:
//            bl

class a
    implements android.view.OnTouchListener
{

    final bl a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag = bl.a(view, motionevent);
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 4: default 44
    //                   0 46
    //                   1 73
    //                   2 59
    //                   3 119
    //                   4 119;
           goto _L1 _L2 _L3 _L4 _L5 _L5
_L1:
        return true;
_L2:
        bl.a(a).a(flag);
        return flag;
_L4:
        bl.a(a).a(flag);
        continue; /* Loop/switch isn't completed */
_L3:
        if (a.getVisibility() == 0 && a.isEnabled() && flag)
        {
            a.a(motionevent);
        }
        bl.a(a).a(false);
        continue; /* Loop/switch isn't completed */
_L5:
        bl.a(a).a(false);
        if (true) goto _L1; else goto _L6
_L6:
    }

    ener(bl bl1)
    {
        a = bl1;
        super();
    }
}
