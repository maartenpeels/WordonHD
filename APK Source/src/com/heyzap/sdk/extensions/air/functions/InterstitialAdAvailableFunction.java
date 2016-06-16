// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.heyzap.sdk.ads.InterstitialAd;
import com.heyzap.sdk.extensions.air.HeyzapExtension;

public class InterstitialAdAvailableFunction
    implements FREFunction
{

    private static String TAG = "InterstitialAdAvailableFunction";

    public InterstitialAdAvailableFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (afreobject == null) goto _L2; else goto _L1
_L1:
        if (afreobject.length != 0) goto _L3; else goto _L2
_L2:
        frecontext = InterstitialAd.isAvailable();
_L5:
        return FREObject.newObject(frecontext.booleanValue());
_L3:
        frecontext = InterstitialAd.isAvailable(afreobject[0].getAsString());
        if (true) goto _L5; else goto _L4
_L4:
        frecontext;
        HeyzapExtension.log(frecontext);
        return null;
    }

}
