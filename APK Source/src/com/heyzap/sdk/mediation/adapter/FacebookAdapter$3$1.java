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

class  extends com.heyzap.internal.leTask
{

    final is._cls0 this$1;

    public void run()
    {
        FacebookAdapter.access$300(_fld0).start(FacebookAdapter.access$200());
        final bookAdWrapper wrapper = fetch();
        wrapper.fetchListener.addListener(new Runnable() {

            final FacebookAdapter._cls3._cls1 this$2;
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
                this$2 = FacebookAdapter._cls3._cls1.this;
                wrapper = facebookadwrapper;
                super();
            }
        }, FacebookAdapter.access$400(_fld0));
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
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

}
