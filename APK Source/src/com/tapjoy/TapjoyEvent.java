// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tapjoy:
//            TapjoyURLConnection, TapjoyLog, TapjoyConnectCore, TapjoyUtil, 
//            TapjoyHttpURLResponse

public class TapjoyEvent
{
    public class EventThread
        implements Runnable
    {

        private Map params;
        final TapjoyEvent this$0;

        public void run()
        {
            String s = (new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("user_events?").toString();
            TapjoyHttpURLResponse tapjoyhttpurlresponse = TapjoyEvent.tapjoyURLConnection.getResponseFromURL(s, params, 1);
            if (tapjoyhttpurlresponse != null)
            {
                switch (tapjoyhttpurlresponse.statusCode)
                {
                default:
                    TapjoyLog.e("Event", (new StringBuilder()).append("Unknown error: ").append(tapjoyhttpurlresponse.statusCode).toString());
                    return;

                case 0: // '\0'
                    TapjoyLog.e("Event", (new StringBuilder()).append("Event network error: ").append(tapjoyhttpurlresponse.statusCode).toString());
                    TapjoyConnectCore.saveOfflineLog((new StringBuilder()).append(s).append("?").append(params).toString());
                    return;

                case 200: 
                    TapjoyLog.i("Event", "Successfully sent Tapjoy event");
                    return;

                case 400: 
                    TapjoyLog.e("Event", (new StringBuilder()).append("Error sending event: ").append(tapjoyhttpurlresponse.response).toString());
                    break;
                }
                return;
            } else
            {
                TapjoyLog.e("Event", "Server/network error");
                return;
            }
        }

        public EventThread(Map map)
        {
            this$0 = TapjoyEvent.this;
            super();
            params = map;
        }
    }


    public static final int EVENT_TYPE_IAP = 1;
    public static final int EVENT_TYPE_SHUTDOWN = 2;
    private static final String TAG = "Event";
    private static TapjoyURLConnection tapjoyURLConnection = null;
    private Context context;

    public TapjoyEvent(Context context1)
    {
        context = context1;
        tapjoyURLConnection = new TapjoyURLConnection();
    }

    public String createEventParameter(String s)
    {
        return (new StringBuilder()).append("ue[").append(s).append("]").toString();
    }

    public void sendEvent(int i, Map map)
    {
        TapjoyLog.i("Event", (new StringBuilder()).append("sendEvent type: ").append(i).toString());
        Map map1 = TapjoyConnectCore.getGenericURLParams();
        TapjoyUtil.safePut(map1, "event_type_id", String.valueOf(i), true);
        if (map != null)
        {
            map1.putAll(map);
        }
        (new Thread(new EventThread(map1))).start();
    }

    public void sendIAPEvent(String s, float f, int i, String s1)
    {
        HashMap hashmap = new HashMap();
        TapjoyUtil.safePut(hashmap, createEventParameter("name"), s, true);
        TapjoyUtil.safePut(hashmap, createEventParameter("price"), String.valueOf(f), true);
        TapjoyUtil.safePut(hashmap, createEventParameter("quantity"), String.valueOf(i), true);
        TapjoyUtil.safePut(hashmap, createEventParameter("currency_code"), s1, true);
        sendEvent(1, hashmap);
    }

    public void sendShutDownEvent()
    {
        sendEvent(2, null);
    }


}
