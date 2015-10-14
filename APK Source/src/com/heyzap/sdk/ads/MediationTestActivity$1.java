// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.sdk.mediation.testactivity.NetworkStatus;
import java.util.TreeMap;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class rkStatus extends TreeMap
{

    final MediationTestActivity this$0;

    rkStatus()
    {
        this$0 = MediationTestActivity.this;
        super();
        put("adcolony", new NetworkStatus("AdColony"));
        put("admob", new NetworkStatus("AdMob"));
        put("applovin", new NetworkStatus("AppLovin"));
        put("chartboost", new NetworkStatus("Chartboost"));
        put("facebook", new NetworkStatus("Facebook Audience Network"));
        put("unityads", new NetworkStatus("UnityAds"));
        put("vungle", new NetworkStatus("Vungle"));
    }
}
