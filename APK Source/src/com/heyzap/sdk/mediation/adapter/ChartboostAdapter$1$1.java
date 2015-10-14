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
//            ChartboostAdapter

class this._cls1
    implements Runnable
{

    final l.result this$1;

    public void run()
    {
        result.set(Boolean.valueOf(true));
    }

    l.result()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$1

/* anonymous class */
    class ChartboostAdapter._cls1
        implements Runnable
    {

        final ChartboostAdapter this$0;
        final SettableFuture val$result;
        final Set val$startedUnits;

        public void run()
        {
            ArrayList arraylist = new ArrayList();
            com.heyzap.internal.Constants.AdUnit adunit;
            for (Iterator iterator = startedUnits.iterator(); iterator.hasNext(); arraylist.add(awaitAvailability(adunit)))
            {
                adunit = (com.heyzap.internal.Constants.AdUnit)iterator.next();
                ChartboostAdapter.access$000(ChartboostAdapter.this, adunit);
            }

            FutureUtils.allOf(arraylist, ChartboostAdapter.access$200(ChartboostAdapter.this)).addListener(new ChartboostAdapter._cls1._cls1(), ChartboostAdapter.access$100(ChartboostAdapter.this));
        }

            
            {
                this$0 = final_chartboostadapter;
                startedUnits = set;
                result = SettableFuture.this;
                super();
            }
    }

}
