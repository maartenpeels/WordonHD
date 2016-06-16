// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.widget.TextView;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyLog

class this._cls0
    implements Runnable
{

    final TapjoyVideoView this$0;

    public void run()
    {
        TapjoyVideoView.access$500(TapjoyVideoView.this).setText((new StringBuilder()).append("").append(TapjoyVideoView.access$400(TapjoyVideoView.this)).append(" seconds").toString());
        float f = TapjoyVideoView.access$600(TapjoyVideoView.this).getDuration();
        if (f > 0.0F)
        {
            if (!TapjoyVideoView.access$700(TapjoyVideoView.this))
            {
                TapjoyVideoView.access$800(TapjoyVideoView.this, "start");
                TapjoyVideoView.access$702(TapjoyVideoView.this, true);
            }
            float f1 = TapjoyVideoView.access$600(TapjoyVideoView.this).getCurrentPosition();
            if (f1 >= f / 4F && !TapjoyVideoView.access$900(TapjoyVideoView.this))
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("Video 1st quartile: ").append(f1).toString());
                TapjoyVideoView.access$800(TapjoyVideoView.this, "firstQuartile");
                TapjoyVideoView.access$902(TapjoyVideoView.this, true);
            }
            if (f1 >= f / 2.0F && !TapjoyVideoView.access$1000(TapjoyVideoView.this))
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("Video midpoint: ").append(f1).toString());
                TapjoyVideoView.access$800(TapjoyVideoView.this, "midpoint");
                TapjoyVideoView.access$1002(TapjoyVideoView.this, true);
            }
            if (f1 >= (3F * f) / 4F && !TapjoyVideoView.access$1100(TapjoyVideoView.this))
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("Video 3rd quartile: ").append(f1).toString());
                TapjoyVideoView.access$800(TapjoyVideoView.this, "thirdQuartile");
                TapjoyVideoView.access$1102(TapjoyVideoView.this, true);
            }
        }
    }

    ()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }
}
