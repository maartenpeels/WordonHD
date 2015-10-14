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

class okAdWrapper
    implements Runnable
{

    final try this$2;
    final okAdWrapper val$wrapper;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.sult)FutureUtils.getImmediatelyOrDefault(val$wrapper.fetchListener, com.heyzap.mediation.abstr.sult.NOT_READY)).success)
        {
            FacebookAdapter.access$300(_fld0).set(FacebookAdapter.access$200(), new okAdWrapper());
            _mthtry();
        }
    }

    okAdWrapper()
    {
        this$2 = final_okadwrapper;
        val$wrapper = okAdWrapper.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/FacebookAdapter$3

/* anonymous class */
    class FacebookAdapter._cls3
        implements Runnable
    {

        final FacebookAdapter this$0;

        public void run()
        {
            (new RetryManager(new FacebookAdapter._cls3._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 10L, TimeUnit.SECONDS), FacebookAdapter.access$500(FacebookAdapter.this))).start();
        }

            
            {
                this$0 = FacebookAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/FacebookAdapter$3$1

/* anonymous class */
    class FacebookAdapter._cls3._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final FacebookAdapter._cls3 this$1;

        public void run()
        {
            FacebookAdapter.access$300(this$0).start(FacebookAdapter.access$200());
            FacebookAdapter.FacebookAdWrapper facebookadwrapper = fetch();
            facebookadwrapper.fetchListener.addListener(facebookadwrapper. new FacebookAdapter._cls3._cls1._cls1(), FacebookAdapter.access$400(this$0));
        }

            
            {
                this$1 = FacebookAdapter._cls3.this;
                super();
            }
    }

}
