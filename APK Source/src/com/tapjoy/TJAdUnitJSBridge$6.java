// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEventRequestCallback, TJAdUnitJSBridge

class val.callbackID
    implements TJEventRequestCallback
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;

    public void cancelled()
    {
        invokeJSCallback(val$callbackID, new Object[] {
            Boolean.FALSE
        });
    }

    public void completed()
    {
        invokeJSCallback(val$callbackID, new Object[] {
            Boolean.TRUE
        });
    }

    ack()
    {
        this$0 = final_tjadunitjsbridge;
        val$callbackID = String.this;
        super();
    }
}
