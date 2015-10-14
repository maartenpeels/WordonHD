// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyRequestTapjoyConnectFunc, TapjoyEnablePaidAppWithActionIDFunc, TapjoyActionCompleteFunc, TapjoySetUserIDFunc, 
//            TapjoyGetUserIDFunc, TapjoyGetAppIDFunc, TapjoySetTransitionEffectFunc, TapjoyEnableLoggingFunc, 
//            TapjoyAppPauseFunc, TapjoyAppResumeFunc, TapjoyGetTapPointsFunc, TapjoySpendTapPointsFunc, 
//            TapjoyAwardTapPointsFunc, TapjoySetCurrencyMultiplierFunc, TapjoyGetCurrencyMultiplierFunc, TapjoyShowOffersFunc, 
//            TapjoyShowOffersWithCurrencyIDFunc, TapjoyCacheVideoAdsFunc, TapjoySetVideoCacheCountFunc, TapjoyGetDisplayAdFunc, 
//            TapjoyGetDisplayAdWithCurrencyIDFunc, TapjoySetDisplayAdSizeFunc, TapjoyEnableDisplayAdAutoRefreshFunc, TapjoyGetDisplayAdHtmlStringFunc, 
//            TapjoyGetFullScreenAdFunc, TapjoyGetFullScreenAdWithCurrencyIDFunc, TapjoyShowFullScreenAdFunc, TapjoyIsRetinaFunc, 
//            TapjoyCreateEventFunc, TapjoySendEventFunc, TapjoyShowEventFunc, TapjoyEnableEventAutoPresentFunc, 
//            TapjoyEnableEventPreloadFunc, TapjoyLoadResourceFunc, TapjoyLoadMraidFunc, TapjoySendSegmentationParamsFunc, 
//            TapjoySetKeyValueInDictionaryFunc, TapjoySetDictionaryInDictionaryFunc, TapjoySendIAPEventFunc, TapjoyEventRequestCompletedFunc, 
//            TapjoyEventRequestCancelledFunc

public class TapjoyExtensionContext extends FREContext
{

    private static TapjoyExtensionContext mContext = null;

    public TapjoyExtensionContext()
    {
    }

    public static TapjoyExtensionContext getContext()
    {
        return mContext;
    }

    public static void setContext(TapjoyExtensionContext tapjoyextensioncontext)
    {
        mContext = tapjoyextensioncontext;
    }

    public void dispose()
    {
        mContext = null;
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("requestTapjoyConnect", new TapjoyRequestTapjoyConnectFunc());
        hashmap.put("enablePaidAppWithActionID", new TapjoyEnablePaidAppWithActionIDFunc());
        hashmap.put("actionComplete", new TapjoyActionCompleteFunc());
        hashmap.put("setUserID", new TapjoySetUserIDFunc());
        hashmap.put("getUserID", new TapjoyGetUserIDFunc());
        hashmap.put("getAppID", new TapjoyGetAppIDFunc());
        hashmap.put("setTransitionEffect", new TapjoySetTransitionEffectFunc());
        hashmap.put("enableLogging", new TapjoyEnableLoggingFunc());
        hashmap.put("appPause", new TapjoyAppPauseFunc());
        hashmap.put("appResume", new TapjoyAppResumeFunc());
        hashmap.put("getTapPoints", new TapjoyGetTapPointsFunc());
        hashmap.put("spendTapPoints", new TapjoySpendTapPointsFunc());
        hashmap.put("awardTapPoints", new TapjoyAwardTapPointsFunc());
        hashmap.put("setCurrencyMultiplier", new TapjoySetCurrencyMultiplierFunc());
        hashmap.put("getCurrencyMultiplier", new TapjoyGetCurrencyMultiplierFunc());
        hashmap.put("showOffers", new TapjoyShowOffersFunc());
        hashmap.put("showOffersWithCurrencyID", new TapjoyShowOffersWithCurrencyIDFunc());
        hashmap.put("cacheVideoAds", new TapjoyCacheVideoAdsFunc());
        hashmap.put("setVideoCacheCount", new TapjoySetVideoCacheCountFunc());
        hashmap.put("getDisplayAd", new TapjoyGetDisplayAdFunc());
        hashmap.put("getDisplayAdWithCurrencyID", new TapjoyGetDisplayAdWithCurrencyIDFunc());
        hashmap.put("setDisplayAdSize", new TapjoySetDisplayAdSizeFunc());
        hashmap.put("enableDisplayAdAutoRefresh", new TapjoyEnableDisplayAdAutoRefreshFunc());
        hashmap.put("getDisplayAdHtmlString", new TapjoyGetDisplayAdHtmlStringFunc());
        hashmap.put("getFullScreenAd", new TapjoyGetFullScreenAdFunc());
        hashmap.put("getFullScreenAdWithCurrencyID", new TapjoyGetFullScreenAdWithCurrencyIDFunc());
        hashmap.put("showFullScreenAd", new TapjoyShowFullScreenAdFunc());
        hashmap.put("isRetina", new TapjoyIsRetinaFunc());
        hashmap.put("createEvent", new TapjoyCreateEventFunc());
        hashmap.put("sendEvent", new TapjoySendEventFunc());
        hashmap.put("showEvent", new TapjoyShowEventFunc());
        hashmap.put("enableEventAutoPresent", new TapjoyEnableEventAutoPresentFunc());
        hashmap.put("enableEventPreload", new TapjoyEnableEventPreloadFunc());
        hashmap.put("loadExternalResource", new TapjoyLoadResourceFunc());
        hashmap.put("loadMraidJs", new TapjoyLoadMraidFunc());
        hashmap.put("sendSegmentationParams", new TapjoySendSegmentationParamsFunc());
        hashmap.put("setKeyValueInDictionary", new TapjoySetKeyValueInDictionaryFunc());
        hashmap.put("setDictionaryInDictionary", new TapjoySetDictionaryInDictionaryFunc());
        hashmap.put("sendIAPEvent", new TapjoySendIAPEventFunc());
        hashmap.put("eventRequestCompleted", new TapjoyEventRequestCompletedFunc());
        hashmap.put("eventRequestCancelled", new TapjoyEventRequestCancelledFunc());
        return hashmap;
    }

}
