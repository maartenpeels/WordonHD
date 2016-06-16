// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.heyzap.house.Manager;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Connectivity;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.Logger;
import com.heyzap.sdk.ads.HeyzapAds;
import java.io.Serializable;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Event
    implements Serializable
{

    private static int adNumber = 0;
    private static Random generator = new Random();
    private static String randChars = "abcdefghijklmnopqrstuvwxz1234567890";
    private static final long serialVersionUID = 0x86a8b384f3f53a4bL;
    Boolean adClicked;
    Long adClickedTime;
    Long adRenderTime;
    com.heyzap.internal.Constants.AdUnit adUnit;
    Boolean back;
    Boolean close;
    Long creativeDownloadEndTime;
    String creativeDownloadFailedAmount;
    Long creativeDownloadStartTime;
    String creativeHost;
    String creativePath;
    Boolean devHide;
    private Long displayLatency;
    Boolean fetch;
    String fetchFailReason;
    Long fetchFinishedTime;
    Long fetchTime;
    String id;
    Boolean impressionCached;
    String impressionId;
    Integer isAvailibleDownload;
    String isAvailibleResult;
    Long isAvailibleTime;
    Long marketOpenedTime;
    String mobilePromotionId;
    String network;
    String networkVersion;
    Integer nthAd;
    Integer ordinal;
    Boolean showAd;
    Integer showAdDownload;
    String showAdResult;
    Long showAdTime;
    String tag;
    Boolean videoCached;
    Long videoDownloadEndTime;
    Boolean videoDownloadFailed;
    Long videoDownloadStartTime;
    Integer videoSize;

    public Event()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < 15; i++)
        {
            stringbuilder.append(randChars.charAt(generator.nextInt(randChars.length())));
        }

        id = new String(stringbuilder.toString());
    }

    public Event adClicked(boolean flag)
    {
        adClicked = Boolean.valueOf(flag);
        return this;
    }

    public Event adClickedTime(final long in)
    {
        adClickedTime = Long.valueOf(in);
        if (impressionId != null)
        {
            ExecutorPool.getInstance().execute(new Runnable() {

                final Event this$0;
                final long val$in;

                public void run()
                {
                    SharedPreferences sharedpreferences = Manager.applicationContext.getSharedPreferences("com.heyzap.clicks", 0);
                    try
                    {
                        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                        editor.putString(impressionId, toJSONObject().put("ad-clicked-time", in).toString());
                        if (sharedpreferences.getAll().size() > 1000)
                        {
                            editor.clear();
                        }
                        editor.commit();
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        Logger.trace(jsonexception);
                    }
                }

            
            {
                this$0 = Event.this;
                in = l;
                super();
            }
            });
        }
        return this;
    }

    public Event adRenderTime(long l)
    {
        adRenderTime = Long.valueOf(l);
        return this;
    }

    public Event adUnit(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adUnit = adunit;
        return this;
    }

    public Event back(boolean flag)
    {
        back = Boolean.valueOf(flag);
        return this;
    }

    public Event close(boolean flag)
    {
        close = Boolean.valueOf(flag);
        return this;
    }

    public void commit()
    {
        commit(false);
    }

    public void commit(final boolean flush)
    {
        if (Manager.applicationContext == null)
        {
            return;
        } else
        {
            ExecutorPool.getInstance().execute(new Runnable() {

                final Event this$0;
                final boolean val$flush;

                public void run()
                {
                    Object obj;
                    android.content.SharedPreferences.Editor editor = Manager.applicationContext.getSharedPreferences("com.heyzap.analytics", 0).edit();
                    JSONArray jsonarray;
                    try
                    {
                        editor.putString(id, toJSONObject().toString()).commit();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        Logger.trace(((Throwable) (obj)));
                    }
                    if (!flush) goto _L2; else goto _L1
_L1:
                    obj = new JSONObject();
                    jsonarray = new JSONArray();
                    jsonarray.put(toJSONObject());
                    ((JSONObject) (obj)).put("metrics", jsonarray);
                    if (HeyzapAds.framework != null) goto _L4; else goto _L3
_L3:
                    ((JSONObject) (obj)).put("framework", "none");
_L6:
                    APIClient.postJson(Manager.applicationContext, "/in_game_api/metrics/export", ((JSONObject) (obj)), editor. new AsyncHttpResponseHandler() {

                        final _cls2 this$1;
                        final android.content.SharedPreferences.Editor val$editor;

                        public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                        {
                        }

                        public void onSuccess(int i, Header aheader[], byte abyte0[])
                        {
                            editor.remove(id).commit();
                        }

            
            {
                this$1 = final__pcls2;
                editor = android.content.SharedPreferences.Editor.this;
                super();
            }
                    });
_L2:
                    return;
_L4:
                    try
                    {
                        ((JSONObject) (obj)).put("framework", HeyzapAds.framework);
                    }
                    catch (JSONException jsonexception)
                    {
                        Logger.trace(jsonexception);
                    }
                    if (true) goto _L6; else goto _L5
_L5:
                }

            
            {
                this$0 = Event.this;
                flush = flag;
                super();
            }
            });
            return;
        }
    }

    public Event creativeDownloadEndTime(long l)
    {
        creativeDownloadEndTime = Long.valueOf(l);
        return this;
    }

    public Event creativeDownloadFailedAmount(String s)
    {
        creativeDownloadFailedAmount = s;
        return this;
    }

    public Event creativeDownloadStartTime(long l)
    {
        creativeDownloadStartTime = Long.valueOf(l);
        return this;
    }

    public Event creativeHost(String s)
    {
        creativeHost = s;
        return this;
    }

    public Event creativePath(String s)
    {
        creativePath = s;
        return this;
    }

    public Event devHide(boolean flag)
    {
        devHide = Boolean.valueOf(flag);
        return this;
    }

    public Event displayLatency(Long long1)
    {
        displayLatency = long1;
        return this;
    }

    public Event fetch(boolean flag)
    {
        fetch = Boolean.valueOf(flag);
        return this;
    }

    public Event fetchFailReason(String s)
    {
        fetchFailReason = s;
        return this;
    }

    public Event fetchFinishedTime(long l)
    {
        fetchFinishedTime = Long.valueOf(l);
        return this;
    }

    public Event fetchTime(long l)
    {
        fetchTime = Long.valueOf(l);
        return this;
    }

    public Event impressionCached(boolean flag)
    {
        impressionCached = Boolean.valueOf(flag);
        return this;
    }

    public Event impressionId(String s)
    {
        if (s != null && !s.equals(""))
        {
            impressionId = s;
        }
        return this;
    }

    public Event isAvailibleDownload(int i)
    {
        isAvailibleDownload = Integer.valueOf(i);
        return this;
    }

    public Event isAvailibleResult(String s)
    {
        isAvailibleResult = s;
        return this;
    }

    public Event isAvailibleTime(long l)
    {
        isAvailibleTime = Long.valueOf(l);
        return this;
    }

    public Event marketOpenedTime(long l)
    {
        marketOpenedTime = Long.valueOf(l);
        return this;
    }

    public Event mobilePromotionId(String s)
    {
        mobilePromotionId = s;
        return this;
    }

    public Event network(String s)
    {
        network = s;
        return this;
    }

    public Event networkVersion(String s)
    {
        networkVersion = s;
        return this;
    }

    public Event ordinal(Integer integer)
    {
        ordinal = integer;
        return this;
    }

    public Event showAd(boolean flag)
    {
        if (nthAd == null)
        {
            int i = adNumber;
            adNumber = i + 1;
            nthAd = Integer.valueOf(i);
        }
        showAd = Boolean.valueOf(flag);
        return this;
    }

    public Event showAdDownload(int i)
    {
        showAdDownload = Integer.valueOf(i);
        return this;
    }

    public Event showAdResult(String s)
    {
        showAdResult = s;
        return this;
    }

    public Event showAdTime(long l)
    {
        showAdTime = Long.valueOf(l);
        return this;
    }

    public Event tag(String s)
    {
        tag = s;
        return this;
    }

    public JSONObject toJSONObject()
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        int i;
        if (fetch != null)
        {
            if (fetch.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("fetched", i);
        }
        jsonobject.putOpt("reason_fetch_failed", fetchFailReason);
        if (fetchTime != null && fetchFinishedTime != null)
        {
            jsonobject.put("fetch_download_time", fetchFinishedTime.longValue() - fetchTime.longValue());
        }
        if (videoDownloadStartTime != null && videoDownloadEndTime != null)
        {
            jsonobject.put("video_download_time", videoDownloadEndTime.longValue() - videoDownloadStartTime.longValue());
        }
        if (creativeDownloadStartTime != null && creativeDownloadEndTime != null)
        {
            jsonobject.put("creative_download_time", creativeDownloadEndTime.longValue() - creativeDownloadStartTime.longValue());
        }
        if (videoDownloadFailed != null)
        {
            if (videoDownloadFailed.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("video_download_failed", i);
        }
        jsonobject.putOpt("creative_failed_amount", creativeDownloadFailedAmount);
        jsonobject.putOpt("is_available_status", isAvailibleResult);
        jsonobject.putOpt("is_available_percentage_downloaded", isAvailibleDownload);
        if (fetchTime != null && isAvailibleTime != null)
        {
            jsonobject.put("is_available_time_since_previous_relevant_fetch", isAvailibleTime.longValue() - fetchTime.longValue());
        }
        if (showAd != null)
        {
            if (showAd.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("show_ad_called", i);
        }
        if (displayLatency != null)
        {
            jsonobject.put("display_latency", displayLatency);
        }
        jsonobject.putOpt("show_ad_percentage_downloaded", showAdDownload);
        jsonobject.putOpt("show_ad_status", showAdResult);
        if (fetchTime != null && showAdTime != null)
        {
            jsonobject.put("show_ad_time_since_previous_relevant_fetch", showAdTime.longValue() - fetchTime.longValue());
        }
        if (showAdTime != null && adRenderTime != null)
        {
            jsonobject.put("show_ad_time_till_ad_is_displayed", adRenderTime.longValue() - showAdTime.longValue());
        }
        if (showAdTime != null && HeyzapAds.config.startTime != null)
        {
            jsonobject.putOpt("time_from_start_to_show_ad", Long.valueOf(showAdTime.longValue() - HeyzapAds.config.startTime.longValue()));
        }
        if (adClicked != null)
        {
            if (adClicked.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("ad_clicked", i);
        }
        if (close != null)
        {
            if (close.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("close_clicked", i);
        }
        if (devHide != null)
        {
            if (devHide.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("dev_hidden", i);
        }
        if (back != null)
        {
            if (back.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("back_button_pressed", i);
        }
        jsonobject.putOpt("video_host", creativeHost);
        jsonobject.putOpt("video_path", creativePath);
        if (adUnit == null)
        {
            s = "unknown";
        } else
        {
            s = adUnit.toString().toLowerCase(Locale.US);
        }
        jsonobject.putOpt("ad_unit", s);
        jsonobject.putOpt("publisher_id", HeyzapAds.config.publisherId);
        jsonobject.putOpt("connectivity", Connectivity.connectionType(Manager.applicationContext));
        jsonobject.putOpt("impression_id", impressionId);
        jsonobject.putOpt("mobile_promotion_id", mobilePromotionId);
        jsonobject.putOpt("video_size", videoSize);
        if (marketOpenedTime != null && adClickedTime != null)
        {
            jsonobject.put("time_to_store_open_from_click", marketOpenedTime.longValue() - adClickedTime.longValue());
        }
        if (adRenderTime != null && fetchTime != null)
        {
            jsonobject.put("time_from_fetch_to_impression", adRenderTime.longValue() - fetchTime.longValue());
        }
        jsonobject.put("nth_ad", nthAd);
        jsonobject.put("id", id);
        if (impressionCached != null)
        {
            if (impressionCached.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.put("impression_cached", i);
        }
        if (videoCached != null)
        {
            if (videoCached.booleanValue())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            jsonobject.putOpt("video_cached", Integer.valueOf(i));
        }
        jsonobject.putOpt("ordinal", ordinal);
        jsonobject.putOpt("network", network);
        jsonobject.putOpt("network_version", networkVersion);
        return jsonobject;
    }

    public Event videoCached(boolean flag)
    {
        videoCached = Boolean.valueOf(flag);
        return this;
    }

    public Event videoDownloadEndTime(long l)
    {
        videoDownloadEndTime = Long.valueOf(l);
        return this;
    }

    public Event videoDownloadFailed(boolean flag)
    {
        videoDownloadFailed = Boolean.valueOf(flag);
        return this;
    }

    public Event videoDownloadStartTime(long l)
    {
        videoDownloadStartTime = Long.valueOf(l);
        return this;
    }

    public Event videoSize(int i)
    {
        videoSize = Integer.valueOf(i);
        return this;
    }

    static 
    {
        adNumber = 1;
    }
}
