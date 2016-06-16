// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import java.util.concurrent.Executor;

// Referenced classes of package com.chartboost.sdk.impl:
//            e

class b
    implements Executor
{

    final e a;
    private final Handler b;

    public void execute(Runnable runnable)
    {
        b.post(runnable);
    }

    r(e e1, Handler handler)
    {
        a = e1;
        b = handler;
        super();
    }
}
