// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;

// Referenced classes of package com.heyzap.internal:
//            Logger, Utils

static final class val.context
    implements Runnable
{

    final Context val$context;

    public void run()
    {
        boolean flag;
        if (Logger.ENABLED && Utils.packageIsInstalled("com.example.android.snake", val$context))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Logger.ENABLED = flag;
    }

    (Context context1)
    {
        val$context = context1;
        super();
    }
}
