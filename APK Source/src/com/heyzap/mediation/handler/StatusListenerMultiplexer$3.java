// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.mediation.handler:
//            StatusListenerMultiplexer

class val.tag
    implements Runnable
{

    final StatusListenerMultiplexer this$0;
    final String val$tag;

    public void run()
    {
        for (Iterator iterator = StatusListenerMultiplexer.access$000(StatusListenerMultiplexer.this).iterator(); iterator.hasNext(); ((com.heyzap.sdk.ads.iplexer)iterator.next()).nClick(val$tag)) { }
    }

    ()
    {
        this$0 = final_statuslistenermultiplexer;
        val$tag = String.this;
        super();
    }
}
