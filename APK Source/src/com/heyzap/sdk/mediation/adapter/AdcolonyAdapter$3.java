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

class val.adUnit
    implements Runnable
{

    final AdcolonyAdapter this$0;
    final com.heyzap.internal.onyAdapter val$adUnit;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final AdcolonyAdapter._cls3 this$1;

            public void run()
            {
                AdcolonyAdapter.AdWrapper adwrapper;
                AdcolonyAdapter.access$1100(this$0).start(adUnit);
                adwrapper = (AdcolonyAdapter.AdWrapper)AdcolonyAdapter.access$1100(this$0).get(adUnit);
                AdcolonyAdapter._cls5.$SwitchMap$com$heyzap$internal$Constants$AdUnit[AdcolonyAdapter.access$1700(this$0).translate(adUnit).ordinal()];
                JVM INSTR tableswitch 1 2: default 92
            //                           1 164
            //                           2 188;
                   goto _L1 _L2 _L3
_L1:
                (new RetryManager(adwrapper. new com.heyzap.internal.RetryManager.RetryableTask() {

                    final _cls1 this$2;
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
                this$2 = final__pcls1;
                wrapper = AdcolonyAdapter.AdWrapper.this;
                super();
            }
                }, new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), AdcolonyAdapter.access$1800(this$0))).start();
                adwrapper.fetchFuture.addListener(adwrapper. new Runnable() {

                    final _cls1 this$2;
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
                this$2 = final__pcls1;
                wrapper = AdcolonyAdapter.AdWrapper.this;
                super();
            }
                }, AdcolonyAdapter.access$1900(this$0));
                return;
_L2:
                adwrapper.incentivizedAd = new AdColonyV4VCAd(AdcolonyAdapter.access$400(this$0));
                continue; /* Loop/switch isn't completed */
_L3:
                adwrapper.videoAd = new AdColonyVideoAd(AdcolonyAdapter.access$300(this$0));
                if (true) goto _L1; else goto _L4
_L4:
            }

            
            {
                this$1 = AdcolonyAdapter._cls3.this;
                super();
            }
        }, new com.heyzap.internal.entialSchedule(2D, 4L, TimeUnit.SECONDS), AdcolonyAdapter.access$2000(AdcolonyAdapter.this))).start();
    }

    t>()
    {
        this$0 = final_adcolonyadapter;
        val$adUnit = com.heyzap.internal.onyAdapter._cls3.val.adUnit.this;
        super();
    }
}
