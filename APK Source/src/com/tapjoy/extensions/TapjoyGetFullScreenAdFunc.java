// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyGetFullScreenAdNotifier

public class TapjoyGetFullScreenAdFunc
    implements FREFunction
{

    public TapjoyGetFullScreenAdFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        afreobject = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && afreobject != null)
        {
            afreobject.getFullScreenAd(new TapjoyGetFullScreenAdNotifier(frecontext));
        }
        return null;
    }
}
