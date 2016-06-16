// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyLog, TapjoyURLConnection, OldTapjoyVideoData, 
//            TapjoyHttpURLResponse

class this._cls0
    implements Runnable
{

    final TapjoyVideoView this$0;

    public void run()
    {
        TapjoyLog.i("VideoView", "SENDING CLICK...");
        TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(TapjoyVideoView.access$200().getClickURL());
        if (tapjoyhttpurlresponse.response != null && tapjoyhttpurlresponse.response.contains("OK"))
        {
            TapjoyLog.i("VideoView", "CLICK REQUEST SUCCESS!");
            TapjoyVideoView.access$302(TapjoyVideoView.this, true);
        }
    }

    nse()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }
}
