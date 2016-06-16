// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.graphics.BitmapFactory;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package com.tapjoy:
//            TapjoyVideo, TapjoyURLConnection, TapjoyConnectCore, TapjoyHttpURLResponse, 
//            TapjoyLog

class this._cls0
    implements Runnable
{

    final TapjoyVideo this$0;

    public void run()
    {
        boolean flag1 = false;
        TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("videos?").toString(), TapjoyConnectCore.getURLParams());
        boolean flag = flag1;
        if (tapjoyhttpurlresponse.response != null)
        {
            flag = flag1;
            if (tapjoyhttpurlresponse.response.length() > 0)
            {
                flag = TapjoyVideo.access$000(TapjoyVideo.this, tapjoyhttpurlresponse.response);
            }
        }
        if (flag)
        {
            boolean _tmp = TapjoyVideo.access$100(TapjoyVideo.this);
            if ("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png" != null && "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png".length() > 0)
            {
                try
                {
                    URL url = new URL("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png");
                    URLConnection urlconnection = url.openConnection();
                    urlconnection.setConnectTimeout(15000);
                    urlconnection.setReadTimeout(25000);
                    urlconnection.connect();
                    android.graphics.Bitmap _tmp1 = TapjoyVideo.access$202(BitmapFactory.decodeStream(url.openConnection().getInputStream()));
                    urlconnection.getInputStream().close();
                }
                catch (Exception exception)
                {
                    TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("e: ").append(exception.toString()).toString());
                }
            }
            TapjoyVideo.access$300(TapjoyVideo.this);
            TapjoyVideo.access$402(TapjoyVideo.this, true);
            if (TapjoyVideo.access$500(TapjoyVideo.this))
            {
                TapjoyLog.i("TapjoyVideo", "trying to cache because of cache_auto flag...");
                cacheVideos();
            }
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            TapjoyLog.i("TapjoyVideo", "INIT DONE!");
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            return;
        } else
        {
            TapjoyVideo.videoNotifierError(2);
            return;
        }
    }

    ctory()
    {
        this$0 = TapjoyVideo.this;
        super();
    }
}
