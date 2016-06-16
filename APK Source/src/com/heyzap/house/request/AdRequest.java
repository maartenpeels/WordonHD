// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Connectivity;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.heyzap.sdk.ads.HeyzapInterstitialActivity;
import com.heyzap.sdk.ads.HeyzapVideoActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.house.request:
//            FetchRequest, DisplayCache

public class AdRequest
{

    public static com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener DEFAULT_INCENTIVE_LISTENER = new com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener() {

        public void onComplete(String s)
        {
        }

        public void onIncomplete(String s)
        {
        }

    };
    public static com.heyzap.sdk.ads.HeyzapAds.OnStatusListener DEFAULT_STATUS_LISTENER = new com.heyzap.sdk.ads.HeyzapAds.OnStatusListener() {

        public void onAudioFinished()
        {
        }

        public void onAudioStarted()
        {
        }

        public void onAvailable(String s)
        {
        }

        public void onClick(String s)
        {
        }

        public void onFailedToFetch(String s)
        {
        }

        public void onFailedToShow(String s)
        {
        }

        public void onHide(String s)
        {
        }

        public void onShow(String s)
        {
        }

    };
    private AdModel adModel;
    private com.heyzap.internal.Constants.AuctionType auctionType;
    private Integer campaignId;
    private boolean cancelled;
    private Integer creativeId;
    private int creativeTypes;
    private HashMap debug;
    private Boolean debuggable;
    private com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener incentiveListener;
    private boolean isImmediate;
    private com.heyzap.sdk.ads.HeyzapAds.OnStatusListener statusListener;
    private String tag;
    private String userIdentifier;

    public AdRequest(int i, String s)
    {
        debuggable = Boolean.valueOf(false);
        userIdentifier = null;
        statusListener = DEFAULT_STATUS_LISTENER;
        incentiveListener = DEFAULT_INCENTIVE_LISTENER;
        auctionType = null;
        isImmediate = false;
        cancelled = false;
        creativeTypes = 1;
        debug = new HashMap();
        tag = s;
        creativeTypes = i;
    }

    private void setAdModel(AdModel admodel)
    {
        adModel = admodel;
        adModel.setAdRequest(this);
        if (adModel.isReady())
        {
            getOnStatusListener().onAvailable(getTag());
        }
    }

    private static void startActivity(Activity activity, AdModel admodel)
    {
        activity.runOnUiThread(new Runnable(admodel, activity) {

            final AdModel val$ad;
            final Activity val$parentActivity;

            public void run()
            {
                Manager.getInstance().getDisplayCache().set(ad);
                Object obj;
                if (ad.getFormat().equals(VideoModel.FORMAT))
                {
                    obj = com/heyzap/sdk/ads/HeyzapVideoActivity;
                } else
                {
                    obj = com/heyzap/sdk/ads/HeyzapInterstitialActivity;
                }
                obj = new Intent(parentActivity, ((Class) (obj)));
                ((Intent) (obj)).setFlags(0x24000000);
                ((Intent) (obj)).putExtra("impression_id", ad.getImpressionId());
                ((Intent) (obj)).putExtra("action", 1);
                ((Intent) (obj)).putExtra("original_orientation", parentActivity.getResources().getConfiguration().orientation);
                parentActivity.startActivity(((Intent) (obj)));
                if (Utils.getSdkVersion() >= 5)
                {
                    parentActivity.overridePendingTransition(0x10a0002, 0x10a0003);
                }
            }

            
            {
                ad = admodel;
                parentActivity = activity;
                super();
            }
        });
    }

    public void cancel()
    {
        if (adModel != null)
        {
            adModel = null;
        }
        cancelled = true;
    }

    public void fetch(Context context)
    {
        FetchRequest fetchrequest = FetchRequest.Factory.build(this);
        fetchrequest.setResponseHandler(new FetchRequest.OnFetchResponse() {

            final AdRequest this$0;

            public void onFetchResponse(List list, FetchRequest fetchrequest1, Throwable throwable)
            {
                if (list != null && list.size() > 0)
                {
                    list = list.iterator();
                    do
                    {
                        if (!list.hasNext())
                        {
                            break;
                        }
                        fetchrequest1 = (AdModel)list.next();
                        if (adModel == null && !cancelled)
                        {
                            setAdModel(fetchrequest1);
                        }
                    } while (true);
                } else
                {
                    if (isImmediate)
                    {
                        list = MetricsTracker.getEvent(fetchrequest1.getAdRequest()).showAd(true);
                        if (throwable == null)
                        {
                            list.showAdResult("not-cached-and-attempted-fetch-no-fill");
                        } else
                        {
                            list.showAdResult("not-cached-and-attempted-fetch-failed");
                        }
                    }
                    getOnStatusListener().onFailedToFetch(getTag());
                }
            }

            public void onModelsReceived(List list)
            {
                for (list = list.iterator(); list.hasNext(); ((AdModel)list.next()).setAdRequest(AdRequest.this)) { }
            }

            
            {
                this$0 = AdRequest.this;
                super();
            }
        });
        fetchrequest.execute(context);
    }

    public AdModel getAdModel()
    {
        return adModel;
    }

    public com.heyzap.internal.Constants.AuctionType getAuctionType()
    {
        return auctionType;
    }

    public Integer getCreativeId()
    {
        return creativeId;
    }

    public int getCreativeTypes()
    {
        return creativeTypes;
    }

    public Boolean getDebuggable()
    {
        return debuggable;
    }

    public com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener getOnIncentiveListener()
    {
        return incentiveListener;
    }

    public com.heyzap.sdk.ads.HeyzapAds.OnStatusListener getOnStatusListener()
    {
        return statusListener;
    }

    public String getTag()
    {
        return tag;
    }

    public boolean isImmediate()
    {
        return isImmediate;
    }

    public Boolean isReady()
    {
        if (adModel != null)
        {
            return Boolean.valueOf(adModel.isReady());
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public void setAuctionType(com.heyzap.internal.Constants.AuctionType auctiontype)
    {
        auctionType = auctiontype;
    }

    public void setCampaignId(Integer integer)
    {
        campaignId = integer;
    }

    public void setCreativeId(Integer integer)
    {
        creativeId = integer;
    }

    public void setDebugable(Boolean boolean1)
    {
        debuggable = boolean1;
    }

    public void setIsImmediate(boolean flag)
    {
        isImmediate = flag;
    }

    public void setOnIncentiveListener(com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener onincentiveresultlistener)
    {
        if (onincentiveresultlistener != null)
        {
            incentiveListener = onincentiveresultlistener;
            return;
        } else
        {
            incentiveListener = DEFAULT_INCENTIVE_LISTENER;
            return;
        }
    }

    public void setOnStatusListener(com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener)
    {
        if (onstatuslistener != null)
        {
            statusListener = onstatuslistener;
            return;
        } else
        {
            statusListener = DEFAULT_STATUS_LISTENER;
            return;
        }
    }

    public void setTag(String s)
    {
        tag = s;
        AdModel admodel = adModel;
        if (admodel != null)
        {
            admodel.setTag(s);
        }
    }

    public void setUserIdentifier(String s)
    {
        userIdentifier = s;
    }

    public void show(Activity activity, com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        Event event = MetricsTracker.getEvent(this).showAd(true);
        if (!Connectivity.isConnected(activity))
        {
            Logger.log("NO CONNECTIVITY");
            event.showAdResult("no-connectivity").commit();
            statusListener.onFailedToShow(tag);
        } else
        if (adModel != null)
        {
            Boolean boolean2 = Boolean.valueOf(adModel.isReady());
            Boolean boolean1 = boolean2;
            if (!boolean2.booleanValue())
            {
                boolean1 = boolean2;
                if (adunit.equals(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL))
                {
                    boolean1 = Boolean.valueOf(true);
                }
            }
            if (boolean1.booleanValue())
            {
                adModel.setAdRequest(this);
                adModel.setAdUnit(adunit);
                adModel.setTag(s);
                FetchRequest.updateOrientation(activity);
                if (adModel.getFormat().equals(VideoModel.FORMAT))
                {
                    adunit = (VideoModel)adModel;
                    event.videoSize(((VideoModel) (adunit)).size).showAdDownload(((VideoModel) (adunit)).percentDownloaded);
                }
                event.showAdTime(System.currentTimeMillis()).impressionId(adModel.getImpressionId()).showAdResult("fully-cached");
                event.commit();
                startActivity(activity, adModel);
                return;
            } else
            {
                event.showAdResult("video-not-downloaded-nothing-shown");
                event.commit();
                statusListener.onFailedToShow(s);
                return;
            }
        }
    }





}
