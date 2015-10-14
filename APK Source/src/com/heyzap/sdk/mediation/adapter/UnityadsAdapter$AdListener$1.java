// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            UnityadsAdapter

class val.skipped
    implements Runnable
{

    final val.skipped this$1;
    final boolean val$skipped;

    public void run()
    {
        SettableFuture settablefuture = UnityadsAdapter.access$900(_fld0).incentiveListener;
        boolean flag;
        if (!val$skipped)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        settablefuture.set(Boolean.valueOf(flag));
    }

    ()
    {
        this$1 = final_;
        val$skipped = Z.this;
        super();
    }
}
