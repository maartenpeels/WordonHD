// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import java.util.Hashtable;

// Referenced classes of package com.tapjoy:
//            TapjoyException, TapjoyConnectCore, TapjoyLog, TapjoyIntegrationException, 
//            TJCOffers, TJPoints, TapjoyFullScreenAd, TapjoyDisplayAd, 
//            TapjoyVideo, TapjoyCache, TapjoyEvent, TJEventOptimizer, 
//            TapjoyConnectNotifier, TapjoyAwardPointsNotifier, TapjoyDisplayAdNotifier, TapjoyFullScreenAdNotifier, 
//            TapjoyNotifier, TapjoyEarnedPointsNotifier, TapjoyViewNotifier, TapjoyVideoNotifier, 
//            TapjoyOffersNotifier, TapjoySpendPointsNotifier

public final class TapjoyConnect
{

    private static final String TAG = "TapjoyConnect";
    private static TapjoyCache tapjoyCache = null;
    private static TapjoyConnect tapjoyConnectInstance = null;
    private static TapjoyDisplayAd tapjoyDisplayAd = null;
    private static TapjoyEvent tapjoyEvent = null;
    private static TapjoyFullScreenAd tapjoyFullScreenAd = null;
    private static TJCOffers tapjoyOffers = null;
    private static TJPoints tapjoyPoints = null;
    private static TapjoyVideo tapjoyVideo = null;

    private TapjoyConnect(Context context, String s, String s1, Hashtable hashtable, TapjoyConnectNotifier tapjoyconnectnotifier)
        throws TapjoyException
    {
        TapjoyConnectCore.requestTapjoyConnect(context, s, s1, hashtable, tapjoyconnectnotifier);
    }

    public static void enableLogging(boolean flag)
    {
        TapjoyLog.enableLogging(flag);
    }

    public static TapjoyConnect getTapjoyConnectInstance()
    {
        if (tapjoyConnectInstance == null)
        {
            Log.e("TapjoyConnect", "----------------------------------------");
            Log.e("TapjoyConnect", "ERROR -- call requestTapjoyConnect before any other Tapjoy methods");
            Log.e("TapjoyConnect", "----------------------------------------");
        }
        return tapjoyConnectInstance;
    }

    public static boolean requestTapjoyConnect(Context context, String s, String s1)
    {
        return requestTapjoyConnect(context, s, s1, null);
    }

    public static boolean requestTapjoyConnect(Context context, String s, String s1, Hashtable hashtable)
    {
        return requestTapjoyConnect(context, s, s1, hashtable, null);
    }

    public static boolean requestTapjoyConnect(Context context, String s, String s1, Hashtable hashtable, TapjoyConnectNotifier tapjoyconnectnotifier)
    {
        TapjoyConnectCore.setSDKType("event");
        try
        {
            tapjoyConnectInstance = new TapjoyConnect(context, s, s1, hashtable, tapjoyconnectnotifier);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("TapjoyConnect", (new StringBuilder()).append("IntegrationException: ").append(context.getMessage()).toString());
            if (tapjoyconnectnotifier != null)
            {
                tapjoyconnectnotifier.connectFail();
            }
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("TapjoyConnect", (new StringBuilder()).append("TapjoyException: ").append(context.getMessage()).toString());
            if (tapjoyconnectnotifier != null)
            {
                tapjoyconnectnotifier.connectFail();
            }
            return false;
        }
        tapjoyOffers = new TJCOffers(context);
        tapjoyPoints = new TJPoints(context);
        tapjoyFullScreenAd = new TapjoyFullScreenAd(context);
        tapjoyDisplayAd = new TapjoyDisplayAd(context);
        tapjoyVideo = new TapjoyVideo(context);
        tapjoyCache = new TapjoyCache(context);
        tapjoyEvent = new TapjoyEvent(context);
        TJEventOptimizer.init(context);
        return true;
    }

    public void actionComplete(String s)
    {
        TapjoyConnectCore.getInstance().actionComplete(s);
    }

    public void appPause()
    {
        TapjoyConnectCore.getInstance().appPause();
        sendShutDownEvent();
    }

    public void appResume()
    {
        TapjoyConnectCore.getInstance().appResume();
    }

    public void awardTapPoints(int i, TapjoyAwardPointsNotifier tapjoyawardpointsnotifier)
    {
        tapjoyPoints.awardTapPoints(i, tapjoyawardpointsnotifier);
    }

    public void cacheVideos()
    {
        tapjoyVideo.cacheVideos();
    }

    public void enableDisplayAdAutoRefresh(boolean flag)
    {
        tapjoyDisplayAd.enableAutoRefresh(flag);
    }

    public void enablePaidAppWithActionID(String s)
    {
        TapjoyConnectCore.getInstance().enablePaidAppWithActionID(s);
    }

    public String getAppID()
    {
        return TapjoyConnectCore.getAppID();
    }

    public float getCurrencyMultiplier()
    {
        return TapjoyConnectCore.getInstance().getCurrencyMultiplier();
    }

    public void getDisplayAd(Activity activity, TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        tapjoyDisplayAd.getDisplayAd(activity, tapjoydisplayadnotifier);
    }

    public void getDisplayAd(TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        tapjoyDisplayAd.getDisplayAd(null, tapjoydisplayadnotifier);
    }

    public void getDisplayAdWithCurrencyID(Activity activity, String s, TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        tapjoyDisplayAd.getDisplayAd(activity, s, tapjoydisplayadnotifier);
    }

    public void getDisplayAdWithCurrencyID(String s, TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        tapjoyDisplayAd.getDisplayAd(null, s, tapjoydisplayadnotifier);
    }

    public void getFullScreenAd(TapjoyFullScreenAdNotifier tapjoyfullscreenadnotifier)
    {
        tapjoyFullScreenAd.getFullScreenAd(tapjoyfullscreenadnotifier);
    }

    public void getFullScreenAdWithCurrencyID(String s, TapjoyFullScreenAdNotifier tapjoyfullscreenadnotifier)
    {
        tapjoyFullScreenAd.getFullScreenAd(s, tapjoyfullscreenadnotifier);
    }

    public void getTapPoints(TapjoyNotifier tapjoynotifier)
    {
        tapjoyPoints.getTapPoints(tapjoynotifier);
    }

    public String getUserID()
    {
        return TapjoyConnectCore.getUserID();
    }

    public void sendIAPEvent(String s, float f, int i, String s1)
    {
        tapjoyEvent.sendIAPEvent(s, f, i, s1);
    }

    public void sendSegmentationParams(Hashtable hashtable)
    {
        TapjoyConnectCore.setSegmentationParams(hashtable);
        TapjoyConnectCore.getInstance().callConnect();
    }

    public void sendShutDownEvent()
    {
        tapjoyEvent.sendShutDownEvent();
    }

    public void setCurrencyMultiplier(float f)
    {
        TapjoyConnectCore.getInstance().setCurrencyMultiplier(f);
    }

    public void setDisplayAdSize(String s)
    {
        tapjoyDisplayAd.setDisplayAdSize(s);
    }

    public void setEarnedPointsNotifier(TapjoyEarnedPointsNotifier tapjoyearnedpointsnotifier)
    {
        tapjoyPoints.setEarnedPointsNotifier(tapjoyearnedpointsnotifier);
    }

    public void setTapjoyViewNotifier(TapjoyViewNotifier tapjoyviewnotifier)
    {
        TapjoyConnectCore.getInstance().setTapjoyViewNotifier(tapjoyviewnotifier);
    }

    public void setUserID(String s)
    {
        TapjoyConnectCore.setUserID(s);
    }

    public void setVideoCacheCount(int i)
    {
        tapjoyVideo.setVideoCacheCount(i);
    }

    public void setVideoNotifier(TapjoyVideoNotifier tapjoyvideonotifier)
    {
        tapjoyVideo.setVideoNotifier(tapjoyvideonotifier);
    }

    public void showFullScreenAd()
    {
        tapjoyFullScreenAd.showFullScreenAd();
    }

    public void showOffers()
    {
        tapjoyOffers.showOffers(null);
    }

    public void showOffers(TapjoyOffersNotifier tapjoyoffersnotifier)
    {
        tapjoyOffers.showOffers(tapjoyoffersnotifier);
    }

    public void showOffersWithCurrencyID(String s, boolean flag)
    {
        tapjoyOffers.showOffersWithCurrencyID(s, flag, null);
    }

    public void showOffersWithCurrencyID(String s, boolean flag, TapjoyOffersNotifier tapjoyoffersnotifier)
    {
        tapjoyOffers.showOffersWithCurrencyID(s, flag, tapjoyoffersnotifier);
    }

    public void spendTapPoints(int i, TapjoySpendPointsNotifier tapjoyspendpointsnotifier)
    {
        tapjoyPoints.spendTapPoints(i, tapjoyspendpointsnotifier);
    }

}
