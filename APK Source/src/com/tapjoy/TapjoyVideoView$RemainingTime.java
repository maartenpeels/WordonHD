// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.Handler;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TapjoyVideoView

private class <init> extends TimerTask
{

    final TapjoyVideoView this$0;

    public void run()
    {
        mHandler.post(mUpdateResults);
    }

    private ()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
