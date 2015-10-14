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

public class TapjoySendSegmentationParamsFunc
    implements FREFunction
{

    public TapjoySendSegmentationParamsFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyConnect.getTapjoyConnectInstance();
        afreobject = ExtensionUtils.getString(afreobject[0]);
        if (afreobject != null && frecontext != null)
        {
            afreobject = ExtensionUtils.getReferenceDictionary(afreobject, false);
            if (afreobject != null)
            {
                frecontext.sendSegmentationParams(afreobject);
            }
        }
        return null;
    }
}
