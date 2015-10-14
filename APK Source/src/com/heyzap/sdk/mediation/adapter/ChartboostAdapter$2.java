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

class this._cls0
    implements Runnable
{

    final ChartboostAdapter this$0;

    public void run()
    {
        Chartboost.startWithAppId(ChartboostAdapter.access$300(ChartboostAdapter.this).getActivity(), ChartboostAdapter.access$400(ChartboostAdapter.this), ChartboostAdapter.access$500(ChartboostAdapter.this));
        com.chartboost.sdk.Libraries.r r;
        if (Utils.isDebug(ChartboostAdapter.access$600(ChartboostAdapter.this).getActivity()).booleanValue())
        {
            r = com.chartboost.sdk.Libraries.r;
        } else
        {
            r = com.chartboost.sdk.Libraries.;
        }
        Chartboost.setLoggingLevel(r);
        Chartboost.setImpressionsUseActivities(false);
        Chartboost.onCreate(ChartboostAdapter.access$700(ChartboostAdapter.this).getActivity());
        Chartboost.onStart(ChartboostAdapter.access$800(ChartboostAdapter.this).getActivity());
        Chartboost.onResume(ChartboostAdapter.access$900(ChartboostAdapter.this).getActivity());
        Chartboost.setDelegate(ChartboostAdapter.access$1000(ChartboostAdapter.this));
        ChartboostAdapter.access$1500(ChartboostAdapter.this).addActivityUpdateListener(new Runnable() {

            final ChartboostAdapter._cls2 this$1;

            public void run()
            {
                Chartboost.onCreate(ChartboostAdapter.access$1100(this$0).getActivity());
                Chartboost.onStart(ChartboostAdapter.access$1200(this$0).getActivity());
                Chartboost.onResume(ChartboostAdapter.access$1300(this$0).getActivity());
            }

            
            {
                this$1 = ChartboostAdapter._cls2.this;
                super();
            }
        }, ChartboostAdapter.access$1400(ChartboostAdapter.this));
        ((SettableFuture)ChartboostAdapter.access$1600(ChartboostAdapter.this).get()).set(Boolean.valueOf(true));
    }

    _cls1.this._cls1()
    {
        this$0 = ChartboostAdapter.this;
        super();
    }
}
