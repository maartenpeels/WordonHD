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

class older
    implements Runnable
{

    final try this$2;
    final older val$localFetch;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.lt)FutureUtils.getImmediatelyOrDefault(val$localFetch.fetchListener, com.heyzap.mediation.abstr.lt.NOT_READY)).success)
        {
            ChartboostAdapter.access$1700(_fld0).set(adUnit, new older());
            _mthtry();
        }
    }

    older()
    {
        this$2 = final_older;
        val$localFetch = older.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$3

/* anonymous class */
    class ChartboostAdapter._cls3
        implements Runnable
    {

        final ChartboostAdapter this$0;
        final com.heyzap.internal.Constants.AdUnit val$adUnit;

        public void run()
        {
            (new RetryManager(new ChartboostAdapter._cls3._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 5L, TimeUnit.SECONDS), ChartboostAdapter.access$2200(ChartboostAdapter.this))).start();
        }

            
            {
                this$0 = final_chartboostadapter;
                adUnit = com.heyzap.internal.Constants.AdUnit.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1

/* anonymous class */
    class ChartboostAdapter._cls3._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final ChartboostAdapter._cls3 this$1;

        public void run()
        {
            ChartboostAdapter.access$1700(this$0).start(adUnit);
            final ChartboostAdapter.FetchHolder localFetch = (ChartboostAdapter.FetchHolder)ChartboostAdapter.access$1700(this$0).get(adUnit);
            ChartboostAdapter.access$1800(this$0, adUnit);
            (new RetryManager(new ChartboostAdapter._cls3._cls1._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), ChartboostAdapter.access$2000(this$0))).start();
            localFetch.fetchListener.addListener(localFetch. new ChartboostAdapter._cls3._cls1._cls2(), ChartboostAdapter.access$2100(this$0));
        }

            
            {
                this$1 = ChartboostAdapter._cls3.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1

/* anonymous class */
        class ChartboostAdapter._cls3._cls1._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
        {

            final ChartboostAdapter._cls3._cls1 this$2;
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
                        this$2 = ChartboostAdapter._cls3._cls1.this;
                        localFetch = fetchholder;
                        super();
                    }
        }

    }

}
