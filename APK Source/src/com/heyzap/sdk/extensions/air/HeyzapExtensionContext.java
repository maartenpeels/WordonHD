// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;

import com.adobe.fre.FREContext;
import com.heyzap.sdk.extensions.air.functions.ShowMediationTestSuite;
import com.heyzap.sdk.extensions.air.functions.StartAdsFunction;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtension, InterstitialContext, VideoContext, IncentivizedContext

public class HeyzapExtensionContext extends FREContext
{
    public static class Factory
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

        public Factory()
        {
        }
    }


    public static final String AVAILABLE_FUNCTION_NAME = "available";
    public static final String FETCH_FUNCTION_NAME = "fetch";
    public static final String HIDE_FUNCTION_NAME = "hide";
    public static final String SHOW_FUNCTION_NAME = "show";
    public static final String TYPE = "main";
    private String contextType;

    public HeyzapExtensionContext(String s)
    {
        contextType = s;
    }

    public void dispose()
    {
        if (HeyzapExtension.contexts != null)
        {
            HeyzapExtension.contexts.remove(contextType);
        }
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("start", new StartAdsFunction());
        hashmap.put("showMediationTestSuite", new ShowMediationTestSuite());
        return hashmap;
    }
}
