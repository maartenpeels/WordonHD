// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TJEvent;
import com.tapjoy.TJEventManager;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoyEnableEventPreloadFunc
    implements FREFunction
{

    public TapjoyEnableEventPreloadFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyConnect.getTapjoyConnectInstance();
        String s = ExtensionUtils.getString(afreobject[0]);
        boolean flag = ExtensionUtils.getBoolean(afreobject[1]);
        if (frecontext != null && s != null)
        {
            frecontext = ExtensionUtils.getAndroidGuid(s);
            if (frecontext != null)
            {
                TJEventManager.get(frecontext).enablePreload(flag);
            }
        }
        return null;
    }
}
