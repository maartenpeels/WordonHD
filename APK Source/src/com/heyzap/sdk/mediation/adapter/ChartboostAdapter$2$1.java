// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.chartboost.sdk.Chartboost;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ChartboostAdapter

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        Chartboost.onCreate(ChartboostAdapter.access$1100(_fld0).getActivity());
        Chartboost.onStart(ChartboostAdapter.access$1200(_fld0).getActivity());
        Chartboost.onResume(ChartboostAdapter.access$1300(_fld0).getActivity());
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$2

/* anonymous class */
    class ChartboostAdapter._cls2
        implements Runnable
    {

        final ChartboostAdapter this$0;

        public void run()
        {
            Chartboost.startWithAppId(ChartboostAdapter.access$300(ChartboostAdapter.this).getActivity(), ChartboostAdapter.access$400(ChartboostAdapter.this), ChartboostAdapter.access$500(ChartboostAdapter.this));
            com.chartboost.sdk.Libraries.CBLogging.Level level;
            if (Utils.isDebug(ChartboostAdapter.access$600(ChartboostAdapter.this).getActivity()).booleanValue())
            {
                level = com.chartboost.sdk.Libraries.CBLogging.Level.ALL;
            } else
            {
                level = com.chartboost.sdk.Libraries.CBLogging.Level.NONE;
            }
            Chartboost.setLoggingLevel(level);
            Chartboost.setImpressionsUseActivities(false);
            Chartboost.onCreate(ChartboostAdapter.access$700(ChartboostAdapter.this).getActivity());
            Chartboost.onStart(ChartboostAdapter.access$800(ChartboostAdapter.this).getActivity());
            Chartboost.onResume(ChartboostAdapter.access$900(ChartboostAdapter.this).getActivity());
            Chartboost.setDelegate(ChartboostAdapter.access$1000(ChartboostAdapter.this));
            ChartboostAdapter.access$1500(ChartboostAdapter.this).addActivityUpdateListener(new ChartboostAdapter._cls2._cls1(), ChartboostAdapter.access$1400(ChartboostAdapter.this));
            ((SettableFuture)ChartboostAdapter.access$1600(ChartboostAdapter.this).get()).set(Boolean.valueOf(true));
        }

            
            {
                this$0 = ChartboostAdapter.this;
                super();
            }
    }

}
