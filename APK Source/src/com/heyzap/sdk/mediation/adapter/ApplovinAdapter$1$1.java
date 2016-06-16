// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.SettableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ApplovinAdapter

class this._cls1
    implements Runnable
{

    final  this$1;

    public void run()
    {
        result.set(new com.heyzap.mediation.abstr.Result());
    }

    l.result()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ApplovinAdapter$1

/* anonymous class */
    class ApplovinAdapter._cls1
        implements Runnable
    {

        final ApplovinAdapter this$0;
        final SettableFuture val$result;
        final Set val$startedUnits;

        public void run()
        {
            ArrayList arraylist = new ArrayList();
            com.heyzap.internal.Constants.AdUnit adunit;
            for (Iterator iterator = startedUnits.iterator(); iterator.hasNext(); arraylist.add(awaitAvailability(adunit)))
            {
                adunit = (com.heyzap.internal.Constants.AdUnit)iterator.next();
                ApplovinAdapter.access$000(ApplovinAdapter.this, adunit);
            }

            FutureUtils.allOf(arraylist, ApplovinAdapter.access$200(ApplovinAdapter.this)).addListener(new ApplovinAdapter._cls1._cls1(), ApplovinAdapter.access$100(ApplovinAdapter.this));
        }

            
            {
                this$0 = final_applovinadapter;
                startedUnits = set;
                result = SettableFuture.this;
                super();
            }
    }

}
