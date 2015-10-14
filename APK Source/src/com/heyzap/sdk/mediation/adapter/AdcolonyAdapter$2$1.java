// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.ContextReference;
import com.heyzap.internal.SettableFuture;
import com.jirbo.adcolony.AdColony;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdcolonyAdapter

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        AdColony.resume(AdcolonyAdapter.access$1400(_fld0).getActivity());
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2

/* anonymous class */
    class AdcolonyAdapter._cls2
        implements Runnable
    {

        final AdcolonyAdapter this$0;

        public void run()
        {
            if (AdcolonyAdapter.access$300(AdcolonyAdapter.this) == null || AdcolonyAdapter.access$400(AdcolonyAdapter.this) == null) goto _L2; else goto _L1
_L1:
            AdColony.configure(AdcolonyAdapter.access$500(AdcolonyAdapter.this).getActivity(), AdcolonyAdapter.access$600(AdcolonyAdapter.this), AdcolonyAdapter.access$700(AdcolonyAdapter.this), new String[] {
                AdcolonyAdapter.access$300(AdcolonyAdapter.this), AdcolonyAdapter.access$400(AdcolonyAdapter.this)
            });
_L5:
            AdColony.addV4VCListener(new AdcolonyAdapter.IncentiveListener(AdcolonyAdapter.this, null));
            AdColony.addAdAvailabilityListener(new AdcolonyAdapter.AvailabilityListener(AdcolonyAdapter.access$1100(AdcolonyAdapter.this), AdcolonyAdapter.access$1200(AdcolonyAdapter.this), null));
            AdcolonyAdapter.access$1600(AdcolonyAdapter.this).addActivityUpdateListener(new AdcolonyAdapter._cls2._cls1(), AdcolonyAdapter.access$1500(AdcolonyAdapter.this));
            ((SettableFuture)initializationFutureRef.get()).set(Boolean.valueOf(true));
            return;
_L2:
            if (AdcolonyAdapter.access$300(AdcolonyAdapter.this) == null) goto _L4; else goto _L3
_L3:
            AdColony.configure(AdcolonyAdapter.access$800(AdcolonyAdapter.this).getActivity(), AdcolonyAdapter.access$600(AdcolonyAdapter.this), AdcolonyAdapter.access$700(AdcolonyAdapter.this), new String[] {
                AdcolonyAdapter.access$300(AdcolonyAdapter.this)
            });
              goto _L5
            Object obj;
            obj;
            ((SettableFuture)initializationFutureRef.get()).setException(((Throwable) (obj)));
            ((SettableFuture)initializationFutureRef.get()).set(Boolean.valueOf(true));
            return;
_L4:
            if (AdcolonyAdapter.access$400(AdcolonyAdapter.this) == null) goto _L5; else goto _L6
_L6:
            AdColony.configure(AdcolonyAdapter.access$900(AdcolonyAdapter.this).getActivity(), AdcolonyAdapter.access$600(AdcolonyAdapter.this), AdcolonyAdapter.access$700(AdcolonyAdapter.this), new String[] {
                AdcolonyAdapter.access$400(AdcolonyAdapter.this)
            });
              goto _L5
            obj;
            ((SettableFuture)initializationFutureRef.get()).set(Boolean.valueOf(true));
            throw obj;
        }

            
            {
                this$0 = AdcolonyAdapter.this;
                super();
            }
    }

}
