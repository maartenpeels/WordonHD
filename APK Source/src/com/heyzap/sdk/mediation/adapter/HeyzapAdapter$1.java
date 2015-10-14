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

class val.adUnit
    implements Runnable
{

    final HeyzapAdapter this$0;
    final com.heyzap.internal. val$adUnit;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final HeyzapAdapter._cls1 this$1;

            public void run()
            {
                fetchStateManager.start(adUnit);
                HeyzapAdapter.AdWrapper adwrapper = (HeyzapAdapter.AdWrapper)fetchStateManager.get(adUnit);
                Logger.trace("fetching");
                fetch(adwrapper);
                adwrapper.fetchListener.addListener(adwrapper. new Runnable() {

                    final _cls1 this$2;
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
                this$2 = final__pcls1;
                wrapper = HeyzapAdapter.AdWrapper.this;
                super();
            }
                }, HeyzapAdapter.access$100(this$0));
            }

            
            {
                this$1 = HeyzapAdapter._cls1.this;
                super();
            }
        }, new com.heyzap.internal.onentialSchedule(2D, 5L, TimeUnit.SECONDS), HeyzapAdapter.access$200(HeyzapAdapter.this))).start();
    }

    nit>()
    {
        this$0 = final_heyzapadapter;
        val$adUnit = com.heyzap.internal..this;
        super();
    }
}
