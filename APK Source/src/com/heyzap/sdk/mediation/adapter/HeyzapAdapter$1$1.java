// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

class t> extends com.heyzap.internal.ableTask
{

    final is._cls0 this$1;

    public void run()
    {
        fetchStateManager.start(adUnit);
        final apper wrapper = (apper)fetchStateManager.get(adUnit);
        Logger.trace("fetching");
        fetch(wrapper);
        wrapper.fetchListener.addListener(new Runnable() {

            final HeyzapAdapter._cls1._cls1 this$2;
            final HeyzapAdapter.AdWrapper val$wrapper;

            public void run()
            {
                if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(wrapper.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                {
                    fetchStateManager.set(adUnit, new HeyzapAdapter.AdWrapper());
                    retry();
                }
            }

            
            {
                this$2 = HeyzapAdapter._cls1._cls1.this;
                wrapper = adwrapper;
                super();
            }
        }, HeyzapAdapter.access$100(_fld0));
    }

    l.adUnit()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/HeyzapAdapter$1

/* anonymous class */
    class HeyzapAdapter._cls1
        implements Runnable
    {

        final HeyzapAdapter this$0;
        final com.heyzap.internal.Constants.AdUnit val$adUnit;

        public void run()
        {
            (new RetryManager(new HeyzapAdapter._cls1._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 5L, TimeUnit.SECONDS), HeyzapAdapter.access$200(HeyzapAdapter.this))).start();
        }

            
            {
                this$0 = final_heyzapadapter;
                adUnit = com.heyzap.internal.Constants.AdUnit.this;
                super();
            }
    }

}
