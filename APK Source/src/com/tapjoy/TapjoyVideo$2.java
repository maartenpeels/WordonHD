// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.Environment;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.tapjoy:
//            TapjoyVideo, TapjoyLog, TapjoyConnectCore, OldTapjoyVideoData

class this._cls0
    implements Runnable
{

    final TapjoyVideo this$0;

    public void run()
    {
        int i;
        TapjoyLog.i("TapjoyVideo", "--- cacheAllVideos called ---");
        i = 0;
_L2:
        int j;
        if (TapjoyVideo.access$400(TapjoyVideo.this))
        {
            break; /* Loop/switch isn't completed */
        }
        j = i;
        Thread.sleep(500L);
        j = (int)((long)i + 500L);
        i = j;
        if ((long)j > 10000L)
        {
            try
            {
                TapjoyLog.e("TapjoyVideo", "Error during cacheVideos.  Timeout while waiting for initVideos to finish.");
                return;
            }
            catch (Exception exception)
            {
                TapjoyLog.e("TapjoyVideo", (new StringBuilder()).append("Exception in cacheAllVideos: ").append(exception.toString()).toString());
            }
            i = j;
        }
        if (true) goto _L2; else goto _L1
_L1:
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheVideos connection_type: ").append(TapjoyConnectCore.getConnectionType()).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cache3g: ").append(TapjoyVideo.access$600(TapjoyVideo.this)).toString());
        TapjoyLog.i("TapjoyVideo", (new StringBuilder()).append("cacheWifi: ").append(TapjoyVideo.access$700(TapjoyVideo.this)).toString());
        if (TapjoyVideo.access$600(TapjoyVideo.this) && TapjoyConnectCore.getConnectionType().equals("mobile") || TapjoyVideo.access$700(TapjoyVideo.this) && TapjoyConnectCore.getConnectionType().equals("wifi"))
        {
            if (!"mounted".equals(Environment.getExternalStorageState()))
            {
                TapjoyLog.i("TapjoyVideo", "Media storage unavailable.  Aborting caching videos.");
                TapjoyVideo.videoNotifierError(1);
                return;
            }
            String s;
            for (; TapjoyVideo.access$800(TapjoyVideo.this).size() < TapjoyVideo.access$900(TapjoyVideo.this) && TapjoyVideo.access$1000(TapjoyVideo.this).size() > 0; TapjoyVideo.access$1200(TapjoyVideo.this, s))
            {
                s = ((OldTapjoyVideoData)TapjoyVideo.access$1100(TapjoyVideo.this).get(TapjoyVideo.access$1000(TapjoyVideo.this).elementAt(0))).getVideoURL();
            }

        } else
        {
            TapjoyLog.i("TapjoyVideo", " * Skipping caching videos because of video flags and connection_type...");
        }
        TapjoyVideo.access$1300(TapjoyVideo.this);
        return;
    }

    Data()
    {
        this$0 = TapjoyVideo.this;
        super();
    }
}
