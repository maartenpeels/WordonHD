// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.config;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.mediation.config:
//            MediationConfigLoader, MediationConfig

class nfigListener
    implements Runnable
{

    final MediationConfigLoader this$0;
    final nfigListener val$configListener;

    public void run()
    {
        try
        {
            val$configListener.onConfigLoaded((MediationConfig)MediationConfigLoader.access$700(MediationConfigLoader.this).get());
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

    nfigListener()
    {
        this$0 = final_mediationconfigloader;
        val$configListener = nfigListener.this;
        super();
    }
}
