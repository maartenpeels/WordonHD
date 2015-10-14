// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            ai, ap, bm

class <init> extends <init>
{

    final ai a;

    public void a(bm bm)
    {
        bm = a.p();
        if (bm != null)
        {
            b(bm).e();
        }
    }

    public void a(bm bm, int i)
    {
        bm = a.p();
        if (i == 1)
        {
            if (bm != null)
            {
                b(bm).e();
            }
            return;
        }
        if (bm != null)
        {
            a(bm, false);
            b(bm).h();
        }
        ai.w(a);
    }

    (ai ai1)
    {
        a = ai1;
        super();
    }
}
