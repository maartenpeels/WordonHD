// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJPoints, TapjoyURLConnection, TapjoyConnectCore, TapjoyHttpURLResponse, 
//            TapjoyNotifier

class >
    implements Runnable
{

    final TJPoints this$0;

    public void run()
    {
        boolean flag = false;
        TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_vg_store_items/user_account?").toString(), TapjoyConnectCore.getURLParams());
        if (tapjoyhttpurlresponse.response != null)
        {
            flag = TJPoints.access$000(TJPoints.this, tapjoyhttpurlresponse.response);
        }
        if (!flag)
        {
            TJPoints.access$100().getUpdatePointsFailed("Failed to retrieve points from server");
        }
    }

    ier()
    {
        this$0 = TJPoints.this;
        super();
    }
}
