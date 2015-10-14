// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Environment;
import android.os.StatFs;
import android.util.DisplayMetrics;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.abstr.AbstractFetchHandler;
import com.heyzap.house.handler.InterstitialFetchHandler;
import com.heyzap.house.handler.NativeFetchHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Connectivity;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.sdk.ads.HeyzapAds;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.request:
//            AdRequest

public class FetchRequest
{
    public static class Factory
    {

        public static FetchRequest build(AdRequest adrequest)
        {
            FetchRequest fetchrequest = new FetchRequest(adrequest.getCreativeTypes(), adrequest.getTag(), Boolean.valueOf(adrequest.isImmediate()), adrequest);
            if (adrequest.getDebuggable().booleanValue())
            {
                fetchrequest.setDebugEnabled(Boolean.valueOf(true));
                fetchrequest.setRandomStrategyEnabled(Boolean.valueOf(true));
            }
            HashMap hashmap = new HashMap();
            if (adrequest.getAuctionType() != null)
            {
                hashmap.put("auction_type", adrequest.getAuctionType().toString().toLowerCase(Locale.US));
            }
            if (adrequest.getCreativeId() != null)
            {
                hashmap.put("creative_id", String.valueOf(adrequest.getCreativeId()));
            }
            fetchrequest.setAdditionalParams(hashmap);
            return fetchrequest;
        }

        public Factory()
        {
        }
    }

    public static interface OnFetchResponse
    {

        public abstract void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable);

        public abstract void onModelsReceived(List list);
    }


    private static String gameOrientation;
    private static String host = "ads.heyzap.com";
    private Map additionalParams;
    private Integer campaignId;
    private Integer creativeId;
    private Integer creativeTypes;
    private Boolean debugEnabled;
    private String endpoint;
    private Boolean isImmediate;
    private int maxCount;
    private Boolean randomStrategyEnabled;
    private String rejectedImpressionId;
    private int remainingTries;
    private AdRequest request;
    private JSONObject response;
    private OnFetchResponse responseHandler;
    private Boolean secure;
    private String tag;

    public FetchRequest(int i, String s, Boolean boolean1, AdRequest adrequest)
    {
        response = null;
        remainingTries = 3;
        endpoint = "/in_game_api/ads/fetch_ad";
        secure = Boolean.valueOf(false);
        rejectedImpressionId = null;
        additionalParams = new HashMap();
        creativeId = Integer.valueOf(0);
        campaignId = Integer.valueOf(0);
        creativeTypes = Integer.valueOf(1);
        isImmediate = Boolean.valueOf(false);
        maxCount = 1;
        debugEnabled = Boolean.valueOf(false);
        randomStrategyEnabled = Boolean.valueOf(false);
        tag = s;
        creativeTypes = Integer.valueOf(i);
        isImmediate = boolean1;
        request = adrequest;
    }

    public static void setDefaultHost(String s)
    {
        if (s == null)
        {
            s = "ads.heyzap.com";
        }
        host = s;
    }

    public static void updateOrientation(Context context)
    {
        context = context.getResources().getDisplayMetrics();
        if (((DisplayMetrics) (context)).widthPixels > ((DisplayMetrics) (context)).heightPixels)
        {
            context = "landscape";
        } else
        {
            context = "portrait";
        }
        gameOrientation = context;
    }

    public void execute(final Context context)
    {
        MetricsTracker.getEvent(getAdRequest()).fetch(true).fetchTime(System.currentTimeMillis()).commit();
        if (!isValid().booleanValue())
        {
            if (responseHandler != null)
            {
                responseHandler.onFetchResponse(null, this, new Throwable("bad_request"));
            }
            return;
        }
        incrementTries();
        final Object fetchHandler;
        if ((creativeTypes.intValue() & com.heyzap.internal.Constants.CreativeType.NATIVE) == com.heyzap.internal.Constants.CreativeType.NATIVE)
        {
            fetchHandler = new NativeFetchHandler(context, this);
        } else
        {
            fetchHandler = new InterstitialFetchHandler(context, this);
        }
        ((AbstractFetchHandler) (fetchHandler)).setCallback(responseHandler);
        ExecutorPool.getInstance().execute(new Runnable() {

            final FetchRequest this$0;
            final Context val$context;
            final AbstractFetchHandler val$fetchHandler;

            public void run()
            {
                APIClient.post(context, getUrl(), getParams(context), fetchHandler);
            }

            
            {
                this$0 = FetchRequest.this;
                context = context1;
                fetchHandler = abstractfetchhandler;
                super();
            }
        });
    }

    public AdRequest getAdRequest()
    {
        return request;
    }

    public Integer getCampaignId()
    {
        return campaignId;
    }

    public Integer getCreativeId()
    {
        return creativeId;
    }

    public Boolean getDebugEnabled()
    {
        return debugEnabled;
    }

    public Integer getMaxCount()
    {
        return Integer.valueOf(maxCount);
    }

    public RequestParams getParams(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Context is NULL.");
        }
        RequestParams requestparams = new RequestParams(additionalParams);
        if (HeyzapAds.mediator != null)
        {
            requestparams.put("sdk_mediator", HeyzapAds.mediator);
        }
        if (HeyzapAds.framework != null)
        {
            requestparams.put("sdk_framework", HeyzapAds.framework);
        }
        Object obj;
        String s;
        int i;
        int j;
        boolean flag;
        if ((creativeTypes.intValue() & com.heyzap.internal.Constants.CreativeType.NATIVE) == com.heyzap.internal.Constants.CreativeType.NATIVE)
        {
            obj = com.heyzap.internal.Constants.CreativeType.requestString(com.heyzap.internal.Constants.CreativeType.NATIVE);
        } else
        if (isImmediate.booleanValue())
        {
            obj = com.heyzap.internal.Constants.CreativeType.requestString(com.heyzap.internal.Constants.CreativeType.INTERSTITIAL);
        } else
        {
            obj = com.heyzap.internal.Constants.CreativeType.requestString(creativeTypes.intValue());
        }
        requestparams.put("creative_type", ((String) (obj)));
        obj = context.getResources().getDisplayMetrics();
        requestparams.put("connection_type", Connectivity.connectionType(context));
        requestparams.put("device_dpi", Float.toString(((DisplayMetrics) (obj)).density));
        try
        {
            StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            requestparams.put("device_free_bytes", Long.toString((long)statfs.getBlockSize() * (long)statfs.getAvailableBlocks()));
        }
        catch (Exception exception)
        {
            requestparams.put("device_free_bytes", "0");
        }
        if (!requestparams.containsKey("orientation").booleanValue())
        {
            if (gameOrientation == null)
            {
                updateOrientation(context);
            }
            requestparams.put("orientation", gameOrientation);
        }
        j = ((DisplayMetrics) (obj)).heightPixels;
        i = ((DisplayMetrics) (obj)).widthPixels;
        s = requestparams.get("orientation");
        if (s.equals("landscape") && j > i || s.equals("portrait") && i > j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (Boolean.valueOf(flag).booleanValue())
        {
            i = ((DisplayMetrics) (obj)).heightPixels;
            j = ((DisplayMetrics) (obj)).widthPixels;
        }
        requestparams.put("device_width", String.valueOf(i));
        requestparams.put("device_height", String.valueOf(j));
        requestparams.put("supported_features", "chromeless,js_visibility_callback");
        if (tag != null)
        {
            requestparams.put("tag", AdModel.normalizeTag(tag));
        } else
        {
            requestparams.put("tag", AdModel.DEFAULT_TAG_NAME);
        }
        context = context.getResources().getConfiguration().locale;
        if (context != null)
        {
            requestparams.put("locale_country", context.getCountry().toLowerCase(Locale.US));
            requestparams.put("locale_lang", context.getLanguage().toLowerCase(Locale.US));
        }
        if (rejectedImpressionId != null)
        {
            requestparams.put("rejected_impression_id", rejectedImpressionId);
        }
        if (maxCount > 1)
        {
            requestparams.put("max_count", Integer.valueOf(maxCount));
        }
        if (creativeId.intValue() > 0)
        {
            requestparams.put("creative_id", creativeId);
        }
        if (campaignId.intValue() > 0)
        {
            requestparams.put("campaign_id", campaignId);
        }
        if (debugEnabled.booleanValue())
        {
            requestparams.put("debug", "1");
        }
        requestparams.put("publisher_sdk_key", HeyzapAds.config.publisherId);
        if (randomStrategyEnabled.booleanValue())
        {
            requestparams.put("use_random_strategy_v2", "1");
        }
        return requestparams;
    }

    public Boolean getRandomStrategyEnabled()
    {
        return randomStrategyEnabled;
    }

    public String getTag()
    {
        return tag;
    }

    public String getUrl()
    {
        String s;
        if (secure.booleanValue())
        {
            s = "https";
        } else
        {
            s = "http";
        }
        return String.format("%s://%s%s", new Object[] {
            s, host, endpoint
        });
    }

    public void incrementTries()
    {
        remainingTries = remainingTries - 1;
    }

    public Boolean isValid()
    {
        boolean flag;
        if (remainingTries > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public void setAdditionalParams(Map map)
    {
        additionalParams = map;
    }

    public void setCampaignId(Integer integer)
    {
        campaignId = integer;
    }

    public void setCreativeId(Integer integer)
    {
        creativeId = integer;
    }

    public void setDebugEnabled(Boolean boolean1)
    {
        debugEnabled = boolean1;
    }

    public void setMaxCount(int i)
    {
        maxCount = i;
    }

    public void setRandomStrategyEnabled(Boolean boolean1)
    {
        randomStrategyEnabled = boolean1;
    }

    public void setRejectedImpressionId(String s)
    {
        rejectedImpressionId = s;
    }

    public void setResponseHandler(OnFetchResponse onfetchresponse)
    {
        responseHandler = onfetchresponse;
    }

}
