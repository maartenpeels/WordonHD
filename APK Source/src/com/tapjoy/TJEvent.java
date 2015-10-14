// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.tapjoy:
//            TJEventData, TapjoyUtil, TapjoyConnectCore, TJEventManager, 
//            TapjoyLog, TJEventCallback, TapjoyHttpURLResponse, TapjoyCache, 
//            TJError, TJEventOptimizer, TJAdUnitView, TapjoyURLConnection, 
//            TapjoyCacheNotifier

public class TJEvent
{

    private static final String TAG = "TJEvent";
    private boolean autoShowContent;
    private TJEventCallback callback;
    private boolean contentAvailable;
    private boolean contentReady;
    private Context context;
    private TJEventData eventData;
    private Map eventParams;
    private boolean preloadEvent;
    private Map urlParams;

    public TJEvent(Context context1, String s, TJEventCallback tjeventcallback)
    {
        this(context1, s, null, tjeventcallback);
    }

    public TJEvent(Context context1, String s, String s1, TJEventCallback tjeventcallback)
    {
        contentAvailable = false;
        autoShowContent = false;
        preloadEvent = false;
        contentReady = false;
        context = context1;
        callback = tjeventcallback;
        eventData = new TJEventData();
        eventData.name = s;
        eventData.value = s1;
        eventData.guid = UUID.randomUUID().toString();
        eventParams = new HashMap();
        TapjoyUtil.safePut(eventParams, "event_name", eventData.name, true);
        TapjoyUtil.safePut(eventParams, "event_value", eventData.value, true);
        urlParams = TapjoyConnectCore.getGenericURLParams();
        urlParams.putAll(eventParams);
        urlParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        context1 = (new StringBuilder()).append(TapjoyConnectCore.getEventURL()).append("events?").toString();
        eventData.url = context1;
        eventData.baseURL = context1.substring(0, context1.indexOf('/', context1.indexOf("//") + ("//".length() + 1)));
        for (; TJEventManager.get(eventData.guid) != null; eventData.guid = UUID.randomUUID().toString()) { }
        TJEventManager.put(eventData.guid, this);
    }

    private void callContentReadyCallback(int i)
    {
        contentReady = true;
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Content is ready for event ").append(eventData.name).append(", status: ").append(i).toString());
        callback.contentIsReady(this, i);
        if (autoShowContent)
        {
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Presenting content for event ").append(eventData.name).append(" automatically").toString());
            showContent();
        }
    }

    public void enableAutoPresent(boolean flag)
    {
        autoShowContent = flag;
    }

    public void enablePreload(boolean flag)
    {
        preloadEvent = flag;
        TapjoyUtil.safePut(urlParams, "event_preload", String.valueOf(flag), false);
    }

    protected void eventSuccess(TapjoyHttpURLResponse tapjoyhttpurlresponse)
    {
        contentAvailable = true;
        callback.sendEventCompleted(this, contentAvailable);
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(eventData.name).append(", contentAvailable: ").append(contentAvailable).append(", preload: ").append(preloadEvent).toString());
        if (!preloadEvent)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Begin preloading content for event ").append(eventData.name).toString());
        tapjoyhttpurlresponse = tapjoyhttpurlresponse.getHeaderFieldAsString("x-tapjoy-cacheable-assets");
        try
        {
            if (TapjoyCache.getInstance().getEventPreloadCount() == TapjoyCache.getInstance().getEventPreloadLimit())
            {
                TapjoyLog.i("TJEvent", (new StringBuilder()).append("Event preloading limit reached. No content will be cached for event ").append(eventData.name).toString());
                callContentReadyCallback(1);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (TapjoyHttpURLResponse tapjoyhttpurlresponse)
        {
            callContentReadyCallback(1);
            return;
        }
        TapjoyCache.getInstance().incrementEventCacheCount();
        tapjoyhttpurlresponse = new JSONArray(tapjoyhttpurlresponse);
        if (tapjoyhttpurlresponse == null)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        if (tapjoyhttpurlresponse.length() > 0)
        {
            TapjoyCache.getInstance().cacheAssetGroup(tapjoyhttpurlresponse, new TapjoyCacheNotifier() {

                final TJEvent this$0;

                public void cachingComplete(int i)
                {
                    callContentReadyCallback(i);
                }

            
            {
                this$0 = TJEvent.this;
                super();
            }
            });
            return;
        }
        callContentReadyCallback(1);
        return;
        if (autoShowContent)
        {
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Presenting content for event ").append(eventData.name).append(" automatically").toString());
            showContent();
        }
        return;
    }

    public TJEventCallback getCallback()
    {
        return callback;
    }

    public String getGUID()
    {
        return eventData.guid;
    }

    public String getName()
    {
        return eventData.name;
    }

    public Map getParameters()
    {
        return eventParams;
    }

    public String getValue()
    {
        return eventData.value;
    }

    public boolean isContentReady()
    {
        return contentReady;
    }

    public boolean isPreloadEnabled()
    {
        return preloadEvent;
    }

    public void processSendCallback(boolean flag)
    {
        if (flag)
        {
            sendRequest();
            return;
        } else
        {
            trackEventForOfflineDelivery();
            callback.sendEventCompleted(this, false);
            return;
        }
    }

    public void send()
    {
        if (callback == null)
        {
            TapjoyLog.e("TJEvent", "TJEventSendCallback is null");
        }
        if (TapjoyConnectCore.getInstance() != null && TapjoyConnectCore.getInstance().isInitialized()) goto _L2; else goto _L1
_L1:
        TapjoyLog.e("TJEvent", "ERROR -- SDK not initialized -- requestTapjoyConnect must be called first");
        if (callback != null)
        {
            callback.sendEventFail(this, new TJError(0, "SDK not initialized -- requestTapjoyConnect must be called first"));
        }
_L4:
        return;
_L2:
        if (context != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (callback != null)
        {
            callback.sendEventFail(this, new TJError(0, "Context is null -- TJEvent requires a valid Context."));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (eventData.name == null || eventData.name.length() == 0)
        {
            if (callback != null)
            {
                callback.sendEventFail(this, new TJError(0, "Invalid eventName -- TJEvent requires a valid eventName."));
                return;
            }
        } else
        {
            TJEventOptimizer.getInstance().checkEvent(this);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void sendRequest()
    {
        (new Thread() {

            final TJEvent this$0;

            public void run()
            {
                TapjoyHttpURLResponse tapjoyhttpurlresponse;
label0:
                {
label1:
                    {
                        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Sending event: ").append(eventData.name).toString());
                        tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(eventData.url, urlParams);
                        eventData.httpStatusCode = tapjoyhttpurlresponse.statusCode;
                        eventData.httpResponse = tapjoyhttpurlresponse.response;
                        String s = tapjoyhttpurlresponse.getHeaderFieldAsString("X-Tapjoy-Debug");
                        if (s != null)
                        {
                            TapjoyLog.v("TJEvent", (new StringBuilder()).append("Tapjoy-Server-Debug: ").append(s).toString());
                        }
                        if (tapjoyhttpurlresponse != null && callback != null)
                        {
                            switch (tapjoyhttpurlresponse.statusCode)
                            {
                            default:
                                TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(eventData.name).append(", contentAvailable: ").append(contentAvailable).toString());
                                callback.sendEventCompleted(TJEvent.this, contentAvailable);
                                break;

                            case 0: // '\0'
                                break label0;

                            case 200: 
                                break label1;
                            }
                        }
                        return;
                    }
                    eventSuccess(tapjoyhttpurlresponse);
                    return;
                }
                TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request failed for event ").append(eventData.name).toString());
                trackEventForOfflineDelivery();
                callback.sendEventFail(TJEvent.this, new TJError(tapjoyhttpurlresponse.statusCode, tapjoyhttpurlresponse.response));
            }

            
            {
                this$0 = TJEvent.this;
                super();
            }
        }).start();
    }

    public void setParameters(Map map)
    {
        eventParams = map;
    }

    public void showContent()
    {
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("showContent() called for event ").append(eventData.name).toString());
        if (!contentAvailable)
        {
            TapjoyLog.e("TJEvent", "Cannot show content for non-200 send event");
            return;
        }
        if (callback == null)
        {
            TapjoyLog.e("TJEvent", "TJEventCallback is null");
            return;
        }
        if (TapjoyConnectCore.isViewOpen())
        {
            TapjoyLog.w("TJEvent", "Only one view can be presented at a time.");
            return;
        } else
        {
            TapjoyConnectCore.viewWillOpen(4);
            Intent intent = new Intent(context, com/tapjoy/TJAdUnitView);
            intent.putExtra("view_type", 1);
            intent.putExtra("tjevent", eventData);
            intent.setFlags(0x10000000);
            context.startActivity(intent);
            return;
        }
    }

    public void trackEventForOfflineDelivery()
    {
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Tracking event ").append(eventData.name).append(" for offline delivery").toString());
        urlParams.remove("timestamp");
        urlParams.remove("verifier");
        TapjoyConnectCore.saveOfflineLog((new StringBuilder()).append(eventData.url).append(TapjoyUtil.convertURLParams(urlParams, false)).toString());
    }





}
