// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.jirbo.adcolony.AdColonyV4VCAd;
import com.jirbo.adcolony.AdColonyVideoAd;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdcolonyAdapter

class per
    implements Runnable
{

    final try this$2;
    final per val$wrapper;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.sult)FutureUtils.getImmediatelyOrDefault(val$wrapper.fetchFuture, com.heyzap.mediation.abstr.sult.NOT_READY)).success)
        {
            AdcolonyAdapter.access$1100(_fld0).set(adUnit, new per(null));
            _mthtry();
        }
    }

    per()
    {
        this$2 = final_per;
        val$wrapper = per.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3

/* anonymous class */
    class AdcolonyAdapter._cls3
        implements Runnable
    {

        final AdcolonyAdapter this$0;
        final com.heyzap.internal.Constants.AdUnit val$adUnit;

        public void run()
        {
            (new RetryManager(new AdcolonyAdapter._cls3._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 4L, TimeUnit.SECONDS), AdcolonyAdapter.access$2000(AdcolonyAdapter.this))).start();
        }

            
            {
                this$0 = final_adcolonyadapter;
                adUnit = com.heyzap.internal.Constants.AdUnit.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1

/* anonymous class */
    class AdcolonyAdapter._cls3._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final AdcolonyAdapter._cls3 this$1;

        public void run()
        {
            final AdcolonyAdapter.AdWrapper wrapper;
            AdcolonyAdapter.access$1100(this$0).start(adUnit);
            wrapper = (AdcolonyAdapter.AdWrapper)AdcolonyAdapter.access$1100(this$0).get(adUnit);
            AdcolonyAdapter._cls5.$SwitchMap$com$heyzap$internal$Constants$AdUnit[AdcolonyAdapter.access$1700(this$0).translate(adUnit).ordinal()];
            JVM INSTR tableswitch 1 2: default 92
        //                       1 164
        //                       2 188;
               goto _L1 _L2 _L3
_L1:
            (new RetryManager(new AdcolonyAdapter._cls3._cls1._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), AdcolonyAdapter.access$1800(this$0))).start();
            wrapper.fetchFuture.addListener(wrapper. new AdcolonyAdapter._cls3._cls1._cls2(), AdcolonyAdapter.access$1900(this$0));
            return;
_L2:
            wrapper.incentivizedAd = new AdColonyV4VCAd(AdcolonyAdapter.access$400(this$0));
            continue; /* Loop/switch isn't completed */
_L3:
            wrapper.videoAd = new AdColonyVideoAd(AdcolonyAdapter.access$300(this$0));
            if (true) goto _L1; else goto _L4
_L4:
        }

            
            {
                this$1 = AdcolonyAdapter._cls3.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1

/* anonymous class */
        class AdcolonyAdapter._cls3._cls1._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
        {

            final AdcolonyAdapter._cls3._cls1 this$2;
            final AdcolonyAdapter.AdWrapper val$wrapper;

            public void run()
            {
                if (wrapper.videoAd != null && wrapper.videoAd.isReady() || wrapper.incentivizedAd != null && wrapper.incentivizedAd.isReady())
                {
                    wrapper.fetchFuture.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
                }
                if (!wrapper.fetchFuture.isDone())
                {
                    retry();
                }
            }

                    
                    {
                        this$2 = AdcolonyAdapter._cls3._cls1.this;
                        wrapper = adwrapper;
                        super();
                    }
        }

    }

}
