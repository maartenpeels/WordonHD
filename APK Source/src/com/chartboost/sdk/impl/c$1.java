// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.concurrent.BlockingQueue;

// Referenced classes of package com.chartboost.sdk.impl:
//            c, l

class b
    implements Runnable
{

    final c a;
    private final l b;

    public void run()
    {
        try
        {
            c.a(a).put(b);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    on(c c1, l l)
    {
        a = c1;
        b = l;
        super();
    }
}
