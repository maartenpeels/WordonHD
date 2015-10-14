// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.mediation.handler:
//            StatusListenerMultiplexer

class val.tag
    implements Runnable
{

    final StatusListenerMultiplexer this$0;
    final com.heyzap.mediation.abstr._cls1.val.tag val$display;
    final String val$tag;

    public void run()
    {
        boolean flag = false;
        boolean flag1;
        try
        {
            flag1 = ((com.heyzap.mediation.abstr.)val$display.playListener.get()).success;
        }
        catch (InterruptedException interruptedexception)
        {
            Logger.trace(interruptedexception);
            continue;
        }
        catch (ExecutionException executionexception)
        {
            Logger.trace(executionexception);
            continue;
        }
        flag = flag1;
        do
        {
            Iterator iterator = StatusListenerMultiplexer.access$000(StatusListenerMultiplexer.this).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.heyzap.sdk.ads.iplexer iplexer = (com.heyzap.sdk.ads.iplexer)iterator.next();
                if (flag)
                {
                    iplexer.nShow(val$tag);
                    if (usesAudio)
                    {
                        iplexer.nAudioStarted();
                    }
                } else
                {
                    iplexer.nFailedToShow(val$tag);
                }
            } while (true);
            return;
        } while (true);
    }

    ()
    {
        this$0 = final_statuslistenermultiplexer;
        val$display = _pcls1;
        val$tag = String.this;
        super();
    }
}
