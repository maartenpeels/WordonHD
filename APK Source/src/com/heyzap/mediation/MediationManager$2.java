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

class val.adUnit
    implements com.heyzap.mediation.config.ionConfigListener
{

    final MediationManager this$0;
    final Activity val$activity;
    final com.heyzap.internal..this._cls0 val$adUnit;
    final MediationRequest val$request;
    final String val$tag;

    public void onConfigLoaded(final MediationConfig config)
    {
        FilterContext filtercontext = new FilterContext(val$request.getAdUnit(), val$request.getTag());
        if (!config.getFilterManager().accept(filtercontext))
        {
            ((StatusListenerMultiplexer)MediationManager.access$200(MediationManager.this).get(val$request.getAdUnit())).sendDisplayFailed(val$request.getTag());
            return;
        } else
        {
            final ListenableFuture final_listenablefuture = config.getDisplayStrategy().getDisplayAdapter(val$request);
            final_listenablefuture.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(filtercontext) {

                final MediationManager._cls2 this$1;
                final MediationConfig val$config;
                final FilterContext val$filterContext;

                public void run(MediationResult mediationresult, Exception exception)
                {
                    if (exception != null)
                    {
                        Logger.log(new Object[] {
                            "Mediation failed", exception
                        });
                        ((StatusListenerMultiplexer)MediationManager.access$200(this$0).get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                    } else
                    {
                        MediationManager.access$300(this$0).sendFetchResults(request, mediationresult);
                        if (mediationresult.selectedNetwork != null)
                        {
                            MetricsTracker.getEvent(mediationresult.selectedNetwork.network).showAd(true).ordinal(Integer.valueOf(mediationresult.selectedNetwork.ordinal)).tag(tag).networkVersion(mediationresult.selectedNetwork.adapter.getMarketingVersion()).showAdTime(System.currentTimeMillis()).commit(true);
                            exception = mediationresult.selectedNetwork.adapter.show(request.getAdUnit(), request.getTag(), activity);
                            MediationManager.access$300(this$0).bindDisplayCallbacks(request, mediationresult, exception);
                            ((StatusListenerMultiplexer)MediationManager.access$200(this$0).get(request.getAdUnit())).addDisplay(exception, request.getTag());
                            config.getDisplayStrategy().addDisplay(request, mediationresult.selectedNetwork, exception);
                            config.getFilterManager().addDisplay(filterContext, exception);
                            if ((MediationManager.access$100(this$0).flags & 1) == 0)
                            {
                                fetch(adUnit, tag);
                                return;
                            }
                        } else
                        {
                            ((StatusListenerMultiplexer)MediationManager.access$200(this$0).get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                            return;
                        }
                    }
                }

                public volatile void run(Object obj, Exception exception)
                {
                    run((MediationResult)obj, exception);
                }

            
            {
                this$1 = MediationManager._cls2.this;
                config = mediationconfig;
                filterContext = filtercontext;
                super(final_listenablefuture);
            }
            }, MediationManager.access$400(MediationManager.this));
            return;
        }
    }

    quest()
    {
        this$0 = final_mediationmanager;
        val$request = mediationrequest;
        val$tag = s;
        val$activity = activity1;
        val$adUnit = com.heyzap.internal..val.adUnit.this;
        super();
    }
}
