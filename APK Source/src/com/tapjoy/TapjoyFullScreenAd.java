// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import java.util.Map;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyConnectCore, TapjoyUtil, TapjoyFullScreenAdWebView, 
//            TapjoyFullScreenAdNotifier, TapjoyURLConnection, TapjoyHttpURLResponse

public class TapjoyFullScreenAd
{

    private static final String TAG = "Full Screen Ad";
    private static String baseURL = null;
    private static TapjoyFullScreenAdNotifier fullScreenAdNotifier;
    private static String htmlResponseData = null;
    private Context context;
    private Map legacyFullScreenAdParams;

    public TapjoyFullScreenAd(Context context1)
    {
        context = context1;
    }

    public void getFullScreenAd(TapjoyFullScreenAdNotifier tapjoyfullscreenadnotifier)
    {
        TapjoyLog.i("Full Screen Ad", "getFullScreenAd");
        getFullScreenAd(null, tapjoyfullscreenadnotifier);
    }

    public void getFullScreenAd(String s, TapjoyFullScreenAdNotifier tapjoyfullscreenadnotifier)
    {
        fullScreenAdNotifier = tapjoyfullscreenadnotifier;
        getFullScreenAdLegacy(s);
    }

    public void getFullScreenAdLegacy(String s)
    {
        TapjoyLog.i("Full Screen Ad", "Getting Full Screen Ad");
        legacyFullScreenAdParams = TapjoyConnectCore.getURLParams();
        TapjoyUtil.safePut(legacyFullScreenAdParams, "currency_id", s, true);
        (new Thread(new Runnable() {

            final TapjoyFullScreenAd this$0;

            public void run()
            {
                TapjoyHttpURLResponse tapjoyhttpurlresponse;
                tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_offers/featured.html?").toString(), legacyFullScreenAdParams);
                TapjoyFullScreenAd.baseURL = TapjoyConnectCore.getHostURL();
                if (tapjoyhttpurlresponse == null) goto _L2; else goto _L1
_L1:
                tapjoyhttpurlresponse.statusCode;
                JVM INSTR tableswitch 200 200: default 72
            //                           200 88;
                   goto _L3 _L4
_L3:
                if (TapjoyFullScreenAd.fullScreenAdNotifier != null)
                {
                    TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponseFailed(1);
                }
_L6:
                return;
_L4:
                TapjoyFullScreenAd.htmlResponseData = tapjoyhttpurlresponse.response;
                if (TapjoyFullScreenAd.fullScreenAdNotifier != null)
                {
                    TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponse();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if (TapjoyFullScreenAd.fullScreenAdNotifier != null)
                {
                    TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponseFailed(2);
                    return;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                this$0 = TapjoyFullScreenAd.this;
                super();
            }
        })).start();
    }

    public void setDisplayCount(int i)
    {
    }

    public void showFullScreenAd()
    {
        if (htmlResponseData != null && htmlResponseData.length() > 0 && !TapjoyConnectCore.isViewOpen())
        {
            TapjoyConnectCore.viewWillOpen(1);
            Intent intent = new Intent(context, com/tapjoy/TapjoyFullScreenAdWebView);
            intent.setFlags(0x10000000);
            intent.putExtra("html", htmlResponseData);
            intent.putExtra("base_url", baseURL);
            intent.putExtra("legacy_view", true);
            context.startActivity(intent);
        }
    }




/*
    static String access$102(String s)
    {
        baseURL = s;
        return s;
    }

*/


/*
    static String access$202(String s)
    {
        htmlResponseData = s;
        return s;
    }

*/

}
