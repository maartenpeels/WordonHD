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
//            ApplovinAdapter

class this._cls2
    implements Runnable
{

    final try this$2;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.sult)FutureUtils.getImmediatelyOrDefault(fetchResultFuture, com.heyzap.mediation.abstr.sult.NOT_READY)).success)
        {
            ApplovinAdapter.access$300(_fld0).set(adUnit, ApplovinAdapter.access$500(_fld0));
            _mthtry();
        }
    }

    fetchResultFuture()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ApplovinAdapter$2

/* anonymous class */
    class ApplovinAdapter._cls2
        implements Runnable
    {

        final ApplovinAdapter this$0;
        final com.heyzap.internal.Constants.AdUnit val$adUnit;
        final SettableFuture val$fetchResultFuture;

        public void run()
        {
            (new RetryManager(new ApplovinAdapter._cls2._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 4L, TimeUnit.SECONDS), ApplovinAdapter.access$700(ApplovinAdapter.this))).start();
        }

            
            {
                this$0 = final_applovinadapter;
                adUnit = adunit;
                fetchResultFuture = SettableFuture.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1

/* anonymous class */
    class ApplovinAdapter._cls2._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final ApplovinAdapter._cls2 this$1;

        public void run()
        {
            ApplovinAdapter.access$300(this$0).start(adUnit);
            FutureUtils.bind(fetch(adUnit), fetchResultFuture, ApplovinAdapter.access$400(this$0));
            fetchResultFuture.addListener(new ApplovinAdapter._cls2._cls1._cls1(), ApplovinAdapter.access$600(this$0));
        }

            
            {
                this$1 = ApplovinAdapter._cls2.this;
                super();
            }
    }

}
