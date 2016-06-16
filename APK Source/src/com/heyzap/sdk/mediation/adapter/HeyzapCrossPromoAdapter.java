// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.Constants;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

public class HeyzapCrossPromoAdapter extends HeyzapAdapter
{

    private static com.heyzap.internal.Constants.AuctionType AUCTION_TYPE;
    private static int CREATIVE_TYPES;

    public HeyzapCrossPromoAdapter()
    {
    }

    public AdRequest createRequest()
    {
        AdRequest adrequest = new AdRequest(CREATIVE_TYPES, Constants.DEFAULT_TAG);
        adrequest.setAuctionType(AUCTION_TYPE);
        return adrequest;
    }

    public String getCanonicalName()
    {
        return "heyzap_cross_promo";
    }

    public String getMarketingName()
    {
        return "Heyzap Cross Promo";
    }

    static 
    {
        CREATIVE_TYPES = com.heyzap.internal.Constants.CreativeType.INTERSTITIAL | com.heyzap.internal.Constants.CreativeType.VIDEO;
        AUCTION_TYPE = com.heyzap.internal.Constants.AuctionType.CROSS_PROMO;
    }
}
