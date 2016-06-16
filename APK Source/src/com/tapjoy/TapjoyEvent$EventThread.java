// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.Map;

// Referenced classes of package com.tapjoy:
//            TapjoyEvent, TapjoyConnectCore, TapjoyURLConnection, TapjoyHttpURLResponse, 
//            TapjoyLog

public class params
    implements Runnable
{

    private Map params;
    final TapjoyEvent this$0;

    public void run()
    {
        String s = (new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("user_events?").toString();
        TapjoyHttpURLResponse tapjoyhttpurlresponse = TapjoyEvent.access$000().getResponseFromURL(s, params, 1);
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

    public (Map map)
    {
        this$0 = TapjoyEvent.this;
        super();
        params = map;
    }
}
