// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.webkit.WebView;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

class val.callbackID
    implements Runnable
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;
    final JSONObject val$json;

    public void run()
    {
        if (android.os.NT < 19)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        TJAdUnitJSBridge.access$400(TJAdUnitJSBridge.this).evaluateJavascript(val$json.getString("command"), null);
_L1:
        invokeJSCallback(val$callbackID, new Object[] {
            Boolean.TRUE
        });
        return;
        try
        {
            TJAdUnitJSBridge.access$400(TJAdUnitJSBridge.this).loadUrl((new StringBuilder()).append("javascript:").append(val$json.getString("command")).toString());
        }
        catch (Exception exception)
        {
            invokeJSCallback(val$callbackID, new Object[] {
                Boolean.FALSE
            });
            return;
        }
          goto _L1
    }

    ()
    {
        this$0 = final_tjadunitjsbridge;
        val$json = jsonobject;
        val$callbackID = String.this;
        super();
    }
}
