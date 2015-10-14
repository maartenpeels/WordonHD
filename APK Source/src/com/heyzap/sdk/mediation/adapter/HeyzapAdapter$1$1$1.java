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

class per
    implements Runnable
{

    final try this$2;
    final per val$wrapper;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.Result)FutureUtils.getImmediatelyOrDefault(val$wrapper.fetchListener, com.heyzap.mediation.abstr.Result.NOT_READY)).success)
        {
            fetchStateManager.set(adUnit, new per());
            _mthtry();
        }
    }

    per()
    {
        this$2 = final_per;
        val$wrapper = per.this;
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


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1

/* anonymous class */
    class HeyzapAdapter._cls1._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final HeyzapAdapter._cls1 this$1;

        public void run()
        {
            fetchStateManager.start(adUnit);
            HeyzapAdapter.AdWrapper adwrapper = (HeyzapAdapter.AdWrapper)fetchStateManager.get(adUnit);
            Logger.trace("fetching");
            fetch(adwrapper);
            adwrapper.fetchListener.addListener(adwrapper. new HeyzapAdapter._cls1._cls1._cls1(), HeyzapAdapter.access$100(this$0));
        }

            
            {
                this$1 = HeyzapAdapter._cls1.this;
                super();
            }
    }

}
