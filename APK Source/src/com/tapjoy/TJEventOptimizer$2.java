// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.Timer;

// Referenced classes of package com.tapjoy:
//            TJEventOptimizer

class val.params
    implements Runnable
{

    final TJEventOptimizer this$0;
    final String val$params;
    final String val$token;

    public void run()
    {
        String s = (new StringBuilder()).append("window.eventsProxy.processEvent('").append(val$token).append("', ").append(val$params).append(");").toString();
        EventTimerTask eventtimertask = new EventTimerTask(TJEventOptimizer.this, val$token);
        (new Timer()).schedule(eventtimertask, 2000L);
        if (android.os.NT >= 19)
        {
            evaluateJavascript(s, null);
            return;
        } else
        {
            loadUrl((new StringBuilder()).append("javascript:").append(s).toString());
            return;
        }
    }

    EventTimerTask()
    {
        this$0 = final_tjeventoptimizer;
        val$token = s;
        val$params = String.this;
        super();
    }
}
