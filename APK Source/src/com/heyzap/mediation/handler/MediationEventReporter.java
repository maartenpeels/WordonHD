// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Constants;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.MediationResult;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.request.MediationRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class MediationEventReporter
{

    private final ContextReference contextRef;
    private final ExecutorService executorService;

    public MediationEventReporter(ContextReference contextreference, ExecutorService executorservice)
    {
        executorService = executorservice;
        contextRef = contextreference;
    }

    private Map createParams(MediationRequest mediationrequest, MediationResult mediationresult, com.heyzap.mediation.MediationResult.NetworkResult networkresult)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("tracking_id", networkresult.id);
        hashmap.put("mediation_id", mediationresult.id);
        hashmap.put("network", networkresult.network);
        hashmap.put("ad_unit", mediationrequest.getAdUnit().toString().toLowerCase(Locale.US));
        hashmap.put("tag", Constants.normalizeTag(mediationrequest.getTag()));
        if (networkresult.adapter == null)
        {
            mediationrequest = "unknown";
        } else
        {
            mediationrequest = networkresult.adapter.getMarketingVersion();
        }
        hashmap.put("network_version", mediationrequest);
        hashmap.put("ordinal", String.valueOf(networkresult.ordinal));
        hashmap.put("score", String.valueOf(networkresult.score));
        return hashmap;
    }

    private void onClick(RequestParams requestparams)
    {
        APIClient.post(contextRef.getApp(), "https://med.heyzap.com/click", requestparams, new JsonHttpResponseHandler() {

            final MediationEventReporter this$0;

            
            {
                this$0 = MediationEventReporter.this;
                super();
            }
        });
    }

    private void onFetch(RequestParams requestparams, com.heyzap.mediation.MediationResult.NetworkResult networkresult)
    {
        if (networkresult.fetchResult.errorCode != null)
        {
            requestparams.put("failure_reason", networkresult.fetchResult.errorCode.toString());
        }
        if (networkresult.fetchResult.success)
        {
            networkresult = "1";
        } else
        {
            networkresult = "0";
        }
        requestparams.put("success", networkresult);
        APIClient.post(contextRef.getApp(), "https://med.heyzap.com/fetch", requestparams, new JsonHttpResponseHandler() {

            final MediationEventReporter this$0;

            
            {
                this$0 = MediationEventReporter.this;
                super();
            }
        });
    }

    private void onImpression(RequestParams requestparams)
    {
        APIClient.post(contextRef.getApp(), "https://med.heyzap.com/impression", requestparams, new JsonHttpResponseHandler() {

            final MediationEventReporter this$0;

            
            {
                this$0 = MediationEventReporter.this;
                super();
            }
        });
    }

    private void onIncentiveComplete(RequestParams requestparams, Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            requestparams.put("complete", "1");
        } else
        {
            requestparams.put("complete", "0");
        }
        APIClient.post(contextRef.getApp(), "https://med.heyzap.com/complete", requestparams, new JsonHttpResponseHandler() {

            final MediationEventReporter this$0;

            
            {
                this$0 = MediationEventReporter.this;
                super();
            }
        });
    }

    public void bindDisplayCallbacks(MediationRequest mediationrequest, MediationResult mediationresult, com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay)
    {
        mediationrequest = createParams(mediationrequest, mediationresult, mediationresult.selectedNetwork);
        addisplay.displayListener.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(mediationrequest) {

            final MediationEventReporter this$0;
            final Map val$baseParams;

            public void run(com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult displayresult, Exception exception)
            {
                if (displayresult != null && displayresult.success)
                {
                    onImpression(new RequestParams(baseParams));
                }
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)obj, exception);
            }

            
            {
                this$0 = MediationEventReporter.this;
                baseParams = map;
                super(final_listenablefuture);
            }
        }, executorService);
        addisplay.clickListener.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(mediationrequest) {

            final MediationEventReporter this$0;
            final Map val$baseParams;

            public void run(Boolean boolean1, Exception exception)
            {
                if (exception == null)
                {
                    onClick(new RequestParams(baseParams));
                }
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((Boolean)obj, exception);
            }

            
            {
                this$0 = MediationEventReporter.this;
                baseParams = map;
                super(final_listenablefuture);
            }
        }, executorService);
        addisplay.incentiveListener.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(mediationrequest) {

            final MediationEventReporter this$0;
            final Map val$baseParams;

            public void run(Boolean boolean1, Exception exception)
            {
                if (exception == null)
                {
                    onIncentiveComplete(new RequestParams(baseParams), boolean1);
                }
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((Boolean)obj, exception);
            }

            
            {
                this$0 = MediationEventReporter.this;
                baseParams = map;
                super(final_listenablefuture);
            }
        }, executorService);
    }

    public void sendFetchResults(MediationRequest mediationrequest, MediationResult mediationresult)
    {
        com.heyzap.mediation.MediationResult.NetworkResult networkresult;
        for (Iterator iterator = mediationresult.networkResults.iterator(); iterator.hasNext(); onFetch(new RequestParams(createParams(mediationrequest, mediationresult, networkresult)), networkresult))
        {
            networkresult = (com.heyzap.mediation.MediationResult.NetworkResult)iterator.next();
        }

    }



}
