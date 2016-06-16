// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.app.Activity;
import com.heyzap.internal.Constants;
import com.heyzap.internal.Logger;
import com.heyzap.mediation.MediationManager;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapAds

public class InterstitialAd
{

    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;

    private InterstitialAd()
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
    }

    public static void setCreativeId(int i)
    {
    }

    public static void setOnStatusListener(HeyzapAds.OnStatusListener onstatuslistener)
    {
        if (!HeyzapAds.assertStarted())
        {
            return;
        }
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
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.INTERSTITIAL;
    }
}
