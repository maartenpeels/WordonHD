// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import java.io.Serializable;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            VideoModel

public class requiredDownloadPercent
    implements Cloneable, Serializable
{

    public Boolean allowClick;
    public Boolean allowHide;
    public Boolean allowSkip;
    public Boolean allowStreamingFallback;
    public Boolean forceStreaming;
    public Integer lockoutTime;
    public Boolean postRollInterstitial;
    public Double requiredDownloadPercent;
    public Boolean showCountdown;
    final VideoModel this$0;

    public Object clone()
        throws CloneNotSupportedException
    {
        return super.clone();
    }

    public void setOptions(JSONObject jsonobject)
    {
        lockoutTime = Integer.valueOf(jsonobject.optInt("lockout_time", lockoutTime.intValue()));
        allowSkip = Boolean.valueOf(jsonobject.optBoolean("allow_skip", allowSkip.booleanValue()));
        allowHide = Boolean.valueOf(jsonobject.optBoolean("allow_hide", allowHide.booleanValue()));
        allowClick = Boolean.valueOf(jsonobject.optBoolean("allow_click", allowClick.booleanValue()));
        postRollInterstitial = Boolean.valueOf(jsonobject.optBoolean("post_roll_interstitial", postRollInterstitial.booleanValue()));
        allowStreamingFallback = Boolean.valueOf(jsonobject.optBoolean("allow_streaming_fallback", allowStreamingFallback.booleanValue()));
        forceStreaming = Boolean.valueOf(jsonobject.optBoolean("force_streaming", forceStreaming.booleanValue()));
        showCountdown = Boolean.valueOf(jsonobject.optBoolean("show_countdown", showCountdown.booleanValue()));
        requiredDownloadPercent = Double.valueOf(jsonobject.optDouble("required_download_percent", requiredDownloadPercent.doubleValue()));
    }

    public ()
    {
        this$0 = VideoModel.this;
        super();
        lockoutTime = Integer.valueOf(0);
        allowSkip = Boolean.valueOf(true);
        allowHide = Boolean.valueOf(false);
        allowClick = Boolean.valueOf(true);
        allowStreamingFallback = Boolean.valueOf(false);
        forceStreaming = Boolean.valueOf(false);
        postRollInterstitial = Boolean.valueOf(false);
        showCountdown = Boolean.valueOf(true);
        requiredDownloadPercent = Double.valueOf(100D);
    }
}
