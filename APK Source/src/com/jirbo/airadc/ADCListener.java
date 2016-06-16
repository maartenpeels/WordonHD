// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdAvailabilityListener;
import com.jirbo.adcolony.AdColonyAdListener;
import com.jirbo.adcolony.AdColonyV4VCListener;
import com.jirbo.adcolony.AdColonyV4VCReward;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

public class ADCListener
    implements AdColonyAdListener, AdColonyV4VCListener, AdColonyAdAvailabilityListener
{

    AirADCContext ctx;

    public ADCListener(AirADCContext airadccontext)
    {
        ctx = airadccontext;
    }

    public void onAdColonyAdAttemptFinished(AdColonyAd adcolonyad)
    {
        ctx.dispatchStatusEventAsync((new StringBuilder()).append("AdFinished|").append(adcolonyad.shown()).toString(), "AdColony");
        ctx.getClass();
        Log.i("AdColonyANE", "AdFinished");
    }

    public void onAdColonyAdAvailabilityChange(boolean flag, String s)
    {
        ctx.dispatchStatusEventAsync((new StringBuilder()).append("AdAvailabilityChange|").append(flag).append("|").append(s).toString(), "AdColony");
        ctx.getClass();
        Log.i("AdColonyANE", "AdAvailabilityChange");
    }

    public void onAdColonyAdStarted(AdColonyAd adcolonyad)
    {
        ctx.dispatchStatusEventAsync("AdStarted", "AdColony");
        ctx.getClass();
        Log.i("AdColonyANE", "AdStarted");
    }

    public void onAdColonyV4VCReward(AdColonyV4VCReward adcolonyv4vcreward)
    {
        adcolonyv4vcreward = (new StringBuilder()).append("V4VCReward|").append(adcolonyv4vcreward.success()).append("|").append(adcolonyv4vcreward.amount()).append("|").append(adcolonyv4vcreward.name()).toString();
        ctx.dispatchStatusEventAsync(adcolonyv4vcreward, "AdColony");
        ctx.getClass();
        Log.i("AdColonyANE", "V4VCReward");
    }
}
