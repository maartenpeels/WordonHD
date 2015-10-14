// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            an, ai

class a
    implements Runnable
{

    final boolean a;
    final an b;

    public void run()
    {
        if (!a)
        {
            b.setVisibility(8);
            b.clearAnimation();
        }
        b.a.h.remove(Integer.valueOf(hashCode()));
    }

    (an an1, boolean flag)
    {
        b = an1;
        a = flag;
        super();
    }
}
