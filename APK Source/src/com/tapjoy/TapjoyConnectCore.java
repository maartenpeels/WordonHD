// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.threatmetrix.TrustDefenderMobile.ProfileNotify;
import com.threatmetrix.TrustDefenderMobile.TrustDefenderMobile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.TreeMap;
import java.util.UUID;
import java.util.Vector;
import org.w3c.dom.Document;

// Referenced classes of package com.tapjoy:
//            TapjoyConstants, TapjoyConnectFlag, TapjoyException, TapjoyIntegrationException, 
//            TapjoyURLConnection, TapjoyLog, TapjoyConnectNotifier, TapjoyUtil, 
//            TapjoyCache, TapjoyDisplayMetricsUtil, TapjoyViewNotifier, TapjoyHttpURLResponse

public class TapjoyConnectCore
{
    public class PPAThread
        implements Runnable
    {

        private Map params;
        final TapjoyConnectCore this$0;

        public void run()
        {
            TapjoyHttpURLResponse tapjoyhttpurlresponse = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("connect?").toString(), params);
            if (tapjoyhttpurlresponse.response != null)
            {
                handlePayPerActionResponse(tapjoyhttpurlresponse.response);
            }
        }

        public PPAThread(Map map)
        {
            this$0 = TapjoyConnectCore.this;
            super();
            params = map;
        }
    }


    private static final String DOCUMENTATION_URL = "http://tech.tapjoy.com";
    public static final int MAX_NUMBER_OF_OFFLINE_LOGS = 50;
    private static final String TAG = "TapjoyConnect";
    protected static boolean adTrackingEnabled;
    protected static String advertisingID = "";
    private static String androidID = "";
    private static String appID = "";
    private static String appVersion = "";
    private static String bridgeVersion = "";
    private static String carrierCountryCode = "";
    private static String carrierName = "";
    private static Hashtable connectFlags;
    private static TapjoyConnectNotifier connectNotifier = null;
    private static String connectionSubType = "";
    private static String connectionType = "";
    private static Context context = null;
    private static float currencyMultiplier = 1.0F;
    private static Vector dependencyClassesRequired;
    private static String deviceCountryCode = "";
    private static String deviceID = "";
    private static String deviceLanguage = "";
    private static boolean deviceLocation = false;
    private static String deviceManufacturer = "";
    private static String deviceModel = "";
    private static String deviceOSVersion = "";
    private static int deviceScreenDensity = 1;
    private static float deviceScreenDensityScale = 1.0F;
    private static int deviceScreenLayoutSize = 1;
    private static String deviceType = "";
    private static String installID = "";
    private static boolean isViewShowing = false;
    private static long lastTimeStamp = 0L;
    private static String libraryVersion = "";
    private static String macAddress = "";
    private static String matchingPackageNames = "";
    private static String mobileCountryCode = "";
    private static String mobileNetworkCode = "";
    private static PackageManager packageManager;
    private static String paidAppActionID = null;
    private static String platformName = "";
    private static String plugin = "native";
    private static String redirectDomain = "";
    private static String sdkType = "";
    private static String secretKey = "";
    private static Hashtable segmentationParams = null;
    private static String sessionID = "";
    private static String sha2DeviceID = "";
    private static boolean shareFacebook = false;
    private static boolean shareGooglePlus = false;
    private static boolean shareLinkedIn = false;
    private static boolean shareTwitter = false;
    private static String storeName = "";
    private static boolean storeView = false;
    private static TapjoyConnectCore tapjoyConnectCore = null;
    private static TapjoyURLConnection tapjoyURLConnection = null;
    private static String threatmetrixSessionID;
    private static String userID = "";
    private static TapjoyViewNotifier viewNotifier = null;
    private boolean appPaused;
    private long elapsed_time;
    private boolean initialized;
    private TrustDefenderMobile profile;
    private Timer timer;

    public TapjoyConnectCore(Context context1)
        throws TapjoyException
    {
        elapsed_time = 0L;
        timer = null;
        appPaused = false;
        initialized = false;
        context = context1;
        tapjoyURLConnection = new TapjoyURLConnection();
        packageManager = context.getPackageManager();
        if (init())
        {
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("URL parameters: ").append(getURLParams()).toString());
            callConnect();
            sendOfflineLogs();
            initialized = true;
        }
_L2:
        return;
        context1;
        Log.e("TapjoyConnect", (new StringBuilder()).append("IntegrationException: ").append(context1.getMessage()).toString());
        if (connectNotifier == null) goto _L2; else goto _L1
_L1:
        connectNotifier.connectFail();
        return;
        context1;
        Log.e("TapjoyConnect", (new StringBuilder()).append("TapjoyException: ").append(context1.getMessage()).toString());
        if (connectNotifier != null)
        {
            connectNotifier.connectFail();
            return;
        }
          goto _L2
    }

    private void addConnectFlag(String s, String s1)
    {
        String s2;
label0:
        {
            if (!s.equals("TJC_SERVICE_URL"))
            {
                s2 = s1;
                if (!s.equals("TJC_EVENT_SERVICE_URL"))
                {
                    break label0;
                }
            }
            s2 = s1;
            if (!s1.endsWith("/"))
            {
                s2 = (new StringBuilder()).append(s1).append("/").toString();
            }
        }
        connectFlags.put(s, s2);
    }

    private static boolean arePersistentIdsDisabled()
    {
        return isAdvertisingIdPresent() && getConnectFlagValue("disable_persistent_ids") != null && getConnectFlagValue("disable_persistent_ids").equals("true");
    }

    private void checkAdvertisingID()
        throws TapjoyIntegrationException
    {
        try
        {
            Class class1 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found class: ").append(class1).toString());
        }
        catch (Exception exception)
        {
            throw new TapjoyIntegrationException("Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html");
        }
        try
        {
            context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("com.google.android.gms.version");
            return;
        }
        catch (Exception exception1)
        {
            throw new TapjoyIntegrationException("Failed to load meta-data, 'com.google.android.gms.version' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html");
        }
    }

    private void checkForDependency(ActivityInfo activityinfo)
        throws TapjoyIntegrationException
    {
        Vector vector;
        int i;
        if (!dependencyClassesRequired.contains(activityinfo.name))
        {
            break MISSING_BLOCK_LABEL_365;
        }
        i = dependencyClassesRequired.indexOf(activityinfo.name);
        try
        {
            Class.forName((String)dependencyClassesRequired.get(i));
            vector = new Vector();
            if ((activityinfo.configChanges & 0x80) != 128)
            {
                vector.add("orientation");
            }
            if ((activityinfo.configChanges & 0x20) != 32)
            {
                vector.add("keyboardHidden");
            }
            if (vector.size() == 0)
            {
                break MISSING_BLOCK_LABEL_229;
            }
            if (vector.size() == 1)
            {
                throw new TapjoyIntegrationException((new StringBuilder()).append(vector.toString()).append(" property is not specified in manifest configChanges for ").append((String)dependencyClassesRequired.get(i)).toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (ActivityInfo activityinfo)
        {
            throw new TapjoyIntegrationException((new StringBuilder()).append("[ClassNotFoundException] Could not find dependency class ").append((String)dependencyClassesRequired.get(i)).toString());
        }
        throw new TapjoyIntegrationException((new StringBuilder()).append(vector.toString()).append(" properties are not specified in manifest configChanges for ").append((String)dependencyClassesRequired.get(i)).toString());
        if (android.os.Build.VERSION.SDK_INT >= 13 && (activityinfo.configChanges & 0x400) != 1024)
        {
            TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("WARNING -- screenSize property is not specified in manifest configChanges for ").append((String)dependencyClassesRequired.get(i)).toString());
        }
        if (android.os.Build.VERSION.SDK_INT >= 11 && activityinfo.name.equals("com.tapjoy.TJAdUnitView") && (activityinfo.flags & 0x200) != 512)
        {
            throw new TapjoyIntegrationException((new StringBuilder()).append("'hardwareAccelerated' property not specified in manifest for ").append((String)dependencyClassesRequired.get(i)).toString());
        }
        dependencyClassesRequired.remove(i);
    }

    private void checkManifestForConfigurations()
    {
        if (packageManager == null) goto _L2; else goto _L1
_L1:
        ApplicationInfo applicationinfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
        if (applicationinfo == null) goto _L4; else goto _L3
_L3:
        if (applicationinfo.metaData == null) goto _L4; else goto _L5
_L5:
        String as[];
        int j;
        as = TapjoyConnectFlag.FLAG_ARRAY;
        j = as.length;
        int i = 0;
_L10:
        if (i >= j) goto _L7; else goto _L6
_L6:
        String s = as[i];
        String s1 = applicationinfo.metaData.getString((new StringBuilder()).append("tapjoy.").append(s).toString());
        if (s1 == null) goto _L9; else goto _L8
_L8:
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found manifest flag: ").append(s).append(", ").append(s1).toString());
        addConnectFlag(s, s1);
          goto _L9
_L4:
        TapjoyLog.i("TapjoyConnect", "No metadata present.");
        return;
_L7:
        try
        {
            TapjoyLog.i("TapjoyConnect", "Metadata successfully loaded");
            return;
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error reading manifest meta-data: ").append(exception.toString()).toString());
        }
        return;
_L9:
        i++;
        if (true) goto _L10; else goto _L2
_L2:
    }

    private void checkPermissions()
        throws TapjoyIntegrationException
    {
        Vector vector;
label0:
        {
            vector = new Vector();
            String as[] = TapjoyConstants.dependencyPermissions;
            int k = as.length;
            for (int i = 0; i < k; i++)
            {
                String s = as[i];
                if (!isPermissionGranted(s))
                {
                    vector.add(s);
                }
            }

            if (vector.size() != 0)
            {
                if (vector.size() == 1)
                {
                    throw new TapjoyIntegrationException((new StringBuilder()).append("Missing 1 permission in manifest: ").append(vector.toString()).toString());
                } else
                {
                    throw new TapjoyIntegrationException((new StringBuilder()).append("Missing ").append(vector.size()).append(" permissions in manifest: ").append(vector.toString()).toString());
                }
            }
            vector = new Vector();
            as = TapjoyConstants.optionalPermissions;
            k = as.length;
            for (int j = 0; j < k; j++)
            {
                String s1 = as[j];
                if (!isPermissionGranted(s1))
                {
                    vector.add(s1);
                }
            }

            if (vector.size() != 0)
            {
                if (vector.size() != 1)
                {
                    break label0;
                }
                TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("WARNING -- ").append(vector.toString()).append(" permission was not found in manifest. The exclusion of this permission could cause problems.").toString());
            }
            return;
        }
        TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("WARNING -- ").append(vector.toString()).append(" permissions were not found in manifest. The exclusion of these permissions could cause problems.").toString());
    }

    private void checkResourceFileForConfigurations()
    {
        int i = context.getResources().getIdentifier("raw/tapjoy_config", null, context.getPackageName());
        Properties properties = new Properties();
        try
        {
            properties.load(context.getResources().openRawResource(i));
            parsePropertiesIntoConfigFlags(properties);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void determineInstallID()
    {
        Object obj;
        obj = context.getSharedPreferences("tjcPrefrences", 0);
        installID = ((SharedPreferences) (obj)).getString("tapjoyInstallId", "");
        if (installID != null && installID.length() != 0)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        installID = TapjoyUtil.SHA256((new StringBuilder()).append(UUID.randomUUID().toString()).append(System.currentTimeMillis()).toString());
        obj = ((SharedPreferences) (obj)).edit();
        ((android.content.SharedPreferences.Editor) (obj)).putString("tapjoyInstallId", installID);
        ((android.content.SharedPreferences.Editor) (obj)).commit();
        return;
        Exception exception;
        exception;
        TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error generating install id: ").append(exception.toString()).toString());
        return;
    }

    private static String generateSessionID()
    {
        String s = null;
        TapjoyLog.i("TapjoyConnect", "generating sessionID...");
        String s1;
        try
        {
            s1 = TapjoyUtil.SHA256((new StringBuilder()).append(System.currentTimeMillis() / 1000L).append(appID).append(deviceID).toString());
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("unable to generate session id: ").append(exception.toString()).toString());
            return s;
        }
        s = s1;
        lastTimeStamp = System.currentTimeMillis();
        return s1;
    }

    public static String getAndroidID()
    {
        return androidID;
    }

    public static String getAppID()
    {
        return appID;
    }

    public static String getAwardPointsVerifier(long l, int i, String s)
    {
        try
        {
            s = TapjoyUtil.SHA256((new StringBuilder()).append(appID).append(":").append(getVerifierID()).append(":").append(l).append(":").append(secretKey).append(":").append(i).append(":").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("getAwardPointsVerifier ERROR: ").append(s.toString()).toString());
            return "";
        }
        return s;
    }

    public static String getCarrierName()
    {
        return carrierName;
    }

    public static String getConnectFlagValue(String s)
    {
        String s2 = "";
        String s1 = s2;
        if (connectFlags != null)
        {
            s1 = s2;
            if (connectFlags.get(s) != null)
            {
                s1 = connectFlags.get(s).toString();
            }
        }
        return s1;
    }

    public static String getConnectURL()
    {
        return "https://connect.tapjoy.com/";
    }

    public static String getConnectionSubType()
    {
        String s1 = "";
        String s = s1;
        ConnectivityManager connectivitymanager;
        try
        {
            connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("getConnectionSubType error: ").append(exception.toString()).toString());
            return s;
        }
        s = s1;
        if (connectivitymanager == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        s = s1;
        s1 = connectivitymanager.getActiveNetworkInfo().getSubtypeName();
        s = s1;
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("connection_sub_type: ").append(s1).toString());
        s = s1;
        return s;
    }

    public static String getConnectionType()
    {
        Object obj;
        obj = "";
        Object obj1 = obj;
        ConnectivityManager connectivitymanager;
        try
        {
            connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("getConnectionType error: ").append(((Exception) (obj)).toString()).toString());
            return ((String) (obj1));
        }
        if (connectivitymanager == null) goto _L2; else goto _L1
_L1:
        obj1 = obj;
        if (connectivitymanager.getActiveNetworkInfo() == null) goto _L2; else goto _L3
_L3:
        obj1 = obj;
        connectivitymanager.getActiveNetworkInfo().getType();
        JVM INSTR lookupswitch 2: default 168
    //                   1: 130
    //                   6: 130;
           goto _L4 _L5 _L5
_L6:
        obj1 = obj;
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("connectivity: ").append(connectivitymanager.getActiveNetworkInfo().getType()).toString());
        obj1 = obj;
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("connection_type: ").append(((String) (obj))).toString());
        return ((String) (obj));
_L5:
        obj = "wifi";
        continue; /* Loop/switch isn't completed */
_L4:
        obj = "mobile";
        if (true) goto _L6; else goto _L2
_L2:
        return "";
    }

    public static Context getContext()
    {
        return context;
    }

    public static String getDeviceID()
    {
        return deviceID;
    }

    public static float getDeviceScreenDensityScale()
    {
        return deviceScreenDensityScale;
    }

    public static String getEventURL()
    {
        return getConnectFlagValue("TJC_EVENT_SERVICE_URL");
    }

    public static Map getGenericURLParams()
    {
        Map map = getParamsWithoutAppID();
        TapjoyUtil.safePut(map, "app_id", appID, true);
        return map;
    }

    public static String getHostURL()
    {
        return getConnectFlagValue("TJC_SERVICE_URL");
    }

    public static TapjoyConnectCore getInstance()
    {
        return tapjoyConnectCore;
    }

    public static String getMacAddress()
    {
        return macAddress;
    }

    public static Map getOfflineLogs()
    {
        return context.getSharedPreferences("tapjoyOfflineLog", 0).getAll();
    }

    private static String getPackageNamesVerifier(long l, String s)
    {
        try
        {
            s = TapjoyUtil.SHA256((new StringBuilder()).append(appID).append(":").append(getVerifierID()).append(":").append(l).append(":").append(secretKey).append(":").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("getVerifier ERROR: ").append(s.toString()).toString());
            return "";
        }
        return s;
    }

    private static Map getParamsWithoutAppID()
    {
        HashMap hashmap = new HashMap();
        if (isAdvertisingIdPresent())
        {
            TapjoyUtil.safePut(hashmap, "advertising_id", advertisingID, true);
            TapjoyUtil.safePut(hashmap, "ad_tracking_enabled", String.valueOf(adTrackingEnabled), true);
        }
        if (!arePersistentIdsDisabled())
        {
            TapjoyUtil.safePut(hashmap, "android_id", androidID, true);
            TapjoyUtil.safePut(hashmap, "udid", deviceID, true);
            TapjoyUtil.safePut(hashmap, "mac_address", macAddress, true);
        }
        TapjoyUtil.safePut(hashmap, "publisher_user_id", userID, true);
        TapjoyUtil.safePut(hashmap, "install_id", installID, true);
        TapjoyUtil.safePut(hashmap, "device_name", deviceModel, true);
        TapjoyUtil.safePut(hashmap, "device_type", deviceType, true);
        TapjoyUtil.safePut(hashmap, "os_version", deviceOSVersion, true);
        TapjoyUtil.safePut(hashmap, "country_code", deviceCountryCode, true);
        TapjoyUtil.safePut(hashmap, "language_code", deviceLanguage, true);
        TapjoyUtil.safePut(hashmap, "app_version", appVersion, true);
        TapjoyUtil.safePut(hashmap, "library_version", libraryVersion, true);
        TapjoyUtil.safePut(hashmap, "bridge_version", bridgeVersion, true);
        TapjoyUtil.safePut(hashmap, "library_revision", "unknown", true);
        TapjoyUtil.safePut(hashmap, "platform", platformName, true);
        TapjoyUtil.safePut(hashmap, "display_multiplier", Float.toString(currencyMultiplier), true);
        TapjoyUtil.safePut(hashmap, "carrier_name", carrierName, true);
        TapjoyUtil.safePut(hashmap, "carrier_country_code", carrierCountryCode, true);
        TapjoyUtil.safePut(hashmap, "mobile_country_code", mobileCountryCode, true);
        TapjoyUtil.safePut(hashmap, "mobile_network_code", mobileNetworkCode, true);
        TapjoyUtil.safePut(hashmap, "device_manufacturer", deviceManufacturer, true);
        TapjoyUtil.safePut(hashmap, "screen_density", (new StringBuilder()).append("").append(deviceScreenDensity).toString(), true);
        TapjoyUtil.safePut(hashmap, "screen_layout_size", (new StringBuilder()).append("").append(deviceScreenLayoutSize).toString(), true);
        connectionType = getConnectionType();
        TapjoyUtil.safePut(hashmap, "connection_type", connectionType, true);
        connectionSubType = getConnectionSubType();
        TapjoyUtil.safePut(hashmap, "connection_subtype", connectionSubType, true);
        TapjoyUtil.safePut(hashmap, "plugin", plugin, true);
        TapjoyUtil.safePut(hashmap, "sdk_type", sdkType, true);
        TapjoyUtil.safePut(hashmap, "store_name", storeName, true);
        TapjoyUtil.safePut(hashmap, "device_location", String.valueOf(deviceLocation), true);
        TapjoyUtil.safePut(hashmap, "store_view", String.valueOf(storeView), true);
        if (segmentationParams != null)
        {
            String s;
            Object obj;
            for (Iterator iterator = segmentationParams.keySet().iterator(); iterator.hasNext(); TapjoyUtil.safePut(hashmap, (new StringBuilder()).append("segments[").append(s).append("]").toString(), obj.toString(), true))
            {
                s = (String)iterator.next();
                obj = segmentationParams.get(s);
            }

        }
        if (sessionID == null || sessionID.length() == 0 || System.currentTimeMillis() - lastTimeStamp > 0x1b7740L)
        {
            sessionID = generateSessionID();
        } else
        {
            lastTimeStamp = System.currentTimeMillis();
        }
        if (TapjoyCache.getInstance() != null && TapjoyCache.getInstance().getCachedOfferIDs() != null && TapjoyCache.getInstance().getCachedOfferIDs().length() > 0)
        {
            TapjoyUtil.safePut(hashmap, "cached_ids", TapjoyCache.getInstance().getCachedOfferIDs(), true);
        }
        TapjoyUtil.safePut(hashmap, "session_id", sessionID, true);
        TapjoyUtil.safePut(hashmap, "threatmetrix_session_id", threatmetrixSessionID, true);
        if (TapjoyLog.isLoggingEnabled())
        {
            TapjoyUtil.safePut(hashmap, "tjdebug", "true", true);
        }
        return hashmap;
    }

    public static String getRedirectDomain()
    {
        return redirectDomain;
    }

    public static String getSecretKey()
    {
        return secretKey;
    }

    public static Hashtable getSegmentationParams()
    {
        return segmentationParams;
    }

    public static String getSha1MacAddress()
    {
        String s;
        try
        {
            s = TapjoyUtil.SHA1(macAddress);
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error generating sha1 of macAddress: ").append(exception.toString()).toString());
            return null;
        }
        return s;
    }

    public static String getSha2DeviceID()
    {
        return sha2DeviceID;
    }

    public static Map getTimeStampAndVerifierParams()
    {
        HashMap hashmap = new HashMap();
        long l = System.currentTimeMillis() / 1000L;
        String s = getVerifier(l);
        TapjoyUtil.safePut(hashmap, "timestamp", String.valueOf(l), true);
        TapjoyUtil.safePut(hashmap, "verifier", s, true);
        return hashmap;
    }

    public static Map getURLParams()
    {
        Map map = getGenericURLParams();
        map.putAll(getTimeStampAndVerifierParams());
        return map;
    }

    public static String getUserID()
    {
        return userID;
    }

    private static String getVerifier(long l)
    {
        String s;
        try
        {
            s = TapjoyUtil.SHA256((new StringBuilder()).append(appID).append(":").append(getVerifierID()).append(":").append(l).append(":").append(secretKey).toString());
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("getVerifier ERROR: ").append(exception.toString()).toString());
            return "";
        }
        return s;
    }

    private static String getVerifierID()
    {
        if (arePersistentIdsDisabled())
        {
            return advertisingID;
        }
        if (isDeviceIdPresent())
        {
            return deviceID;
        }
        if (isMacAddressPresent())
        {
            return macAddress;
        }
        if (isAdvertisingIdPresent())
        {
            return advertisingID;
        }
        if (isAndroidIdPresent())
        {
            return androidID;
        } else
        {
            Log.e("TapjoyConnect", "Error -- no valid device identifier");
            return null;
        }
    }

    private static boolean handleConnectResponse(String s)
    {
        s = TapjoyUtil.buildDocument(s);
        if (s != null)
        {
            Object obj = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("PackageNames"));
            if (obj != null && ((String) (obj)).length() > 0)
            {
                Vector vector = new Vector();
                int i = 0;
                do
                {
                    int j = ((String) (obj)).indexOf(',', i);
                    if (j == -1)
                    {
                        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("parse: ").append(((String) (obj)).substring(i).trim()).toString());
                        vector.add(((String) (obj)).substring(i).trim());
                        matchingPackageNames = "";
                        obj = packageManager.getInstalledApplications(0).iterator();
                        do
                        {
                            if (!((Iterator) (obj)).hasNext())
                            {
                                break;
                            }
                            ApplicationInfo applicationinfo = (ApplicationInfo)((Iterator) (obj)).next();
                            if ((applicationinfo.flags & 1) != 1 && vector.contains(applicationinfo.packageName))
                            {
                                TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("MATCH: installed packageName: ").append(applicationinfo.packageName).toString());
                                if (matchingPackageNames.length() > 0)
                                {
                                    matchingPackageNames = (new StringBuilder()).append(matchingPackageNames).append(",").toString();
                                }
                                matchingPackageNames = (new StringBuilder()).append(matchingPackageNames).append(applicationinfo.packageName).toString();
                            }
                        } while (true);
                        break;
                    }
                    TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("parse: ").append(((String) (obj)).substring(i, j).trim()).toString());
                    vector.add(((String) (obj)).substring(i, j).trim());
                    i = j + 1;
                } while (true);
            }
            s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Success"));
            return s != null && s.equals("true");
        } else
        {
            return true;
        }
    }

    private boolean handlePayPerActionResponse(String s)
    {
        s = TapjoyUtil.buildDocument(s);
        if (s != null)
        {
            s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Success"));
            if (s != null && s.equals("true"))
            {
                TapjoyLog.i("TapjoyConnect", "Successfully sent completed Pay-Per-Action to Tapjoy server.");
                return true;
            }
            TapjoyLog.e("TapjoyConnect", "Completed Pay-Per-Action call failed.");
        }
        return false;
    }

    private boolean init()
        throws TapjoyException
    {
        loadConfigurations();
        Object obj;
        StringBuilder stringbuilder;
        if (android.os.Build.VERSION.SDK_INT > 8)
        {
            try
            {
                doProfileAsync();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("Error building Threatmetrix profile: ").append(((Exception) (obj)).toString()).toString());
            }
        }
        if (getConnectFlagValue("skip_integrations") == "")
        {
            integrationCheck();
        }
        obtainDeviceInformation();
        if (getConnectFlagValue("debug_host_url") != null && getConnectFlagValue("debug_host_url").length() > 0)
        {
            addConnectFlag("TJC_SERVICE_URL", getConnectFlagValue("debug_host_url"));
        }
        if (getConnectFlagValue("user_id") != null && getConnectFlagValue("user_id").length() > 0)
        {
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Setting userID to: ").append(getConnectFlagValue("user_id")).toString());
            setUserID(getConnectFlagValue("user_id"));
        }
        if (connectFlags.get("segmentation_params") != null && (connectFlags.get("segmentation_params") instanceof Hashtable))
        {
            setSegmentationParams((Hashtable)connectFlags.get("segmentation_params"));
        }
        redirectDomain = TapjoyUtil.getRedirectDomain(getConnectFlagValue("TJC_SERVICE_URL"));
        stringbuilder = (new StringBuilder()).append("deviceID: ").append(deviceID);
        if (getConnectFlagValue("debug_device_id") != null && getConnectFlagValue("debug_device_id").length() > 0)
        {
            obj = " *debug_device_id*";
        } else
        {
            obj = "";
        }
        TapjoyLog.i("TapjoyConnect", stringbuilder.append(((String) (obj))).toString());
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("sha2_udid: ").append(sha2DeviceID).toString());
        java.util.Map.Entry entry;
        for (obj = getGenericURLParams().entrySet().iterator(); ((Iterator) (obj)).hasNext(); TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append((String)entry.getKey()).append(": ").append((String)entry.getValue()).toString()))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        }

        if (connectFlags != null)
        {
            logConnectFlags();
        }
        return true;
    }

    private void integrationCheck()
        throws TapjoyIntegrationException
    {
        Object obj;
        try
        {
            obj = Arrays.asList(packageManager.getPackageInfo(context.getPackageName(), 1).activities);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new TapjoyIntegrationException("NameNotFoundException: Could not find package.");
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); checkForDependency((ActivityInfo)((Iterator) (obj)).next())) { }
        if (dependencyClassesRequired.size() != 0)
        {
            if (dependencyClassesRequired.size() == 1)
            {
                throw new TapjoyIntegrationException((new StringBuilder()).append("Missing ").append(dependencyClassesRequired.size()).append(" dependency class in manifest: ").append(dependencyClassesRequired.toString()).toString());
            } else
            {
                throw new TapjoyIntegrationException((new StringBuilder()).append("Missing ").append(dependencyClassesRequired.size()).append(" dependency classes in manifest: ").append(dependencyClassesRequired.toString()).toString());
            }
        }
        checkPermissions();
        resolveJSBridgeMethods();
        if (getConnectFlagValue("disable_advertising_id_check") != null && getConnectFlagValue("disable_advertising_id_check").equals("true"))
        {
            TapjoyLog.i("TapjoyConnect", "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services.");
            return;
        } else
        {
            checkAdvertisingID();
            return;
        }
    }

    private static boolean isAdvertisingIdPresent()
    {
        return advertisingID != null && advertisingID.length() > 0;
    }

    private static boolean isAndroidIdPresent()
    {
        return androidID != null && androidID.length() > 0;
    }

    private static boolean isDeviceIdPresent()
    {
        return deviceID != null && deviceID.length() > 0;
    }

    private static boolean isMacAddressPresent()
    {
        return macAddress != null && macAddress.length() > 0;
    }

    private boolean isPermissionGranted(String s)
    {
        return packageManager.checkPermission(s, context.getPackageName()) == 0;
    }

    public static boolean isVideoEnabled()
    {
        return getConnectFlagValue("disable_videos") == null || !getConnectFlagValue("disable_videos").equals("true");
    }

    public static boolean isViewOpen()
    {
        return isViewShowing;
    }

    private void loadConfigurations()
    {
        if (connectFlags == null)
        {
            connectFlags = new Hashtable();
        }
        if (getConnectFlagValue("enable_logging") != null && getConnectFlagValue("enable_logging").equals("true"))
        {
            TapjoyLog.enableLogging(true);
        }
        checkManifestForConfigurations();
        checkResourceFileForConfigurations();
    }

    private void logConnectFlags()
    {
        TapjoyLog.i("TapjoyConnect", "Connect Flags:");
        TapjoyLog.i("TapjoyConnect", "--------------------");
        Iterator iterator = connectFlags.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("key: ").append((String)entry.getKey()).append(", value: ").append(Uri.encode(entry.getValue().toString())).toString());
            if (((String)entry.getKey()).equals("sha_2_udid") && !sdkType.equals("connect"))
            {
                TapjoyLog.w("TapjoyConnect", "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid");
                connectFlags.remove("sha_2_udid");
            }
        } while (true);
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("hostURL: [").append(getConnectFlagValue("TJC_SERVICE_URL")).append("]").toString());
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("redirectDomain: [").append(redirectDomain).append("]").toString());
        TapjoyLog.i("TapjoyConnect", "--------------------");
    }

    private void obtainCarrierInformation()
    {
        Object obj = (TelephonyManager)context.getSystemService("phone");
        if (obj == null) goto _L2; else goto _L1
_L1:
        carrierName = ((TelephonyManager) (obj)).getNetworkOperatorName();
        carrierCountryCode = ((TelephonyManager) (obj)).getNetworkCountryIso();
        if (((TelephonyManager) (obj)).getNetworkOperator() != null && (((TelephonyManager) (obj)).getNetworkOperator().length() == 5 || ((TelephonyManager) (obj)).getNetworkOperator().length() == 6))
        {
            mobileCountryCode = ((TelephonyManager) (obj)).getNetworkOperator().substring(0, 3);
            mobileNetworkCode = ((TelephonyManager) (obj)).getNetworkOperator().substring(3);
        }
        if (!isPermissionGranted("android.permission.READ_PHONE_STATE")) goto _L4; else goto _L3
_L3:
        if (getConnectFlagValue("debug_device_id") == null || getConnectFlagValue("debug_device_id").length() <= 0) goto _L6; else goto _L5
_L5:
        deviceID = getConnectFlagValue("debug_device_id");
_L15:
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("deviceID: ").append(deviceID).toString());
        boolean flag = false;
        if (deviceID != null) goto _L8; else goto _L7
_L7:
        TapjoyLog.e("TapjoyConnect", "Device id is null.");
_L13:
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("ANDROID SDK VERSION: ").append(android.os.Build.VERSION.SDK_INT).toString());
        boolean flag1 = flag;
        if (android.os.Build.VERSION.SDK_INT < 9) goto _L10; else goto _L9
_L9:
        TapjoyLog.i("TapjoyConnect", "TRYING TO GET SERIAL OF 2.3+ DEVICE...");
        obj = getSerial();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        deviceID = ((String) (obj));
        if (deviceID != null) goto _L12; else goto _L11
_L11:
        TapjoyLog.e("TapjoyConnect", "SERIAL: Device id is null.");
        flag1 = flag;
_L10:
        if (flag1)
        {
            try
            {
                sha2DeviceID = TapjoyUtil.SHA256(deviceID);
                return;
            }
            catch (Exception exception)
            {
                TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Cannot get deviceID. e: ").append(exception.toString()).toString());
            }
            deviceID = null;
            return;
        }
          goto _L2
_L6:
        deviceID = ((TelephonyManager) (obj)).getDeviceId();
        continue; /* Loop/switch isn't completed */
_L8:
label0:
        {
            if (deviceID.length() != 0 && !deviceID.equals("000000000000000") && !deviceID.equals("0"))
            {
                break label0;
            }
            TapjoyLog.e("TapjoyConnect", "Device id is empty or an emulator.");
        }
          goto _L13
        deviceID = deviceID.toLowerCase(Locale.getDefault());
        flag = true;
          goto _L13
_L12:
        if (deviceID.length() != 0 && !deviceID.equals("000000000000000") && !deviceID.equals("0") && !deviceID.equals("unknown"))
        {
            break MISSING_BLOCK_LABEL_418;
        }
        TapjoyLog.e("TapjoyConnect", "SERIAL: Device id is empty or an emulator.");
        flag1 = flag;
          goto _L10
        deviceID = deviceID.toLowerCase(Locale.getDefault());
        flag1 = true;
          goto _L10
_L4:
        TapjoyLog.i("TapjoyConnect", "*** ignore deviceID");
_L2:
        return;
        if (true) goto _L15; else goto _L14
_L14:
    }

    private void obtainDeviceInformation()
        throws TapjoyException
    {
        androidID = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (androidID != null)
        {
            androidID = androidID.toLowerCase();
        }
        try
        {
            appVersion = packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new TapjoyException(namenotfoundexception.getMessage());
        }
        deviceType = "android";
        platformName = "android";
        deviceModel = Build.MODEL;
        deviceManufacturer = Build.MANUFACTURER;
        deviceOSVersion = android.os.Build.VERSION.RELEASE;
        deviceCountryCode = Locale.getDefault().getCountry();
        deviceLanguage = Locale.getDefault().getLanguage();
        libraryVersion = "10.1.1";
        bridgeVersion = "1.0.6";
        obtainScreenInformation();
        obtainMacAddress();
        obtainCarrierInformation();
        determineInstallID();
        setDeviceCapabilityFlags();
    }

    private void obtainMacAddress()
    {
        if (!isPermissionGranted("android.permission.ACCESS_WIFI_STATE"))
        {
            break MISSING_BLOCK_LABEL_97;
        }
        Object obj;
        try
        {
            obj = (WifiManager)context.getSystemService("wifi");
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error getting device mac address: ").append(exception.toString()).toString());
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        obj = ((WifiManager) (obj)).getConnectionInfo();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        macAddress = ((WifiInfo) (obj)).getMacAddress();
        if (macAddress != null)
        {
            macAddress = macAddress.replace(":", "").toLowerCase();
        }
        return;
        TapjoyLog.i("TapjoyConnect", "*** ignore macAddress");
        return;
    }

    private void obtainScreenInformation()
    {
        try
        {
            if (android.os.Build.VERSION.SDK_INT > 3)
            {
                TapjoyDisplayMetricsUtil tapjoydisplaymetricsutil = new TapjoyDisplayMetricsUtil(context);
                deviceScreenDensity = tapjoydisplaymetricsutil.getScreenDensityDPI();
                deviceScreenDensityScale = tapjoydisplaymetricsutil.getScreenDensityScale();
                deviceScreenLayoutSize = tapjoydisplaymetricsutil.getScreenLayoutSize();
            }
            return;
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error getting screen density/dimensions/layout: ").append(exception.toString()).toString());
        }
    }

    private void parsePropertiesIntoConfigFlags(Properties properties)
    {
        for (Enumeration enumeration = properties.keys(); enumeration.hasMoreElements();)
        {
            try
            {
                String s = (String)enumeration.nextElement();
                addConnectFlag(s, (String)properties.get(s));
            }
            catch (ClassCastException classcastexception)
            {
                TapjoyLog.e("TapjoyConnect", "Error parsing configuration properties in tapjoy_config.txt");
            }
        }

    }

    public static void removeOfflineLog(String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("tapjoyOfflineLog", 0).edit();
        editor.remove(s);
        editor.commit();
    }

    public static void requestTapjoyConnect(Context context1, String s, String s1)
        throws TapjoyException
    {
        requestTapjoyConnect(context1, s, s1, null);
    }

    public static void requestTapjoyConnect(Context context1, String s, String s1, Hashtable hashtable)
        throws TapjoyException
    {
        requestTapjoyConnect(context1, s, s1, hashtable, null);
    }

    public static void requestTapjoyConnect(Context context1, String s, String s1, Hashtable hashtable, TapjoyConnectNotifier tapjoyconnectnotifier)
        throws TapjoyException
    {
        appID = s;
        secretKey = s1;
        if (hashtable != null)
        {
            connectFlags.putAll(hashtable);
        }
        connectNotifier = tapjoyconnectnotifier;
        tapjoyConnectCore = new TapjoyConnectCore(context1);
    }

    private void resolveJSBridgeMethods()
        throws TapjoyIntegrationException
    {
        Object obj;
        String s;
        try
        {
            obj = Class.forName("com.tapjoy.TJAdUnitJSBridge");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new TapjoyIntegrationException("ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found.");
        }
        try
        {
            ((Class) (obj)).getMethod("closeRequested", new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new TapjoyIntegrationException("Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://tech.tapjoy.comfor more information.");
        }
        s = (String)TapjoyUtil.getResource("mraid.js");
        obj = s;
        if (s == null)
        {
            obj = TapjoyUtil.copyTextFromJarIntoString("js/mraid.js", context);
        }
        if (obj == null)
        {
            throw new TapjoyIntegrationException("ClassNotFoundException: mraid.js was not found.");
        } else
        {
            return;
        }
    }

    public static void saveOfflineLog(String s)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tapjoyOfflineLog", 0);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        if (getOfflineLogs().size() >= 50)
        {
            editor.remove((String)(new TreeMap(sharedpreferences.getAll())).firstKey());
            editor.commit();
        }
        s = (new StringBuilder()).append(s).append("&original_timestamp=").append(System.currentTimeMillis() / 1000L).toString();
        s = (new StringBuilder()).append(s).append("&offline=true").toString();
        editor.putString(Long.toString(System.currentTimeMillis()), s);
        editor.commit();
    }

    public static void sendOfflineLogs()
    {
        (new Thread(new Runnable() {

            public void run()
            {
                TapjoyURLConnection tapjoyurlconnection = new TapjoyURLConnection();
                Iterator iterator = TapjoyConnectCore.getOfflineLogs().entrySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("sending offline log: ").append(entry.getValue()).toString());
                    TapjoyHttpURLResponse tapjoyhttpurlresponse = tapjoyurlconnection.getResponseFromURL((new StringBuilder()).append((String)entry.getValue()).append("&").append(TapjoyUtil.convertURLParams(TapjoyConnectCore.getTimeStampAndVerifierParams(), false)).toString(), "");
                    if (tapjoyhttpurlresponse != null && tapjoyhttpurlresponse.statusCode == 200)
                    {
                        TapjoyConnectCore.removeOfflineLog((String)entry.getKey());
                    }
                } while (true);
            }

        })).start();
    }

    private void setDeviceCapabilityFlags()
    {
        try
        {
            deviceLocation = detectCapability("android.hardware.location", "android.permission.ACCESS_FINE_LOCATION");
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error trying to detect capabilities on devicee: ").append(exception.toString()).toString());
        }
        try
        {
            shareFacebook = detectSharingApplication("com.facebook.");
            shareTwitter = detectSharingApplication("com.twitter.");
            shareGooglePlus = detectSharingApplication("com.google.android.apps.plus");
            shareLinkedIn = detectSharingApplication("com.linkedin.");
        }
        catch (Exception exception1)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error trying to detect sharing applications installed on devicee: ").append(exception1.toString()).toString());
        }
        if (getConnectFlagValue("store_name") != null && getConnectFlagValue("store_name").length() > 0)
        {
            storeName = getConnectFlagValue("store_name");
            if (!(new ArrayList(Arrays.asList(TapjoyConnectFlag.STORE_ARRAY))).contains(storeName))
            {
                TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("Warning -- undefined STORE_NAME: ").append(storeName).toString());
            }
        }
        try
        {
            storeView = detectStore(storeName);
            return;
        }
        catch (Exception exception2)
        {
            TapjoyLog.e("TapjoyConnect", (new StringBuilder()).append("Error trying to detect store intent on devicee: ").append(exception2.toString()).toString());
        }
    }

    public static void setPlugin(String s)
    {
        plugin = s;
    }

    public static void setSDKType(String s)
    {
        sdkType = s;
    }

    public static void setSegmentationParams(Hashtable hashtable)
    {
        segmentationParams = hashtable;
    }

    public static void setUserID(String s)
    {
        userID = s;
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("URL parameters: ").append(getURLParams()).toString());
        (new Thread(new Runnable() {

            public void run()
            {
                TapjoyLog.i("TapjoyConnect", "setUserID...");
                TapjoyHttpURLResponse tapjoyhttpurlresponse = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("set_publisher_user_id?").toString(), TapjoyConnectCore.getURLParams());
                if (tapjoyhttpurlresponse.response != null)
                {
                    if (!TapjoyConnectCore.handleConnectResponse(tapjoyhttpurlresponse.response));
                    TapjoyLog.i("TapjoyConnect", "setUserID successful...");
                }
            }

        })).start();
    }

    public static void setViewShowing(boolean flag)
    {
        isViewShowing = flag;
    }

    public static void viewDidClose(int i)
    {
        isViewShowing = false;
        if (viewNotifier != null)
        {
            viewNotifier.viewDidClose(i);
        }
    }

    public static void viewDidOpen(int i)
    {
        if (viewNotifier != null)
        {
            viewNotifier.viewDidOpen(i);
        }
    }

    public static void viewWillClose(int i)
    {
        if (viewNotifier != null)
        {
            viewNotifier.viewWillClose(i);
        }
    }

    public static void viewWillOpen(int i)
    {
        isViewShowing = true;
        if (viewNotifier != null)
        {
            viewNotifier.viewWillOpen(i);
        }
    }

    public void actionComplete(String s)
    {
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("actionComplete: ").append(s).toString());
        Map map = getParamsWithoutAppID();
        TapjoyUtil.safePut(map, "app_id", s, true);
        map.putAll(getTimeStampAndVerifierParams());
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("PPA URL parameters: ").append(map).toString());
        (new Thread(new PPAThread(map))).start();
    }

    public void appPause()
    {
        appPaused = true;
    }

    public void appResume()
    {
        if (appPaused)
        {
            generateSessionID();
            appPaused = false;
        }
    }

    public void callConnect()
    {
        fetchAdvertisingID();
    }

    public void completeConnectCall()
    {
        Object obj;
        TapjoyLog.i("TapjoyConnect", "starting connect call...");
        obj = "https://connect.tapjoy.com/";
        if (getHostURL() != "https://ws.tapjoyads.com/")
        {
            obj = getHostURL();
        }
        obj = tapjoyURLConnection.getResponseFromURL((new StringBuilder()).append(((String) (obj))).append("connect?").toString(), getURLParams());
        if (obj == null || ((TapjoyHttpURLResponse) (obj)).statusCode != 200) goto _L2; else goto _L1
_L1:
        if (!handleConnectResponse(((TapjoyHttpURLResponse) (obj)).response)) goto _L4; else goto _L3
_L3:
        TapjoyLog.i("TapjoyConnect", "Successfully connected to tapjoy site.");
        if (connectNotifier != null)
        {
            connectNotifier.connectSuccess();
        }
_L8:
        if (matchingPackageNames.length() > 0)
        {
            Object obj1 = getGenericURLParams();
            TapjoyUtil.safePut(((Map) (obj1)), "package_names", matchingPackageNames, true);
            long l = System.currentTimeMillis() / 1000L;
            String s = getPackageNamesVerifier(l, matchingPackageNames);
            TapjoyUtil.safePut(((Map) (obj1)), "timestamp", String.valueOf(l), true);
            TapjoyUtil.safePut(((Map) (obj1)), "verifier", s, true);
            obj1 = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(getHostURL()).append("apps_installed?").toString(), ((Map) (obj1)));
            if (obj1 != null && ((TapjoyHttpURLResponse) (obj1)).statusCode == 200)
            {
                TapjoyLog.i("TapjoyConnect", "Successfully pinged sdkless api.");
            }
        }
_L6:
        return;
_L4:
        if (connectNotifier != null)
        {
            connectNotifier.connectFail();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (connectNotifier == null) goto _L6; else goto _L5
_L5:
        connectNotifier.connectFail();
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected boolean detectApplication(String s)
    {
        for (Iterator iterator = packageManager.getInstalledApplications(0).iterator(); iterator.hasNext();)
        {
            if (((ApplicationInfo)iterator.next()).packageName.startsWith(s))
            {
                return true;
            }
        }

        return false;
    }

    protected boolean detectCapability(String s, String s1)
    {
        FeatureInfo afeatureinfo[] = packageManager.getSystemAvailableFeatures();
        int j = afeatureinfo.length;
        for (int i = 0; i < j; i++)
        {
            if (afeatureinfo[i].name.matches(s))
            {
                if (s1 == null)
                {
                    return true;
                }
                return packageManager.checkPermission(s1, context.getPackageName()) == 0;
            }
        }

        return false;
    }

    protected boolean detectSharingApplication(String s)
    {
        Object obj = new Intent("android.intent.action.SEND");
        ((Intent) (obj)).setType("text/plain");
        for (obj = packageManager.queryIntentActivities(((Intent) (obj)), 0).iterator(); ((Iterator) (obj)).hasNext();)
        {
            if (((ResolveInfo)((Iterator) (obj)).next()).activityInfo.packageName.startsWith(s))
            {
                return true;
            }
        }

        return false;
    }

    protected boolean detectStore(String s)
    {
        Intent intent;
        boolean flag;
        flag = false;
        intent = new Intent("android.intent.action.VIEW");
        if (s.length() >= 1) goto _L2; else goto _L1
_L1:
        intent.setData(Uri.parse("market://details"));
        if (packageManager.queryIntentActivities(intent, 0).size() > 0)
        {
            flag = true;
        }
_L4:
        if (!flag);
        return flag;
_L2:
        if (s.equals("gfan"))
        {
            flag = detectApplication("com.mappn.gfan");
        } else
        if (s.equals("skt"))
        {
            flag = detectApplication("com.skt.skaf.TSCINSTALL");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void doProfileAsync()
    {
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Initializing Threatmetrix: ").append(TrustDefenderMobile.version).toString());
        profile = new TrustDefenderMobile();
        try
        {
            profile.setCompletionNotifier(new ProfileNotify() {

                final TapjoyConnectCore this$0;

                public void complete()
                {
                    if (profile.getStatus() == com.threatmetrix.TrustDefenderMobile.TrustDefenderMobile.THMStatusCode.THM_OK)
                    {
                        TapjoyConnectCore.threatmetrixSessionID = profile.getSessionID();
                        return;
                    }
                    try
                    {
                        TapjoyLog.w("TapjoyConnect", "No Threatmetrix session ID");
                        return;
                    }
                    catch (Exception exception)
                    {
                        TapjoyLog.w("TapjoyConnect", (new StringBuilder()).append("Error retrieving Threatmetrix session ID: ").append(exception.toString()).toString());
                    }
                    return;
                }

            
            {
                this$0 = TapjoyConnectCore.this;
                super();
            }
            });
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        profile.setTimeout(10);
        profile.doProfileRequest(context, "rrx68giz", "h.online-metrix.net", "http://content-js.tapjoy.com", 25);
    }

    public void enablePaidAppWithActionID(String s)
    {
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("enablePaidAppWithActionID: ").append(s).toString());
        paidAppActionID = s;
        elapsed_time = context.getSharedPreferences("tjcPrefrences", 0).getLong("tapjoy_elapsed_time", 0L);
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("paidApp elapsed: ").append(elapsed_time).toString());
        if (elapsed_time >= 0xdbba0L)
        {
            if (paidAppActionID != null && paidAppActionID.length() > 0)
            {
                TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
                actionComplete(paidAppActionID);
            }
        } else
        if (timer == null)
        {
            timer = new Timer();
            timer.schedule(new PaidAppTimerTask(), 10000L, 10000L);
            return;
        }
    }

    public void fetchAdvertisingID()
    {
        (new Thread(new Runnable() {

            final TapjoyConnectCore this$0;

            public void run()
            {
                Object obj;
                Method method;
                Method method1;
                obj = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                method = ((Class) (obj)).getMethod("getAdvertisingIdInfo", new Class[] {
                    android/content/Context
                });
                TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found method: ").append(method).toString());
                obj = method.invoke(obj, new Object[] {
                    TapjoyConnectCore.context
                });
                method = obj.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]);
                method1 = obj.getClass().getMethod("getId", new Class[0]);
                boolean flag;
                if (!((Boolean)method.invoke(obj, new Object[0])).booleanValue())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                try
                {
                    TapjoyConnectCore.adTrackingEnabled = flag;
                    TapjoyConnectCore.advertisingID = (String)method1.invoke(obj, new Object[0]);
                    TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found advertising ID: ").append(TapjoyConnectCore.advertisingID).toString());
                    TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Is ad tracking enabled: ").append(Boolean.toString(TapjoyConnectCore.adTrackingEnabled)).toString());
                }
                catch (Exception exception)
                {
                    TapjoyLog.i("TapjoyConnect", "Error getting advertisingID from Google Play Services");
                }
                if (TapjoyConnectCore.arePersistentIdsDisabled())
                {
                    TapjoyLog.i("TapjoyConnect", "Disabling persistent IDs. Do this only if you are not using Tapjoy to manage currency.");
                }
                completeConnectCall();
                return;
            }

            
            {
                this$0 = TapjoyConnectCore.this;
                super();
            }
        })).start();
    }

    public float getCurrencyMultiplier()
    {
        return currencyMultiplier;
    }

    public String getSerial()
    {
        String s1 = null;
        String s = s1;
        Field field;
        try
        {
            field = Class.forName("android.os.Build").getDeclaredField("SERIAL");
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyConnect", exception.toString());
            return s;
        }
        s = s1;
        if (field.isAccessible())
        {
            break MISSING_BLOCK_LABEL_33;
        }
        s = s1;
        field.setAccessible(true);
        s = s1;
        s1 = field.get(android/os/Build).toString();
        s = s1;
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("serial: ").append(s1).toString());
        return s1;
    }

    public boolean isInitialized()
    {
        return initialized;
    }

    public void release()
    {
        tapjoyConnectCore = null;
        tapjoyURLConnection = null;
        TapjoyLog.i("TapjoyConnect", "Releasing core static instance.");
    }

    public void setCurrencyMultiplier(float f)
    {
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("setVirtualCurrencyMultiplier: ").append(f).toString());
        currencyMultiplier = f;
    }

    public void setTapjoyViewNotifier(TapjoyViewNotifier tapjoyviewnotifier)
    {
        viewNotifier = tapjoyviewnotifier;
    }

    public void setVideoEnabled(boolean flag)
    {
        addConnectFlag("disable_videos", String.valueOf(flag));
    }

    static 
    {
        dependencyClassesRequired = new Vector(Arrays.asList(TapjoyConstants.dependencyClassNames));
        connectFlags = TapjoyConnectFlag.CONNECT_FLAG_DEFAULTS;
    }



/*
    static String access$102(String s)
    {
        threatmetrixSessionID = s;
        return s;
    }

*/





/*
    static long access$414(TapjoyConnectCore tapjoyconnectcore, long l)
    {
        l = tapjoyconnectcore.elapsed_time + l;
        tapjoyconnectcore.elapsed_time = l;
        return l;
    }

*/




}
