// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.mediation.display:
//            WaterfallMediator

class ay
    implements Runnable
{

    final WaterfallMediator this$0;
    final com.heyzap.mediation.abstr.play val$display;

    public void run()
    {
        try
        {
            if (((com.heyzap.mediation.abstr.ayResult)val$display.displayListener.get()).success)
            {
                WaterfallMediator.access$302(WaterfallMediator.this, System.currentTimeMillis());
            }
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            Logger.trace(interruptedexception);
            return;
        }
        catch (ExecutionException executionexception)
        {
            Logger.trace(executionexception);
        }
    }

    ay()
    {
        this$0 = final_waterfallmediator;
        val$display = com.heyzap.mediation.abstr.play.this;
        super();
    }
}
