// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyFullScreenAd, TapjoyURLConnection, TapjoyConnectCore, TapjoyHttpURLResponse, 
//            TapjoyFullScreenAdNotifier

class this._cls0
    implements Runnable
{

    final TapjoyFullScreenAd this$0;

    public void run()
    {
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
        tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_offers/featured.html?").toString(), TapjoyFullScreenAd.access$000(TapjoyFullScreenAd.this));
        TapjoyFullScreenAd.access$102(TapjoyConnectCore.getHostURL());
        if (tapjoyhttpurlresponse == null) goto _L2; else goto _L1
_L1:
        tapjoyhttpurlresponse.statusCode;
        JVM INSTR tableswitch 200 200: default 72
    //                   200 88;
           goto _L3 _L4
_L3:
        if (TapjoyFullScreenAd.access$300() != null)
        {
            TapjoyFullScreenAd.access$300().getFullScreenAdResponseFailed(1);
        }
_L6:
        return;
_L4:
        TapjoyFullScreenAd.access$202(tapjoyhttpurlresponse.response);
        if (TapjoyFullScreenAd.access$300() != null)
        {
            TapjoyFullScreenAd.access$300().getFullScreenAdResponse();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (TapjoyFullScreenAd.access$300() != null)
        {
            TapjoyFullScreenAd.access$300().getFullScreenAdResponseFailed(2);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    ifier()
    {
        this$0 = TapjoyFullScreenAd.this;
        super();
    }
}
