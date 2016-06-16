// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.app.Activity;
import com.heyzap.internal.Constants;
import com.heyzap.internal.Logger;
import com.heyzap.mediation.MediationManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapAds

public class IncentivizedAd
{

    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static final ArrayList CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[] {
        "video", "interstitial_video"
    }));
    private static volatile HashMap ads = new HashMap();
    private static Integer campaignId = Integer.valueOf(0);
    private static Integer creativeId = Integer.valueOf(0);
    private static String creativeType = null;
    private static Boolean debugEnabled = Boolean.valueOf(false);
    private static long lastDisplayTimeMillis = 0L;
    private static volatile HashMap loadingAds = new HashMap();
    private static long minimumDisplayIntervalMillis = 5000L;
    private static String userIdentifier = null;

    private IncentivizedAd()
    {
    }

    public static void display(Activity activity)
    {
        display(activity, Constants.DEFAULT_TAG);
    }

    public static void display(Activity activity, String s)
    {
        display(activity, s, MediationManager.getInstance());
    }

    static void display(Activity activity, String s, MediationManager mediationmanager)
    {
        if (!HeyzapAds.assertStarted())
        {
            return;
        } else
        {
            mediationmanager.display(activity, AD_UNIT, s);
            return;
        }
    }

    public static void fetch()
    {
        fetch(Constants.DEFAULT_TAG);
    }

    public static void fetch(String s)
    {
        fetch(s, MediationManager.getInstance());
    }

    static void fetch(String s, MediationManager mediationmanager)
    {
        if (!HeyzapAds.assertStarted())
        {
            return;
        } else
        {
            mediationmanager.fetch(AD_UNIT, s);
            return;
        }
    }

    public static Boolean isAvailable()
    {
        return isAvailable(Constants.DEFAULT_TAG);
    }

    public static Boolean isAvailable(String s)
    {
        if (!HeyzapAds.assertStarted())
        {
            return Boolean.valueOf(false);
        } else
        {
            return Boolean.valueOf(MediationManager.getInstance().isAvailable(AD_UNIT, s));
        }
    }

    public static void setCampaignId(int i)
    {
        campaignId = Integer.valueOf(i);
    }

    public static void setCreativeId(int i)
    {
        creativeId = Integer.valueOf(i);
    }

    public static void setOnIncentiveResultListener(HeyzapAds.OnIncentiveResultListener onincentiveresultlistener)
    {
        MediationManager.getInstance().setOnIncentiveResultListener(onincentiveresultlistener);
    }

    public static void setOnStatusListener(HeyzapAds.OnStatusListener onstatuslistener)
    {
        try
        {
            MediationManager.getInstance().setOnStatusListener(AD_UNIT, onstatuslistener);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (HeyzapAds.OnStatusListener onstatuslistener)
        {
            Logger.trace(onstatuslistener);
        }
    }

    public static void setTargetCreativeType(String s)
    {
        creativeType = s;
    }

    public static void setUserIdentifier(String s)
    {
        if (s != null && s.trim().equals(""))
        {
            s = null;
        }
        userIdentifier = s;
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.INCENTIVIZED;
    }
}
