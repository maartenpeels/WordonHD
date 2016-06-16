// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class c extends BroadcastReceiver
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        boolean flag = b.a(a);
        if (flag == b.b(a))
        {
            return;
        }
        intent = a;
        if (flag)
        {
            context = "true";
        } else
        {
            context = "false";
        }
        b.a(intent, "NETWORK_REACHABILITY_CHANGED", context);
        b.a(a, flag);
    }
}
