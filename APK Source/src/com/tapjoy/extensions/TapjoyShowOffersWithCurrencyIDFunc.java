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

public class TapjoyShowOffersWithCurrencyIDFunc
    implements FREFunction
{

    public TapjoyShowOffersWithCurrencyIDFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && afreobject.length >= 2)
        {
            frecontext.showOffersWithCurrencyID(ExtensionUtils.getString(afreobject[0]), ExtensionUtils.getBoolean(afreobject[1]));
        }
        return null;
    }
}
