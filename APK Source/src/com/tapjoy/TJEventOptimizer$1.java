// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;

// Referenced classes of package com.tapjoy:
//            TJEventOptimizer

static final class val.context
    implements Runnable
{

    final Context val$context;

    public void run()
    {
        TJEventOptimizer _tmp = TJEventOptimizer.access$202(new TJEventOptimizer(val$context, null));
    }

    (Context context1)
    {
        val$context = context1;
        super();
    }
}
