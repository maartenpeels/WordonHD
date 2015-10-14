// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;

// Referenced classes of package com.chartboost.sdk.impl:
//            bl, ah

class t> extends bl
{

    final ah a;
    final b b;

    protected void a(MotionEvent motionevent)
    {
        b.b(motionevent.getX(), motionevent.getY());
    }

    ( , Context context, ah ah1)
    {
        b = ;
        a = ah1;
        super(context);
    }
}
