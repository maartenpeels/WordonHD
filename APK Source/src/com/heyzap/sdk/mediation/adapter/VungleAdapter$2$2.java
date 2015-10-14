// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.vungle.publisher.VunglePub;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            VungleAdapter

class hHolder
    implements Runnable
{

    final try this$1;
    final hHolder val$holder;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.chResult)FutureUtils.getImmediatelyOrDefault(val$holder.fetchListener, com.heyzap.mediation.abstr.chResult.NOT_READY)).success)
        {
            VungleAdapter.access$400(_fld0).set(VungleAdapter.access$300(), new hHolder(null));
            _mthtry();
        }
    }

    hHolder()
    {
        this$1 = final_hholder;
        val$holder = hHolder.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/VungleAdapter$2

/* anonymous class */
    class VungleAdapter._cls2 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final VungleAdapter this$0;

        public void run()
        {
            VungleAdapter.access$400(VungleAdapter.this).start(VungleAdapter.access$300());
            final VungleAdapter.FetchHolder holder = (VungleAdapter.FetchHolder)VungleAdapter.access$400(VungleAdapter.this).get(VungleAdapter.access$300());
            (new RetryManager(new VungleAdapter._cls2._cls1(), new com.heyzap.internal.RetryManager.DelayedSchedule(1, TimeUnit.SECONDS, new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS)), VungleAdapter.access$500(VungleAdapter.this))).start();
            holder.fetchListener.addListener(holder. new VungleAdapter._cls2._cls2(), VungleAdapter.access$600(VungleAdapter.this));
        }

            
            {
                this$0 = VungleAdapter.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/mediation/adapter/VungleAdapter$2$1

/* anonymous class */
        class VungleAdapter._cls2._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
        {

            final VungleAdapter._cls2 this$1;
            final VungleAdapter.FetchHolder val$holder;

            public void run()
            {
                if (VunglePub.getInstance().isCachedAdAvailable())
                {
                    holder.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
                }
                if (!holder.fetchListener.isDone())
                {
                    retry();
                }
            }

                    
                    {
                        this$1 = VungleAdapter._cls2.this;
                        holder = fetchholder;
                        super();
                    }
        }

    }

}
