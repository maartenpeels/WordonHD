// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.heyzap.house.request:
//            FetchRequest, AdRequest

public static class 
{

    public static FetchRequest build(AdRequest adrequest)
    {
        FetchRequest fetchrequest = new FetchRequest(adrequest.getCreativeTypes(), adrequest.getTag(), Boolean.valueOf(adrequest.isImmediate()), adrequest);
        if (adrequest.getDebuggable().booleanValue())
        {
            fetchrequest.setDebugEnabled(Boolean.valueOf(true));
            fetchrequest.setRandomStrategyEnabled(Boolean.valueOf(true));
        }
        HashMap hashmap = new HashMap();
        if (adrequest.getAuctionType() != null)
        {
            hashmap.put("auction_type", adrequest.getAuctionType().toString().toLowerCase(Locale.US));
        }
        if (adrequest.getCreativeId() != null)
        {
            hashmap.put("creative_id", String.valueOf(adrequest.getCreativeId()));
        }
        fetchrequest.setAdditionalParams(hashmap);
        return fetchrequest;
    }

    public ()
    {
    }
}
