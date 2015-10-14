// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.mediation.adapter:
//            AdapterPool

class val.fetchFuture
    implements Runnable
{

    final val.e this$1;
    final Event val$e;
    final SettableFuture val$fetchFuture;

    public void run()
    {
        val$e.fetchFinishedTime(System.currentTimeMillis());
        try
        {
            com.heyzap.mediation.abstr.etchResult etchresult = (com.heyzap.mediation.abstr.etchResult)val$fetchFuture.get();
            if (!etchresult.success)
            {
                val$e.fetchFailReason(etchresult.errorMessage).commit(true);
                return;
            }
        }
        catch (Exception exception)
        {
            val$e.fetchFailReason(exception.getLocalizedMessage()).commit(true);
            Logger.trace(exception);
            return;
        }
        val$e.commit();
        return;
    }

    l.networkVersion()
    {
        this$1 = final_networkversion;
        val$e = event;
        val$fetchFuture = SettableFuture.this;
        super();
    }

    // Unreferenced inner class com/heyzap/mediation/adapter/AdapterPool$1

/* anonymous class */
    class AdapterPool._cls1
        implements com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener
    {

        final AdapterPool this$0;
        final String val$networkName;
        final String val$networkVersion;

        public void onFetchStarted(final com.heyzap.internal.Constants.AdUnit e, SettableFuture settablefuture)
        {
            e = MetricsTracker.getEvent(networkName).networkVersion(networkVersion).fetch(true).fetchTime(System.currentTimeMillis());
            e.commit();
            settablefuture.addListener(settablefuture. new AdapterPool._cls1._cls1(), AdapterPool.access$000(AdapterPool.this));
        }

            
            {
                this$0 = final_adapterpool;
                networkName = s;
                networkVersion = String.this;
                super();
            }
    }

}
