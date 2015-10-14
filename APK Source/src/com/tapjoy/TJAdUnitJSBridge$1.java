// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.lang.reflect.Method;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJWebViewJSInterfaceNotifier, TJAdUnitJSBridge

class this._cls0
    implements TJWebViewJSInterfaceNotifier
{

    final TJAdUnitJSBridge this$0;

    public void dispatchMethod(String s, JSONObject jsonobject)
    {
        if (!TJAdUnitJSBridge.access$000(TJAdUnitJSBridge.this)) goto _L2; else goto _L1
_L1:
        String s1 = null;
        String s2 = jsonobject.getString("callbackId");
        s1 = s2;
_L4:
        jsonobject = jsonobject.getJSONObject("data");
        com/tapjoy/TJAdUnitJSBridge.getMethod(s, new Class[] {
            org/json/JSONObject, java/lang/String
        }).invoke(TJAdUnitJSBridge.access$100(TJAdUnitJSBridge.this), new Object[] {
            jsonobject, s1
        });
_L2:
        return;
        s;
        s.printStackTrace();
        invokeJSCallback(s1, new Object[] {
            Boolean.FALSE
        });
        return;
        Exception exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    eNotifier()
    {
        this$0 = TJAdUnitJSBridge.this;
        super();
    }
}
