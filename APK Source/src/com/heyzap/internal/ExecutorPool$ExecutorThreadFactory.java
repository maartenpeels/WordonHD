// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.heyzap.internal:
//            ExecutorPool

class this._cls0
    implements ThreadFactory
{

    final ExecutorPool this$0;

    public Thread newThread(Runnable runnable)
    {
        return new Thread(runnable, "HeyzapThreadPool");
    }

    ()
    {
        this$0 = ExecutorPool.this;
        super();
    }
}
