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
//            FacebookAdapter

class this._cls0
    implements Runnable
{

    final FacebookAdapter this$0;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final FacebookAdapter._cls3 this$1;

            public void run()
            {
                FacebookAdapter.access$300(this$0).start(FacebookAdapter.access$200());
                FacebookAdapter.FacebookAdWrapper facebookadwrapper = fetch();
                facebookadwrapper.fetchListener.addListener(facebookadwrapper. new Runnable() {

                    final _cls1 this$2;
                    final FacebookAdapter.FacebookAdWrapper val$wrapper;

                    public void run()
                    {
                        if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(wrapper.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                        {
                            FacebookAdapter.access$300(this$0).set(FacebookAdapter.access$200(), new FacebookAdapter.FacebookAdWrapper());
                            retry();
                        }
                    }

            
            {
                this$2 = final__pcls1;
                wrapper = FacebookAdapter.FacebookAdWrapper.this;
                super();
            }
                }, FacebookAdapter.access$400(this$0));
            }

            
            {
                this$1 = FacebookAdapter._cls3.this;
                super();
            }
        }, new com.heyzap.internal.entialSchedule(2D, 10L, TimeUnit.SECONDS), FacebookAdapter.access$500(FacebookAdapter.this))).start();
    }

    t>()
    {
        this$0 = FacebookAdapter.this;
        super();
    }
}
