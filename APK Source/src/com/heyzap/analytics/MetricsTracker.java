// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.AdRequest;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.analytics:
//            Event

public class MetricsTracker
{

    private static boolean enabled = true;
    private static MetricsTracker instance;
    private ArrayList eventCache;

    private MetricsTracker()
    {
        eventCache = new ArrayList();
    }

    private static boolean eventLookup(Event event, Event event1)
    {
        if (event.impressionId != null && event.impressionId.equals(event1.impressionId))
        {
            return true;
        }
        if (event.tag != null && event.tag.equals(event1.tag) && event.adUnit == event1.adUnit)
        {
            return true;
        }
        return event.network != null && event.network.equals(event1.network) && event.adUnit == event1.adUnit;
    }

    private static Event findEvent(Event event)
    {
        for (Iterator iterator = getTracker().eventCache.iterator(); iterator.hasNext();)
        {
            Event event1 = (Event)iterator.next();
            if (eventLookup(event1, event))
            {
                return event1;
            }
        }

        return null;
    }

    public static Event getEvent(AdModel admodel)
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        Logger.log(admodel);
        if (admodel.event == null) goto _L2; else goto _L1
_L1:
        admodel = admodel.event;
_L4:
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return admodel;
_L2:
        Event event;
        event = getEvent(admodel.getAdRequest());
        admodel.event = event;
        admodel = event;
        if (true) goto _L4; else goto _L3
_L3:
        admodel;
        throw admodel;
    }

    public static Event getEvent(AdRequest adrequest)
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        if (adrequest != null) goto _L2; else goto _L1
_L1:
        adrequest = getEvent("heyzap");
_L4:
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return adrequest;
_L2:
        if (adrequest.getAuctionType() == com.heyzap.internal.Constants.AuctionType.CROSS_PROMO)
        {
            adrequest = getEvent("heyzap_cross_promo");
            continue; /* Loop/switch isn't completed */
        }
        if (com.heyzap.internal.Constants.CreativeType.contains(adrequest.getCreativeTypes(), com.heyzap.internal.Constants.CreativeType.VIDEO))
        {
            adrequest = getEvent("heyzap_video");
            continue; /* Loop/switch isn't completed */
        }
        adrequest = getEvent("heyzap");
        if (true) goto _L4; else goto _L3
_L3:
        adrequest;
        throw adrequest;
    }

    public static Event getEvent(String s)
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        Event event;
        Iterator iterator;
        event = (new Event()).network(s);
        iterator = getTracker().eventCache.iterator();
_L2:
        s = event;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = (Event)iterator.next();
        if (!eventLookup(s, event)) goto _L2; else goto _L1
_L1:
        boolean flag;
        if (((Event) (s)).showAd == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = ((Event) (s)).showAd.booleanValue();
        if (flag) goto _L2; else goto _L3
_L3:
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public static MetricsTracker getTracker()
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        MetricsTracker metricstracker;
        if (instance == null)
        {
            instance = new MetricsTracker();
        }
        metricstracker = instance;
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return metricstracker;
        Exception exception;
        exception;
        throw exception;
    }

    public static Event putEvent(AdModel admodel, boolean flag)
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        removeEvent(admodel.getAdUnit(), admodel.getTag());
        if (findEvent((new Event()).adUnit(admodel.getAdUnit()).tag(admodel.getTag())) == null)
        {
            getTracker().eventCache.add(admodel.event);
        }
        admodel = admodel.event;
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return admodel;
        admodel;
        throw admodel;
    }

    public static void removeEvent(com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorenter ;
        Iterator iterator = getTracker().eventCache.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Event event = (Event)iterator.next();
            if (event.adUnit != adunit || !s.equals(event.tag))
            {
                continue;
            }
            getTracker().eventCache.remove(event);
            break;
        } while (true);
        com/heyzap/analytics/MetricsTracker;
        JVM INSTR monitorexit ;
        return;
        adunit;
        throw adunit;
    }

    public static void sendMetrics()
    {
        ExecutorPool.getInstance().execute(new Runnable() {

            public void run()
            {
                SharedPreferences sharedpreferences = Manager.applicationContext.getSharedPreferences("com.heyzap.analytics", 0);
                Object obj = sharedpreferences.getAll();
                JSONObject jsonobject = new JSONObject();
                JSONArray jsonarray = new JSONArray();
                for (obj = ((Map) (obj)).values().iterator(); ((Iterator) (obj)).hasNext();)
                {
                    String s = (String)((Iterator) (obj)).next();
                    try
                    {
                        jsonarray.put(new JSONObject(s));
                    }
                    catch (JSONException jsonexception1)
                    {
                        Logger.trace(jsonexception1);
                    }
                }

                try
                {
                    JSONObject jsonobject1 = new JSONObject();
                    jsonobject1.put("start", 1);
                    jsonarray.put(jsonobject1);
                    jsonobject.put("metrics", jsonarray);
                }
                catch (JSONException jsonexception)
                {
                    Logger.trace(jsonexception);
                }
                APIClient.postJson(Manager.applicationContext, "/in_game_api/metrics/export", jsonobject, sharedpreferences. new AsyncHttpResponseHandler() {

                    final _cls1 this$0;
                    final SharedPreferences val$toSend;

                    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                    {
                    }

                    public void onSuccess(int i, Header aheader[], byte abyte0[])
                    {
                        toSend.edit().clear().commit();
                    }

            
            {
                this$0 = final__pcls1;
                toSend = SharedPreferences.this;
                super();
            }
                });
            }

        });
    }

    public static void setEnabled(boolean flag)
    {
        enabled = flag;
    }

    public JSONArray dumpCache()
        throws JSONException
    {
        JSONArray jsonarray = new JSONArray(eventCache);
        eventCache.clear();
        return jsonarray;
    }

}
