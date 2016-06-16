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

class  extends com.heyzap.internal.leTask
{

    final is._cls0 this$1;

    public void run()
    {
        UnityadsAdapter.access$100(_fld0).start(UnityadsAdapter.access$000());
        final hHolder fetchHolder = (hHolder)UnityadsAdapter.access$100(_fld0).get(UnityadsAdapter.access$000());
        fetchHolder.fetchListener.addListener(new Runnable() {

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
        }, UnityadsAdapter.access$200(_fld0));
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final UnityadsAdapter._cls1._cls1 this$2;
            final UnityadsAdapter.FetchHolder val$fetchHolder;

            public void run()
            {
                if (UnityadsAdapter.access$300(this$0))
                {
                    fetchHolder.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
                }
                if (!fetchHolder.fetchListener.isDone())
                {
                    retry();
                }
            }

            
            {
                this$2 = UnityadsAdapter._cls1._cls1.this;
                fetchHolder = fetchholder;
                super();
            }
        }, new com.heyzap.internal.tialSchedule(1.5D, 4L, TimeUnit.SECONDS), UnityadsAdapter.access$400(_fld0))).start();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
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

}
