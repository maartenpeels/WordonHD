// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoySendIAPEventFunc
    implements FREFunction
{

    public TapjoySendIAPEventFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && afreobject.length >= 1)
        {
            frecontext.sendIAPEvent(ExtensionUtils.getString(afreobject[0]), ExtensionUtils.getFloat(afreobject[1]), ExtensionUtils.getInt(afreobject[2]), ExtensionUtils.getString(afreobject[3]));
        }
        return null;
    }
}
