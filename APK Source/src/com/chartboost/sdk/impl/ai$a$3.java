// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            ai, ap

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        Object obj;
        boolean flag;
        if (a.a.p)
        {
            obj = "hidden";
        } else
        {
            obj = "shown";
        }
        CBLogging.c("InterstitialVideoViewProtocol", String.format("controls %s automatically from timer", new Object[] {
            obj
        }));
        obj = Logging.c(a);
        if (!a.a.p)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((ap) (obj)).a(flag, true);
        a.a.h.remove(Integer.valueOf(a(a).hashCode()));
    }

    Logging(Logging logging)
    {
        a = logging;
        super();
    }
}
