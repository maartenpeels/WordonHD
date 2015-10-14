// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.DialogInterface;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyLog

class this._cls0
    implements android.content.ClickListener
{

    final TapjoyVideoView this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        TapjoyVideoView.access$600(TapjoyVideoView.this).seekTo(TapjoyVideoView.access$1200(TapjoyVideoView.this));
        TapjoyVideoView.access$600(TapjoyVideoView.this).start();
        TapjoyVideoView.access$1302(TapjoyVideoView.this, false);
        TapjoyLog.i("VideoView", (new StringBuilder()).append("RESUME VIDEO time: ").append(TapjoyVideoView.access$1200(TapjoyVideoView.this)).toString());
        TapjoyLog.i("VideoView", (new StringBuilder()).append("currentPosition: ").append(TapjoyVideoView.access$600(TapjoyVideoView.this).getCurrentPosition()).toString());
        TapjoyLog.i("VideoView", (new StringBuilder()).append("duration: ").append(TapjoyVideoView.access$600(TapjoyVideoView.this).getDuration()).append(", elapsed: ").append(TapjoyVideoView.access$600(TapjoyVideoView.this).getDuration() - TapjoyVideoView.access$600(TapjoyVideoView.this).getCurrentPosition()).toString());
    }

    ce()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }
}
