// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.heyzap.sdk.ads.HeyzapAds;
import com.heyzap.sdk.ads.IncentivizedAd;
import com.heyzap.sdk.ads.InterstitialAd;
import com.heyzap.sdk.ads.VideoAd;
import com.heyzap.sdk.extensions.air.HeyzapAdDisplayListener;
import com.heyzap.sdk.extensions.air.HeyzapExtension;

public class StartAdsFunction
    implements FREFunction
{

    private static String TAG = "StartAdsFunction";

    public StartAdsFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            String s = afreobject[0].getAsString();
            int i = afreobject[1].getAsInt();
            HeyzapAds.framework = "air";
            HeyzapAds.start(s, frecontext.getActivity(), i);
            InterstitialAd.setOnStatusListener(new HeyzapAdDisplayListener("interstitial"));
            VideoAd.setOnStatusListener(new HeyzapAdDisplayListener("video"));
            frecontext = new HeyzapAdDisplayListener("incentivized");
            IncentivizedAd.setOnStatusListener(frecontext);
            IncentivizedAd.setOnIncentiveResultListener(frecontext);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            HeyzapExtension.log(frecontext);
        }
        return null;
    }

}
