// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyConnectCore, OldTapjoyVideoData

class this._cls0
    implements Runnable
{

    final TapjoyVideoView this$0;

    public void run()
    {
        if (TapjoyVideoView.access$300(TapjoyVideoView.this))
        {
            TapjoyConnectCore.getInstance().actionComplete(TapjoyVideoView.access$200().getOfferId());
        }
    }

    ()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }
}
