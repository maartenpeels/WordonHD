// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;


// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtension, HeyzapExtensionContext

public class HeyzapAdDisplayListener
    implements com.heyzap.sdk.ads.HeyzapAds.OnStatusListener, com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener
{

    static final String TAG = "LOGGING";
    private String contextType;

    public HeyzapAdDisplayListener(String s)
    {
        contextType = s;
    }

    public void dispatchEvent(String s, String s1)
    {
        HeyzapExtensionContext heyzapextensioncontext;
        if (s1 == null)
        {
            s1 = "";
        }
        heyzapextensioncontext = HeyzapExtension.getContext(contextType);
        if (heyzapextensioncontext != null)
        {
            heyzapextensioncontext.dispatchStatusEventAsync(s, s1);
        }
    }

    public void onAudioFinished()
    {
        dispatchEvent("audio_finished", null);
    }

    public void onAudioStarted()
    {
        dispatchEvent("audio_started", null);
    }

    public void onAvailable(String s)
    {
        dispatchEvent("available", s);
    }

    public void onClick(String s)
    {
        dispatchEvent("click", s);
    }

    public void onComplete(String s)
    {
        dispatchEvent("incentive_completed", s);
    }

    public void onFailedToFetch(String s)
    {
        dispatchEvent("fetch_failed", s);
    }

    public void onFailedToShow(String s)
    {
        dispatchEvent("failed", s);
    }

    public void onHide(String s)
    {
        dispatchEvent("hide", s);
    }

    public void onIncomplete(String s)
    {
        dispatchEvent("incentive_incomplete", s);
    }

    public void onShow(String s)
    {
        dispatchEvent("show", s);
    }
}
