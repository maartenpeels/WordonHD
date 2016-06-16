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

class this._cls0
    implements Runnable
{

    final AdmobAdapter this$0;

    public void run()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final AdmobAdapter._cls3 this$1;

            public void run()
            {
                AdmobAdapter.access$300(this$0).start(AdmobAdapter.access$200());
                AdmobAdapter.AdWrapper adwrapper = fetch();
                adwrapper.fetchListener.addListener(adwrapper. new Runnable() {

                    final _cls1 this$2;
                    final AdmobAdapter.AdWrapper val$wrapper;

                    public void run()
                    {
                        if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(wrapper.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
                        {
                            AdmobAdapter.access$300(this$0).set(AdmobAdapter.access$200(), new AdmobAdapter.AdWrapper());
                            retry();
                        }
                    }

            
            {
                this$2 = final__pcls1;
                wrapper = AdmobAdapter.AdWrapper.this;
                super();
            }
                }, AdmobAdapter.access$400(this$0));
            }

            
            {
                this$1 = AdmobAdapter._cls3.this;
                super();
            }
        }, new com.heyzap.internal.ponentialSchedule(2D, 10L, TimeUnit.SECONDS), AdmobAdapter.access$500(AdmobAdapter.this))).start();
    }

    init>()
    {
        this$0 = AdmobAdapter.this;
        super();
    }
}
