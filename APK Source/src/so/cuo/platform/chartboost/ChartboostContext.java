// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost;

import com.adobe.fre.FREContext;
import java.util.HashMap;
import java.util.Map;
import so.cuo.platform.chartboost.fun.CacheInterstitial;
import so.cuo.platform.chartboost.fun.CacheMoreApp;
import so.cuo.platform.chartboost.fun.CacheRewardedVideo;
import so.cuo.platform.chartboost.fun.HasRewardedVideo;
import so.cuo.platform.chartboost.fun.InitChartboost;
import so.cuo.platform.chartboost.fun.IsInterstitialReady;
import so.cuo.platform.chartboost.fun.IsMoreAppReady;
import so.cuo.platform.chartboost.fun.ShowInterstitial;
import so.cuo.platform.chartboost.fun.ShowMoreApp;
import so.cuo.platform.chartboost.fun.ShowRewardedVideo;

public class ChartboostContext extends FREContext
{

    public ChartboostContext()
    {
    }

    public void dispose()
    {
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("cb_init", new InitChartboost());
        hashmap.put("cb_cacheInterstitial", new CacheInterstitial());
        hashmap.put("cb_hasInterstitial", new IsInterstitialReady());
        hashmap.put("cb_showInterstitial", new ShowInterstitial());
        hashmap.put("cb_cacheMoreApps", new CacheMoreApp());
        hashmap.put("cb_hasMoreApps", new IsMoreAppReady());
        hashmap.put("cb_showMoreApps", new ShowMoreApp());
        hashmap.put("cb_cacheRewardedVideo", new CacheRewardedVideo());
        hashmap.put("cb_hasRewardedVideo", new HasRewardedVideo());
        hashmap.put("cb_showRewardedVideo", new ShowRewardedVideo());
        return hashmap;
    }

    public void initialize()
    {
    }
}
