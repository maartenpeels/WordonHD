// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils, TapjoyGetFullScreenAdNotifier

public class TapjoyGetFullScreenAdWithCurrencyIDFunc
    implements FREFunction
{

    public TapjoyGetFullScreenAdWithCurrencyIDFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        TapjoyConnect tapjoyconnect = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && tapjoyconnect != null && afreobject.length >= 1)
        {
            tapjoyconnect.getFullScreenAdWithCurrencyID(ExtensionUtils.getString(afreobject[0]), new TapjoyGetFullScreenAdNotifier(frecontext));
        }
        return null;
    }
}
