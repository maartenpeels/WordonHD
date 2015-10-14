// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.HashMap;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TJEventOptimizer, TJEvent, TapjoyLog

private class token extends TimerTask
{

    final TJEventOptimizer this$0;
    String token;

    public void run()
    {
        TJEvent tjevent = (TJEvent)TJEventOptimizer.access$500(TJEventOptimizer.this).get(token);
        if (tjevent != null)
        {
            TapjoyLog.d(TJEventOptimizer.access$400(), (new StringBuilder()).append("Event optimization call timed out for event ").append(tjevent.getName()).append(", fall through to full event call").toString());
            eventOptimizationCallback(token, true);
        }
    }

    public (String s)
    {
        this$0 = TJEventOptimizer.this;
        super();
        token = s;
    }
}
