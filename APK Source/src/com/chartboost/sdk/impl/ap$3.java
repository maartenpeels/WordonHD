// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            ap, ao, al, bl

class a
    implements Runnable
{

    final ap a;

    public void run()
    {
        if (ap.b(a) != null)
        {
            ap.b(a).setVisibility(8);
        }
        ap.c(a).setVisibility(8);
        ap.d(a).setVisibility(8);
        if (ap.e(a) != null)
        {
            ap.e(a).setEnabled(false);
        }
    }

    (ap ap1)
    {
        a = ap1;
        super();
    }
}
