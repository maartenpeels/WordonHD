// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;


// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtensionContext, InterstitialContext, VideoContext, IncentivizedContext

public static class 
{

    public static HeyzapExtensionContext build(String s)
    {
        Object obj = null;
        if (s.equals("interstitial"))
        {
            obj = new InterstitialContext(s);
        }
        if (s.equals("video"))
        {
            obj = new VideoContext(s);
        }
        if (s.equals("incentivized"))
        {
            obj = new IncentivizedContext(s);
        }
        if (s.equals("main"))
        {
            obj = new HeyzapExtensionContext(s);
        }
        return ((HeyzapExtensionContext) (obj));
    }

    public ()
    {
    }
}
