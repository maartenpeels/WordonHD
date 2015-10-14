// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ChartboostAdapter

class val.adUnit
    implements Runnable
{

    final ChartboostAdapter this$0;
    final com.heyzap.internal.ostAdapter val$adUnit;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final ChartboostAdapter._cls3 this$1;

            public void run()
            {
                ChartboostAdapter.access$1700(this$0).start(adUnit);
                ChartboostAdapter.FetchHolder fetchholder = (ChartboostAdapter.FetchHolder)ChartboostAdapter.access$1700(this$0).get(adUnit);
                ChartboostAdapter.access$1800(this$0, adUnit);
                (new RetryManager(fetchholder. new com.heyzap.internal.RetryManager.RetryableTask() {

                    final _cls1 this$2;
                    final ChartboostAdapter.FetchHolder val$localFetch;

                    public void run()
                    {
                        if (ChartboostAdapter.access$1900(this$0, adUnit))
                        {
                            localFetch.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
                        }
                        if (!localFetch.fetchListener.isDone())
                        {
                            retry();
                        }
                    }

            
            {
                this$2 = final__pcls1;
                localFetch = ChartboostAdapter.FetchHolder.this;
                super();
            }
                }, new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), ChartboostAdapter.access$2000(this$0))).start();
                fetchholder.fetchListener.addListener(fetchholder. new Runnable() {

                    final _cls1 this$2;
                    final ChartboostAdapter.FetchHolder val$localFetch;

                    public void run()
                    {
                        if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(localFetch.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                        {
                            ChartboostAdapter.access$1700(this$0).set(adUnit, new ChartboostAdapter.FetchHolder());
                            retry();
                        }
                    }

            
            {
                this$2 = final__pcls1;
                localFetch = ChartboostAdapter.FetchHolder.this;
                super();
            }
                }, ChartboostAdapter.access$2100(this$0));
            }

            
            {
                this$1 = ChartboostAdapter._cls3.this;
                super();
            }
        }, new com.heyzap.internal.tialSchedule(2D, 5L, TimeUnit.SECONDS), ChartboostAdapter.access$2200(ChartboostAdapter.this))).start();
    }

    ()
    {
        this$0 = final_chartboostadapter;
        val$adUnit = com.heyzap.internal.ostAdapter._cls3.val.adUnit.this;
        super();
    }
}
