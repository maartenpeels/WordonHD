// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyLog, TapjoyURLConnection, TapjoyHttpURLResponse

class val.event
    implements Runnable
{

    final TapjoyVideoView this$0;
    final String val$event;
    final String val$url;

    public void run()
    {
        TapjoyLog.i("VideoView", "Sending video tracking event...");
        TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(val$url);
        if (tapjoyhttpurlresponse.response != null && tapjoyhttpurlresponse.statusCode == 200)
        {
            TapjoyLog.i("VideoView", (new StringBuilder()).append("Video tracking event success: ").append(val$event).toString());
        }
    }

    nse()
    {
        this$0 = final_tapjoyvideoview;
        val$url = s;
        val$event = String.this;
        super();
    }
}
