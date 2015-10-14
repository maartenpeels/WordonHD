// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.heyzap.house.Manager;
import com.heyzap.internal.Constants;
import com.heyzap.internal.DeveloperErrorMessages;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.MediationManager;
import com.heyzap.mediation.config.MediationConfigLoader;
import com.heyzap.sdk.mediation.adapter.ChartboostAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapInterstitialActivity, HeyzapVideoActivity, MediationTestActivity

public class HeyzapAds
{
    public static class AdsConfig
    {

        public int flags;
        public String publisherId;
        public Long startTime;
        public String store;

        public AdsConfig()
        {
            store = "google";
        }
    }

    public static interface OnIncentiveResultListener
    {

        public abstract void onComplete(String s);

        public abstract void onIncomplete(String s);
    }

    public static interface OnStatusListener
    {

        public abstract void onAudioFinished();

        public abstract void onAudioStarted();

        public abstract void onAvailable(String s);

        public abstract void onClick(String s);

        public abstract void onFailedToFetch(String s);

        public abstract void onFailedToShow(String s);

        public abstract void onHide(String s);

        public abstract void onShow(String s);
    }


    public static final int AMAZON = 4;
    private static final int DISABLE_ALL = 32;
    public static final int DISABLE_AUTOMATIC_FETCH = 1;
    public static final int DISABLE_FIRST_AUTOMATIC_FETCH = 8;
    public static final int DISABLE_MEDIATION = 16;
    public static final int INSTALL_TRACKING_ONLY = 2;
    public static final int NONE = 0;
    public static final AdsConfig config = new AdsConfig();
    public static String framework = null;
    static AtomicReference initializationFuture = new AtomicReference();
    private static boolean intentionallyDisabled = false;
    public static String mediator = null;
    public static final int minimumSdkVersion = 9;

    private HeyzapAds()
    {
    }

    public static boolean assertStarted()
    {
        if (!hasStarted().booleanValue())
        {
            if (intentionallyDisabled)
            {
                return false;
            } else
            {
                Log.w("Heyzap", "Heyzap needs to be started. Call HeyzapAds.start('<publisher_id>', activity) from either the onCreate or onResume methods in your Activity.");
                return false;
            }
        } else
        {
            return true;
        }
    }

    public static void changeActivity(Activity activity)
    {
        MediationManager.getInstance().setRecentActivity(activity);
    }

    public static void changeServer(String s)
    {
        Manager.AD_SERVER = s;
    }

    public static int getFlags()
    {
        return config.flags;
    }

    public static String getVersion()
    {
        return "8.0.7";
    }

    public static Boolean hasStarted()
    {
        if (intentionallyDisabled)
        {
            return Boolean.valueOf(false);
        }
        SettableFuture settablefuture = (SettableFuture)initializationFuture.get();
        boolean flag;
        if (settablefuture != null && settablefuture.isDone())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    private static void internalStart(String s, Context context, int i, OnStatusListener onstatuslistener)
    {
        if (!initializationFuture.compareAndSet(null, SettableFuture.create()))
        {
            break MISSING_BLOCK_LABEL_408;
        }
        config.flags = i;
        config.startTime = Long.valueOf(System.currentTimeMillis());
        if ((i & 0x20) > 0)
        {
            try
            {
                Log.d("Heyzap", "Heyzap is disabled and has not started.");
                intentionallyDisabled = true;
                ((SettableFuture)initializationFuture.get()).set(Boolean.valueOf(false));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e("Heyzap", String.format("Heyzap encountered a runtime exception and is now disabled. Error: %s", new Object[] {
                    s.getMessage()
                }));
            }
            break MISSING_BLOCK_LABEL_152;
        }
        if (!Utils.activityExistsInPackage((Activity)context, com/heyzap/sdk/ads/HeyzapInterstitialActivity).booleanValue() || !Utils.activityExistsInPackage((Activity)context, com/heyzap/sdk/ads/HeyzapVideoActivity).booleanValue())
        {
            Log.e("Heyzap", "Heyzap not started! You must add the following activities to your AndroidManifest.xml application tag: <activity android:name=\"com.heyzap.sdk.ads.HeyzapInterstitialActivity\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" /><activity android:name=\"com.heyzap.sdk.ads.HeyzapVideoActivity\" android:screenOrientation=\"landscape\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" />");
            intentionallyDisabled = true;
            ((SettableFuture)initializationFuture.get()).set(Boolean.valueOf(false));
            return;
        }
        break MISSING_BLOCK_LABEL_165;
        intentionallyDisabled = true;
        initializationFuture.set(null);
        throw s;
        if (!Utils.packageHasPermissions((Activity)context, new ArrayList(Arrays.asList(Constants.REQUIRED_PERMISSIONS))).booleanValue())
        {
            Log.e("Heyzap", "Heyzap not started! You must add the following permissions to your AndroidManifest.xml <uses-permission android:name=\"android.permission.INTERNET\" /><uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />");
            intentionallyDisabled = true;
            ((SettableFuture)initializationFuture.get()).set(Boolean.valueOf(false));
            return;
        }
        if (android.os.Build.VERSION.SDK_INT < Constants.MINIMUM_SUPPORTED_SDK_VERSION)
        {
            Log.e("Heyzap", DeveloperErrorMessages.UNSUPPORTED_ANDROID_SDK_VERSION);
            intentionallyDisabled = true;
            ((SettableFuture)initializationFuture.get()).set(Boolean.valueOf(false));
            return;
        }
        if (!Utils.packageHasReceiver((Activity)context, Constants.NEEDED_RECEIVER).booleanValue())
        {
            Log.w("Heyzap", "Heyzap could not find the install broadcast receiver. You may be sacrificing revenue!. Add this to your AndroidManifest.xml: <receiver android:name=\"com.heyzap.sdk.ads.PackageAddedReceiver\"><intent-filter><data android:scheme=\"package\"/><action android:name=\"android.intent.action.PACKAGE_ADDED\"/></intent-filter></receiver>");
        }
        if (!Utils.probablyHasGooglePlayServices((Activity)context).booleanValue())
        {
            Log.w("Heyzap", "Google Play Services does not appear to be present. This may reduce your revenue! Find out more here: http://developer.android.com/google/play-services/setup.html");
        }
        Manager.applicationContext = context.getApplicationContext();
        Utils.load(context);
        Logger.init(context);
        if ((i & 4) == 4)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        if (!Utils.isAmazon())
        {
            break MISSING_BLOCK_LABEL_343;
        }
        config.store = "amazon";
        config.publisherId = s;
        if (onstatuslistener == null)
        {
            break MISSING_BLOCK_LABEL_384;
        }
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, onstatuslistener);
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.VIDEO, onstatuslistener);
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, onstatuslistener);
        MediationManager.getInstance().start(context);
        ((SettableFuture)initializationFuture.get()).set(Boolean.valueOf(true));
    }

    public static boolean onBackPressed()
    {
        if (hasStarted().booleanValue() && MediationManager.getInstance().getConfigLoader().isOnBoard("chartboost"))
        {
            return (new ChartboostAdapter()).onBackPressed();
        } else
        {
            return false;
        }
    }

    public static void setFlags(int i)
    {
        Manager.getInstance().setFlags(i);
    }

    public static void setOnIncentiveResultListener(OnIncentiveResultListener onincentiveresultlistener)
    {
        MediationManager.getInstance().setOnIncentiveResultListener(onincentiveresultlistener);
    }

    public static void setOnStatusListener(OnStatusListener onstatuslistener)
    {
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, onstatuslistener);
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.VIDEO, onstatuslistener);
        MediationManager.getInstance().setOnStatusListener(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, onstatuslistener);
    }

    public static void shutdown()
    {
        intentionallyDisabled = true;
    }

    public static void slowClose(Boolean boolean1)
    {
        Manager.SLOW_CLOSE = boolean1;
    }

    public static void start(String s, Activity activity)
    {
        start(s, activity, 0, null);
    }

    public static void start(String s, Activity activity, int i)
    {
        start(s, activity, i, null);
    }

    public static void start(String s, Activity activity, int i, OnStatusListener onstatuslistener)
    {
        internalStart(s, activity, i, onstatuslistener);
    }

    public static void start(String s, Context context, int i, OnStatusListener onstatuslistener)
    {
        if ((i & 0x10) == 0)
        {
            Log.w("Heyzap", "Heyzap was not successfully started: Context is not an activity, and flag DISABLE_MEDIATION not set.");
            return;
        } else
        {
            internalStart(s, context.getApplicationContext(), i, onstatuslistener);
            return;
        }
    }

    public static void startTestActivity(Context context)
    {
        if (!Utils.activityExistsInPackage((Activity)context, com/heyzap/sdk/ads/MediationTestActivity).booleanValue())
        {
            Log.e("Heyzap", "You need to add the test activity manifest to your AndroidManifest.xml: <activity android:name=\"com.heyzap.sdk.ads.MediationTestActivity\" />");
            return;
        } else
        {
            context.startActivity(new Intent(context, com/heyzap/sdk/ads/MediationTestActivity));
            return;
        }
    }

    static 
    {
        intentionallyDisabled = false;
    }
}
