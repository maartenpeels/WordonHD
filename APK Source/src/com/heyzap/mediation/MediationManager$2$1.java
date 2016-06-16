// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import android.app.Activity;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.mediation.display.WaterfallMediator;
import com.heyzap.mediation.filters.FilterContext;
import com.heyzap.mediation.filters.FilterManager;
import com.heyzap.mediation.handler.MediationEventReporter;
import com.heyzap.mediation.handler.StatusListenerMultiplexer;
import com.heyzap.mediation.request.MediationRequest;
import java.util.HashMap;

// Referenced classes of package com.heyzap.mediation:
//            MediationManager, MediationResult

class able extends com.heyzap.internal.nable
{

    final run this$1;
    final MediationConfig val$config;
    final FilterContext val$filterContext;

    public void run(MediationResult mediationresult, Exception exception)
    {
        if (exception != null)
        {
            Logger.log(new Object[] {
                "Mediation failed", exception
            });
            ((StatusListenerMultiplexer)MediationManager.access$200(_fld0).get(request.getAdUnit())).sendDisplayFailed(request.getTag());
        } else
        {
            MediationManager.access$300(_fld0).sendFetchResults(request, mediationresult);
            if (mediationresult.selectedNetwork != null)
            {
                MetricsTracker.getEvent(mediationresult.selectedNetwork.network).showAd(true).ordinal(Integer.valueOf(mediationresult.selectedNetwork.ordinal)).tag(tag).networkVersion(mediationresult.selectedNetwork.adapter.getMarketingVersion()).showAdTime(System.currentTimeMillis()).commit(true);
                exception = mediationresult.selectedNetwork.adapter.show(request.getAdUnit(), request.getTag(), activity);
                MediationManager.access$300(_fld0).bindDisplayCallbacks(request, mediationresult, exception);
                ((StatusListenerMultiplexer)MediationManager.access$200(_fld0).get(request.getAdUnit())).addDisplay(exception, request.getTag());
                val$config.getDisplayStrategy().addDisplay(request, mediationresult.selectedNetwork, exception);
                val$config.getFilterManager().addDisplay(val$filterContext, exception);
                if ((MediationManager.access$100(_fld0).lags & 1) == 0)
                {
                    fetch(adUnit, tag);
                    return;
                }
            } else
            {
                ((StatusListenerMultiplexer)MediationManager.access$200(_fld0).get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                return;
            }
        }
    }

    public volatile void run(Object obj, Exception exception)
    {
        run((MediationResult)obj, exception);
    }

    (FilterContext filtercontext)
    {
        this$1 = final_;
        val$config = MediationConfig.this;
        val$filterContext = filtercontext;
        super(final_listenablefuture);
    }

    // Unreferenced inner class com/heyzap/mediation/MediationManager$2

/* anonymous class */
    class MediationManager._cls2
        implements com.heyzap.mediation.config.ConfigLoader.MediationConfigListener
    {

        final MediationManager this$0;
        final Activity val$activity;
        final com.heyzap.internal.Constants.AdUnit val$adUnit;
        final MediationRequest val$request;
        final String val$tag;

        public void onConfigLoaded(MediationConfig mediationconfig)
        {
            FilterContext filtercontext = new FilterContext(request.getAdUnit(), request.getTag());
            if (!mediationconfig.getFilterManager().accept(filtercontext))
            {
                ((StatusListenerMultiplexer)MediationManager.access$200(MediationManager.this).get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                return;
            } else
            {
                final ListenableFuture final_listenablefuture = mediationconfig.getDisplayStrategy().getDisplayAdapter(request);
                final_listenablefuture.addListener(mediationconfig. new MediationManager._cls2._cls1(filtercontext), MediationManager.access$400(MediationManager.this));
                return;
            }
        }

            
            {
                this$0 = final_mediationmanager;
                request = mediationrequest;
                tag = s;
                activity = activity1;
                adUnit = com.heyzap.internal.Constants.AdUnit.this;
                super();
            }
    }

}
