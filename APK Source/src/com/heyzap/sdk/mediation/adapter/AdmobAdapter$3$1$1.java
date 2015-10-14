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
//            AdmobAdapter

class per
    implements Runnable
{

    final try this$2;
    final per val$wrapper;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.hResult)FutureUtils.getImmediatelyOrDefault(val$wrapper.fetchListener, com.heyzap.mediation.abstr.hResult.NOT_READY)).success)
        {
            AdmobAdapter.access$300(_fld0).set(AdmobAdapter.access$200(), new per());
            _mthtry();
        }
    }

    per()
    {
        this$2 = final_per;
        val$wrapper = per.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdmobAdapter$3

/* anonymous class */
    class AdmobAdapter._cls3
        implements Runnable
    {

        final AdmobAdapter this$0;

        public void run()
        {
            (new RetryManager(new AdmobAdapter._cls3._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 10L, TimeUnit.SECONDS), AdmobAdapter.access$500(AdmobAdapter.this))).start();
        }

            
            {
                this$0 = AdmobAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1

/* anonymous class */
    class AdmobAdapter._cls3._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final AdmobAdapter._cls3 this$1;

        public void run()
        {
            AdmobAdapter.access$300(this$0).start(AdmobAdapter.access$200());
            AdmobAdapter.AdWrapper adwrapper = fetch();
            adwrapper.fetchListener.addListener(adwrapper. new AdmobAdapter._cls3._cls1._cls1(), AdmobAdapter.access$400(this$0));
        }

            
            {
                this$1 = AdmobAdapter._cls3.this;
                super();
            }
    }

}
