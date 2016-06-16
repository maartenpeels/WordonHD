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
//            UnityadsAdapter

class older extends com.heyzap.internal.Task
{

    final retry this$2;
    final older val$fetchHolder;

    public void run()
    {
        if (UnityadsAdapter.access$300(_fld0))
        {
            val$fetchHolder.fetchListener.set(new com.heyzap.mediation.abstr.sult());
        }
        if (!val$fetchHolder.fetchListener.isDone())
        {
            retry();
        }
    }

    older()
    {
        this$2 = final_older;
        val$fetchHolder = older.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/UnityadsAdapter$1

/* anonymous class */
    class UnityadsAdapter._cls1
        implements Runnable
    {

        final UnityadsAdapter this$0;

        public void run()
        {
            (new RetryManager(new UnityadsAdapter._cls1._cls1(), new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), UnityadsAdapter.access$500(UnityadsAdapter.this))).start();
        }

            
            {
                this$0 = UnityadsAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1

/* anonymous class */
    class UnityadsAdapter._cls1._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final UnityadsAdapter._cls1 this$1;

        public void run()
        {
            UnityadsAdapter.access$100(this$0).start(UnityadsAdapter.access$000());
            final UnityadsAdapter.FetchHolder fetchHolder = (UnityadsAdapter.FetchHolder)UnityadsAdapter.access$100(this$0).get(UnityadsAdapter.access$000());
            fetchHolder.fetchListener.addListener(new UnityadsAdapter._cls1._cls1._cls1(), UnityadsAdapter.access$200(this$0));
            (new RetryManager(fetchHolder. new UnityadsAdapter._cls1._cls1._cls2(), new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), UnityadsAdapter.access$400(this$0))).start();
        }

            
            {
                this$1 = UnityadsAdapter._cls1.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1

/* anonymous class */
        class UnityadsAdapter._cls1._cls1._cls1
            implements Runnable
        {

            final UnityadsAdapter._cls1._cls1 this$2;
            final UnityadsAdapter.FetchHolder val$fetchHolder;

            public void run()
            {
                if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(fetchHolder.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                {
                    UnityadsAdapter.access$100(this$0).set(UnityadsAdapter.access$000(), new UnityadsAdapter.FetchHolder());
                    retry();
                }
            }

                    
                    {
                        this$2 = UnityadsAdapter._cls1._cls1.this;
                        fetchHolder = fetchholder;
                        super();
                    }
        }

    }

}
