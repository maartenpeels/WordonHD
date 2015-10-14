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

class  extends com.heyzap.internal.leTask
{

    final is._cls0 this$1;

    public void run()
    {
        final apper wrapper;
        AdcolonyAdapter.access$1100(_fld0).start(adUnit);
        wrapper = (apper)AdcolonyAdapter.access$1100(_fld0).get(adUnit);
        witchMap.com.heyzap.internal.Constants.AdUnit[AdcolonyAdapter.access$1700(_fld0).translate(adUnit).inal()];
        JVM INSTR tableswitch 1 2: default 92
    //                   1 164
    //                   2 188;
           goto _L1 _L2 _L3
_L1:
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

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
        }, new com.heyzap.internal.tialSchedule(1.5D, 4L, TimeUnit.SECONDS), AdcolonyAdapter.access$1800(_fld0))).start();
        wrapper.fetchFuture.addListener(new Runnable() {

            final AdcolonyAdapter._cls3._cls1 this$2;
            final AdcolonyAdapter.AdWrapper val$wrapper;

            public void run()
            {
                if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(wrapper.fetchFuture, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                {
                    AdcolonyAdapter.access$1100(this$0).set(adUnit, new AdcolonyAdapter.AdWrapper(null));
                    retry();
                }
            }

            
            {
                this$2 = AdcolonyAdapter._cls3._cls1.this;
                wrapper = adwrapper;
                super();
            }
        }, AdcolonyAdapter.access$1900(_fld0));
        return;
_L2:
        wrapper.incentivizedAd = new AdColonyV4VCAd(AdcolonyAdapter.access$400(_fld0));
        continue; /* Loop/switch isn't completed */
_L3:
        wrapper.videoAd = new AdColonyVideoAd(AdcolonyAdapter.access$300(_fld0));
        if (true) goto _L1; else goto _L4
_L4:
    }

    l.adUnit()
    {
        this$1 = this._cls1.this;
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

}
