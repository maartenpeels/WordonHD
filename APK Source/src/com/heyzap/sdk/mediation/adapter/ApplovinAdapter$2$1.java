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

class  extends com.heyzap.internal.leTask
{

    final is._cls0 this$1;

    public void run()
    {
        ApplovinAdapter.access$300(_fld0).start(adUnit);
        FutureUtils.bind(fetch(adUnit), fetchResultFuture, ApplovinAdapter.access$400(_fld0));
        fetchResultFuture.addListener(new Runnable() {

            final ApplovinAdapter._cls2._cls1 this$2;

            public void run()
            {
                if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(fetchResultFuture, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                {
                    ApplovinAdapter.access$300(this$0).set(adUnit, ApplovinAdapter.access$500(this$0));
                    retry();
                }
            }

            
            {
                this$2 = ApplovinAdapter._cls2._cls1.this;
                super();
            }
        }, ApplovinAdapter.access$600(_fld0));
    }

    l.fetchResultFuture()
    {
        this$1 = this._cls1.this;
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

}
