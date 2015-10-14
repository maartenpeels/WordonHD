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

public class TapjoyShowEventFunc
    implements FREFunction
{

    public TapjoyShowEventFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (TapjoyConnect.getTapjoyConnectInstance() != null)
        {
            frecontext = ExtensionUtils.getAndroidGuid(ExtensionUtils.getString(afreobject[0]));
            if (frecontext != null)
            {
                TJEventManager.get(frecontext).showContent();
            }
        }
        return null;
    }
}
