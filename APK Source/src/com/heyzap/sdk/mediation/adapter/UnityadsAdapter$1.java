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

class this._cls0
    implements Runnable
{

    final UnityadsAdapter this$0;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final UnityadsAdapter._cls1 this$1;

            public void run()
            {
                UnityadsAdapter.access$100(this$0).start(UnityadsAdapter.access$000());
                UnityadsAdapter.FetchHolder fetchholder = (UnityadsAdapter.FetchHolder)UnityadsAdapter.access$100(this$0).get(UnityadsAdapter.access$000());
                fetchholder.fetchListener.addListener(fetchholder. new Runnable() {

                    final _cls1 this$2;
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
                this$2 = final__pcls1;
                fetchHolder = UnityadsAdapter.FetchHolder.this;
                super();
            }
                }, UnityadsAdapter.access$200(this$0));
                (new RetryManager(fetchholder. new com.heyzap.internal.RetryManager.RetryableTask() {

                    final _cls1 this$2;
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
                this$2 = final__pcls1;
                fetchHolder = UnityadsAdapter.FetchHolder.this;
                super();
            }
                }, new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 4L, TimeUnit.SECONDS), UnityadsAdapter.access$400(this$0))).start();
            }

            
            {
                this$1 = UnityadsAdapter._cls1.this;
                super();
            }
        }, new com.heyzap.internal.entialSchedule(1.5D, 4L, TimeUnit.SECONDS), UnityadsAdapter.access$500(UnityadsAdapter.this))).start();
    }

    t>()
    {
        this$0 = UnityadsAdapter.this;
        super();
    }
}
