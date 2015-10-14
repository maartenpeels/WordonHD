// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView, TJAdUnitJSBridge, TapjoyLog

class  extends TimerTask
{

    final TJAdUnitView this$0;

    public void run()
    {
        if (bridge.shouldClose)
        {
            TapjoyLog.i("TJAdUnitView", "customClose timeout");
            TJAdUnitView.access$700(TJAdUnitView.this);
        }
    }

    e()
    {
        this$0 = TJAdUnitView.this;
        super();
    }
}
