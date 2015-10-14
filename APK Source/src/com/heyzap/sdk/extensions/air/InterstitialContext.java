// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;

import com.heyzap.sdk.extensions.air.functions.FetchInterstitialAdFunction;
import com.heyzap.sdk.extensions.air.functions.InterstitialAdAvailableFunction;
import com.heyzap.sdk.extensions.air.functions.ShowInterstitialAdFunction;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtensionContext

public class InterstitialContext extends HeyzapExtensionContext
{

    public static final String TYPE = "interstitial";

    public InterstitialContext(String s)
    {
        super(s);
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("show", new ShowInterstitialAdFunction());
        hashmap.put("fetch", new FetchInterstitialAdFunction());
        hashmap.put("available", new InterstitialAdAvailableFunction());
        return hashmap;
    }
}
