// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.Constants;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import java.util.EnumSet;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

public class HeyzapVideoAdapter extends HeyzapAdapter
{

    private static com.heyzap.internal.Constants.AuctionType AUCTION_TYPE;
    private static int CREATIVE_TYPES;

    public HeyzapVideoAdapter()
    {
    }

    public AdRequest createRequest()
    {
        AdRequest adrequest = new AdRequest(CREATIVE_TYPES, Constants.DEFAULT_TAG);
        adrequest.setAuctionType(AUCTION_TYPE);
        return adrequest;
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.VIDEO, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
    }

    public String getCanonicalName()
    {
        return "heyzap_video";
    }

    public String getMarketingName()
    {
        return "Heyzap Video";
    }

    public void onInit()
    {
        super.onInit();
        adUnitAliasMap.add(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, com.heyzap.internal.Constants.AdUnit.VIDEO);
        adUnitAliasMap.add(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.VIDEO);
    }

    static 
    {
        CREATIVE_TYPES = com.heyzap.internal.Constants.CreativeType.VIDEO;
        AUCTION_TYPE = com.heyzap.internal.Constants.AuctionType.MONETIZATION;
    }
}
