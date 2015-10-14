// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TJAdUnitView

class val.buttonVisible
    implements Runnable
{

    final TJAdUnitJSBridge this$0;
    final boolean val$buttonVisible;

    public void run()
    {
        ((TJAdUnitView)TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this)).setCloseButtonVisibility(val$buttonVisible);
    }

    ()
    {
        this$0 = final_tjadunitjsbridge;
        val$buttonVisible = Z.this;
        super();
    }
}
