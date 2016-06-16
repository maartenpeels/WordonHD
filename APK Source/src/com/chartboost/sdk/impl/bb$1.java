// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.CountDownTimer;

// Referenced classes of package com.chartboost.sdk.impl:
//            bb

class it> extends CountDownTimer
{

    final bb a;

    public void onFinish()
    {
        a.c();
    }

    public void onTick(long l)
    {
    }

    (bb bb1, long l, long l1)
    {
        a = bb1;
        super(l, l1);
    }
}
