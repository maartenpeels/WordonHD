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

class val.networkVersion
    implements com.heyzap.mediation.abstr..FetchStartedListener
{

    final AdapterPool this$0;
    final String val$networkName;
    final String val$networkVersion;

    public void onFetchStarted(final com.heyzap.internal.it e, final SettableFuture fetchFuture)
    {
        e = MetricsTracker.getEvent(val$networkName).networkVersion(val$networkVersion).fetch(true).fetchTime(System.currentTimeMillis());
        e.commit();
        fetchFuture.addListener(new Runnable() {

            final AdapterPool._cls1 this$1;
            final Event val$e;
            final SettableFuture val$fetchFuture;

            public void run()
            {
                e.fetchFinishedTime(System.currentTimeMillis());
                try
                {
                    com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult = (com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)fetchFuture.get();
                    if (!fetchresult.success)
                    {
                        e.fetchFailReason(fetchresult.errorMessage).commit(true);
                        return;
                    }
                }
                catch (Exception exception)
                {
                    e.fetchFailReason(exception.getLocalizedMessage()).commit(true);
                    Logger.trace(exception);
                    return;
                }
                e.commit();
                return;
            }

            
            {
                this$1 = AdapterPool._cls1.this;
                e = event;
                fetchFuture = settablefuture;
                super();
            }
        }, AdapterPool.access$000(AdapterPool.this));
    }

    _cls1.val.fetchFuture()
    {
        this$0 = final_adapterpool;
        val$networkName = s;
        val$networkVersion = String.this;
        super();
    }
}
