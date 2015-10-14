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
        Iterator iterator = StatusListenerMultiplexer.access$000(StatusListenerMultiplexer.this).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.heyzap.sdk.ads.iplexer iplexer = (com.heyzap.sdk.ads.iplexer)iterator.next();
            iplexer.nHide(val$tag);
            if (usesAudio)
            {
                iplexer.nAudioFinished();
            }
        } while (true);
    }

    ()
    {
        this$0 = final_statuslistenermultiplexer;
        val$tag = String.this;
        super();
    }
}
