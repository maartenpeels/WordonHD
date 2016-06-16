// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Settings;
import com.facebook.model.GraphObject;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            ImageDownloader, Validate, AttributionIdentifiers

public final class Utility
{
    public static class DialogFeatureConfig
    {

        private String dialogName;
        private Uri fallbackUrl;
        private String featureName;
        private int featureVersionSpec[];

        private static DialogFeatureConfig parseDialogConfig(JSONObject jsonobject)
        {
            Object obj = jsonobject.optString("name");
            if (Utility.isNullOrEmpty(((String) (obj))))
            {
                return null;
            }
            String as[] = ((String) (obj)).split("\\|");
            if (as.length != 2)
            {
                return null;
            }
            String s = as[0];
            String s1 = as[1];
            if (Utility.isNullOrEmpty(s) || Utility.isNullOrEmpty(s1))
            {
                return null;
            }
            as = jsonobject.optString("url");
            if (!Utility.isNullOrEmpty(as))
            {
                as = Uri.parse(as);
            } else
            {
                as = null;
            }
            return new DialogFeatureConfig(s, s1, as, parseVersionSpec(jsonobject.optJSONArray("versions")));
        }

        private static int[] parseVersionSpec(JSONArray jsonarray)
        {
            int ai[] = null;
            if (jsonarray != null)
            {
                int l = jsonarray.length();
                ai = new int[l];
                int j = 0;
                do
                {
                    if (j >= l)
                    {
                        break;
                    }
                    int k = jsonarray.optInt(j, -1);
                    int i = k;
                    if (k == -1)
                    {
                        String s = jsonarray.optString(j);
                        i = k;
                        if (!Utility.isNullOrEmpty(s))
                        {
                            try
                            {
                                i = Integer.parseInt(s);
                            }
                            catch (NumberFormatException numberformatexception)
                            {
                                Utility.logd("FacebookSDK", numberformatexception);
                                i = -1;
                            }
                        }
                    }
                    ai[j] = i;
                    j++;
                } while (true);
            }
            return ai;
        }

        public String getDialogName()
        {
            return dialogName;
        }

        public Uri getFallbackUrl()
        {
            return fallbackUrl;
        }

        public String getFeatureName()
        {
            return featureName;
        }

        public int[] getVersionSpec()
        {
            return featureVersionSpec;
        }


        private DialogFeatureConfig(String s, String s1, Uri uri, int ai[])
        {
            dialogName = s;
            featureName = s1;
            fallbackUrl = uri;
            featureVersionSpec = ai;
        }
    }

    public static class FetchedAppSettings
    {

        private Map dialogConfigMap;
        private String nuxContent;
        private boolean nuxEnabled;
        private boolean supportsImplicitLogging;

        public Map getDialogConfigurations()
        {
            return dialogConfigMap;
        }

        public String getNuxContent()
        {
            return nuxContent;
        }

        public boolean getNuxEnabled()
        {
            return nuxEnabled;
        }

        public boolean supportsImplicitLogging()
        {
            return supportsImplicitLogging;
        }

        private FetchedAppSettings(boolean flag, String s, boolean flag1, Map map)
        {
            supportsImplicitLogging = flag;
            nuxContent = s;
            nuxEnabled = flag1;
            dialogConfigMap = map;
        }

        FetchedAppSettings(boolean flag, String s, boolean flag1, Map map, _cls1 _pcls1)
        {
            this(flag, s, flag1, map);
        }
    }


    private static final String APPLICATION_FIELDS = "fields";
    private static final String APP_SETTINGS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_SETTINGS.%s";
    private static final String APP_SETTINGS_PREFS_STORE = "com.facebook.internal.preferences.APP_SETTINGS";
    private static final String APP_SETTING_DIALOG_CONFIGS = "android_dialog_configs";
    private static final String APP_SETTING_FIELDS[] = {
        "supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs"
    };
    private static final String APP_SETTING_NUX_CONTENT = "gdpv4_nux_content";
    private static final String APP_SETTING_NUX_ENABLED = "gdpv4_nux_enabled";
    private static final String APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "\\|";
    private static final String DIALOG_CONFIG_NAME_KEY = "name";
    private static final String DIALOG_CONFIG_URL_KEY = "url";
    private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a1";
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String LOG_TAG = "FacebookSDK";
    private static final String URL_SCHEME = "https";
    private static final String UTF8 = "UTF-8";
    private static Map fetchedAppSettings = new ConcurrentHashMap();
    private static AsyncTask initialAppSettingsLoadTask;

    public Utility()
    {
    }

    public static boolean areObjectsEqual(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public static transient ArrayList arrayList(Object aobj[])
    {
        ArrayList arraylist = new ArrayList(aobj.length);
        int j = aobj.length;
        for (int i = 0; i < j; i++)
        {
            arraylist.add(aobj[i]);
        }

        return arraylist;
    }

    public static transient List asListNoNulls(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        int j = aobj.length;
        for (int i = 0; i < j; i++)
        {
            Object obj = aobj[i];
            if (obj != null)
            {
                arraylist.add(obj);
            }
        }

        return arraylist;
    }

    public static Uri buildUri(String s, String s1, Bundle bundle)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority(s);
        builder.path(s1);
        s = bundle.keySet().iterator();
        do
        {
            if (!s.hasNext())
            {
                break;
            }
            s1 = (String)s.next();
            Object obj = bundle.get(s1);
            if (obj instanceof String)
            {
                builder.appendQueryParameter(s1, (String)obj);
            }
        } while (true);
        return builder.build();
    }

    public static void clearCaches(Context context)
    {
        ImageDownloader.clearCache(context);
    }

    private static void clearCookiesForDomain(Context context, String s)
    {
        CookieSyncManager.createInstance(context).sync();
        context = CookieManager.getInstance();
        String s1 = context.getCookie(s);
        if (s1 == null)
        {
            return;
        }
        String as[] = s1.split(";");
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            String as1[] = as[i].split("=");
            if (as1.length > 0)
            {
                context.setCookie(s, (new StringBuilder()).append(as1[0].trim()).append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;").toString());
            }
        }

        context.removeExpiredCookie();
    }

    public static void clearFacebookCookies(Context context)
    {
        clearCookiesForDomain(context, "facebook.com");
        clearCookiesForDomain(context, ".facebook.com");
        clearCookiesForDomain(context, "https://facebook.com");
        clearCookiesForDomain(context, "https://.facebook.com");
    }

    public static void closeQuietly(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    public static String coerceValueIfNullOrEmpty(String s, String s1)
    {
        if (isNullOrEmpty(s))
        {
            return s1;
        } else
        {
            return s;
        }
    }

    static Map convertJSONObjectToHashMap(JSONObject jsonobject)
    {
        HashMap hashmap;
        JSONArray jsonarray;
        int i;
        hashmap = new HashMap();
        jsonarray = jsonobject.names();
        i = 0;
_L3:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        Object obj1;
        String s;
        s = jsonarray.getString(i);
        obj1 = jsonobject.get(s);
        Object obj = obj1;
        try
        {
            if (obj1 instanceof JSONObject)
            {
                obj = convertJSONObjectToHashMap((JSONObject)obj1);
            }
            hashmap.put(s, obj);
        }
        catch (JSONException jsonexception) { }
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        return hashmap;
    }

    public static void deleteDirectory(File file)
    {
        if (!file.exists())
        {
            return;
        }
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                deleteDirectory(afile[i]);
            }

        }
        file.delete();
    }

    public static void disconnectQuietly(URLConnection urlconnection)
    {
        if (urlconnection instanceof HttpURLConnection)
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
    }

    public static String getActivityName(Context context)
    {
        if (context == null)
        {
            return "null";
        }
        if (context == context.getApplicationContext())
        {
            return "unknown";
        } else
        {
            return context.getClass().getSimpleName();
        }
    }

    private static GraphObject getAppSettingsQueryResponse(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", APP_SETTING_FIELDS));
        s = Request.newGraphPathRequest(null, s, null);
        s.setSkipClientToken(true);
        s.setParameters(bundle);
        return s.executeAndWait().getGraphObject();
    }

    public static DialogFeatureConfig getDialogFeatureConfig(String s, String s1, String s2)
    {
        if (isNullOrEmpty(s1) || isNullOrEmpty(s2))
        {
            return null;
        }
        s = (FetchedAppSettings)fetchedAppSettings.get(s);
        if (s != null)
        {
            s = (Map)s.getDialogConfigurations().get(s1);
            if (s != null)
            {
                return (DialogFeatureConfig)s.get(s2);
            }
        }
        return null;
    }

    public static String getMetadataApplicationId(Context context)
    {
        Validate.notNull(context, "context");
        Settings.loadDefaultsFromMetadata(context);
        return Settings.getApplicationId();
    }

    public static transient Method getMethodQuietly(Class class1, String s, Class aclass[])
    {
        try
        {
            class1 = class1.getMethod(s, aclass);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return null;
        }
        return class1;
    }

    public static transient Method getMethodQuietly(String s, String s1, Class aclass[])
    {
        try
        {
            s = getMethodQuietly(Class.forName(s), s1, aclass);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static Object getStringPropertyAsJSON(JSONObject jsonobject, String s, String s1)
    {
label0:
        {
            jsonobject = ((JSONObject) (jsonobject.opt(s)));
            if (jsonobject != null && (jsonobject instanceof String))
            {
                jsonobject = ((JSONObject) ((new JSONTokener((String)jsonobject)).nextValue()));
            }
            s = jsonobject;
            if (jsonobject != null)
            {
                s = jsonobject;
                if (!(jsonobject instanceof JSONObject))
                {
                    s = jsonobject;
                    if (!(jsonobject instanceof JSONArray))
                    {
                        if (s1 == null)
                        {
                            break label0;
                        }
                        s = new JSONObject();
                        s.putOpt(s1, jsonobject);
                    }
                }
            }
            return s;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
    }

    private static String hashBytes(MessageDigest messagedigest, byte abyte0[])
    {
        messagedigest.update(abyte0);
        messagedigest = messagedigest.digest();
        abyte0 = new StringBuilder();
        int j = messagedigest.length;
        for (int i = 0; i < j; i++)
        {
            byte byte0 = messagedigest[i];
            abyte0.append(Integer.toHexString(byte0 >> 4 & 0xf));
            abyte0.append(Integer.toHexString(byte0 >> 0 & 0xf));
        }

        return abyte0.toString();
    }

    private static String hashWithAlgorithm(String s, String s1)
    {
        return hashWithAlgorithm(s, s1.getBytes());
    }

    private static String hashWithAlgorithm(String s, byte abyte0[])
    {
        try
        {
            s = MessageDigest.getInstance(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return hashBytes(s, abyte0);
    }

    public static int[] intersectRanges(int ai[], int ai1[])
    {
        int ai2[];
        int i;
        int k;
        int l;
        l = 0;
        if (ai == null)
        {
            return ai1;
        }
        if (ai1 == null)
        {
            return ai;
        }
        ai2 = new int[ai.length + ai1.length];
        i = 0;
        k = 0;
_L11:
        if (l >= ai.length || i >= ai1.length)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        int k1 = ai[l];
        int j1 = ai1[i];
        int j;
        int i1;
        if (l < ai.length - 1)
        {
            j = ai[l + 1];
        } else
        {
            j = 0x7fffffff;
        }
        if (i < ai1.length - 1)
        {
            i1 = ai1[i + 1];
        } else
        {
            i1 = 0x7fffffff;
        }
        if (k1 >= j1) goto _L2; else goto _L1
_L1:
        if (j <= j1) goto _L4; else goto _L3
_L3:
        if (j > i1) goto _L6; else goto _L5
_L5:
        k1 = j;
        j = l + 2;
        i1 = j1;
        l = k1;
_L12:
        if (i1 == 0x80000000) goto _L8; else goto _L7
_L7:
        j1 = k + 1;
        ai2[k] = i1;
        if (l == 0x7fffffff) goto _L10; else goto _L9
_L9:
        ai2[j1] = l;
        k = j1 + 1;
_L8:
        l = j;
          goto _L11
_L4:
        j = l + 2;
        l = 0x7fffffff;
        i1 = 0x80000000;
          goto _L12
_L2:
        if (i1 <= k1) goto _L14; else goto _L13
_L13:
        j1 = k1;
        if (i1 <= j) goto _L6; else goto _L15
_L15:
        j1 = l + 2;
        i1 = k1;
        l = j;
        j = j1;
          goto _L12
_L6:
        j = j1;
_L16:
        i += 2;
        j1 = l;
        l = i1;
        i1 = j;
        j = j1;
          goto _L12
_L10:
        i = j1;
_L17:
        return Arrays.copyOf(ai2, i);
_L14:
        i1 = 0x7fffffff;
        j = 0x80000000;
          goto _L16
        i = k;
          goto _L17
    }

    public static transient Object invokeMethodQuietly(Object obj, Method method, Object aobj[])
    {
        try
        {
            obj = method.invoke(obj, aobj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        return obj;
    }

    public static boolean isNullOrEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static boolean isNullOrEmpty(Collection collection)
    {
        return collection == null || collection.size() == 0;
    }

    public static boolean isSubset(Collection collection, Collection collection1)
    {
        if (collection1 == null || collection1.size() == 0)
        {
            return collection == null || collection.size() == 0;
        }
        collection1 = new HashSet(collection1);
        for (collection = collection.iterator(); collection.hasNext();)
        {
            if (!collection1.contains(collection.next()))
            {
                return false;
            }
        }

        return true;
    }

    public static void loadAppSettingsAsync(final Context context, final String applicationId)
    {
        if (!isNullOrEmpty(applicationId) && !fetchedAppSettings.containsKey(applicationId) && initialAppSettingsLoadTask == null)
        {
            final String settingsKey = String.format("com.facebook.internal.APP_SETTINGS.%s", new Object[] {
                applicationId
            });
            _cls1 _lcls1 = new _cls1();
            initialAppSettingsLoadTask = _lcls1;
            _lcls1.execute(null);
            context = context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(settingsKey, null);
            if (!isNullOrEmpty(context))
            {
                try
                {
                    context = new JSONObject(context);
                }
                // Misplaced declaration of an exception variable
                catch (final Context context)
                {
                    logd("FacebookSDK", context);
                    context = null;
                }
                if (context != null)
                {
                    parseAppSettingsFromJSON(applicationId, context);
                    return;
                }
            }
        }
    }

    public static void logd(String s, Exception exception)
    {
        if (Settings.isDebugEnabled() && s != null && exception != null)
        {
            Log.d(s, (new StringBuilder()).append(exception.getClass().getSimpleName()).append(": ").append(exception.getMessage()).toString());
        }
    }

    public static void logd(String s, String s1)
    {
        if (Settings.isDebugEnabled() && s != null && s1 != null)
        {
            Log.d(s, s1);
        }
    }

    public static void logd(String s, String s1, Throwable throwable)
    {
        if (Settings.isDebugEnabled() && !isNullOrEmpty(s))
        {
            Log.d(s, s1, throwable);
        }
    }

    static String md5hash(String s)
    {
        return hashWithAlgorithm("MD5", s);
    }

    private static FetchedAppSettings parseAppSettingsFromJSON(String s, JSONObject jsonobject)
    {
        jsonobject = new FetchedAppSettings(jsonobject.optBoolean("supports_implicit_sdk_logging", false), jsonobject.optString("gdpv4_nux_content", ""), jsonobject.optBoolean("gdpv4_nux_enabled", false), parseDialogConfigurations(jsonobject.optJSONObject("android_dialog_configs")), null);
        fetchedAppSettings.put(s, jsonobject);
        return jsonobject;
    }

    private static Map parseDialogConfigurations(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        if (jsonobject != null)
        {
            JSONArray jsonarray = jsonobject.optJSONArray("data");
            if (jsonarray != null)
            {
                for (int i = 0; i < jsonarray.length(); i++)
                {
                    DialogFeatureConfig dialogfeatureconfig = DialogFeatureConfig.parseDialogConfig(jsonarray.optJSONObject(i));
                    if (dialogfeatureconfig == null)
                    {
                        continue;
                    }
                    String s = dialogfeatureconfig.getDialogName();
                    jsonobject = (Map)hashmap.get(s);
                    if (jsonobject == null)
                    {
                        jsonobject = new HashMap();
                        hashmap.put(s, jsonobject);
                    }
                    jsonobject.put(dialogfeatureconfig.getFeatureName(), dialogfeatureconfig);
                }

            }
        }
        return hashmap;
    }

    public static Bundle parseUrlQueryString(String s)
    {
        Bundle bundle;
        int i;
        i = 0;
        bundle = new Bundle();
        if (isNullOrEmpty(s)) goto _L2; else goto _L1
_L1:
        int j;
        s = s.split("&");
        j = s.length;
_L8:
        if (i >= j) goto _L2; else goto _L3
_L3:
        String as[] = s[i].split("=");
        if (as.length != 2) goto _L5; else goto _L4
_L4:
        bundle.putString(URLDecoder.decode(as[0], "UTF-8"), URLDecoder.decode(as[1], "UTF-8"));
          goto _L6
_L5:
        try
        {
            if (as.length == 1)
            {
                bundle.putString(URLDecoder.decode(as[0], "UTF-8"), "");
            }
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            logd("FacebookSDK", unsupportedencodingexception);
        }
          goto _L6
_L2:
        return bundle;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void putObjectInBundle(Bundle bundle, String s, Object obj)
    {
        if (obj instanceof String)
        {
            bundle.putString(s, (String)obj);
            return;
        }
        if (obj instanceof Parcelable)
        {
            bundle.putParcelable(s, (Parcelable)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            bundle.putByteArray(s, (byte[])obj);
            return;
        } else
        {
            throw new FacebookException("attempted to add unsupported type to Bundle");
        }
    }

    public static FetchedAppSettings queryAppSettings(String s, boolean flag)
    {
        if (!flag && fetchedAppSettings.containsKey(s))
        {
            return (FetchedAppSettings)fetchedAppSettings.get(s);
        }
        GraphObject graphobject = getAppSettingsQueryResponse(s);
        if (graphobject == null)
        {
            return null;
        } else
        {
            return parseAppSettingsFromJSON(s, graphobject.getInnerJSONObject());
        }
    }

    public static String readStreamToString(InputStream inputstream)
    {
        Object obj = null;
        inputstream = new BufferedInputStream(inputstream);
        InputStreamReader inputstreamreader = new InputStreamReader(inputstream);
        char ac[];
        obj = new StringBuilder();
        ac = new char[2048];
_L3:
        int i = inputstreamreader.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        ((StringBuilder) (obj)).append(ac, 0, i);
          goto _L3
        Exception exception;
        exception;
        obj = inputstream;
        inputstream = exception;
_L5:
        closeQuietly(((Closeable) (obj)));
        closeQuietly(inputstreamreader);
        throw inputstream;
_L2:
        obj = ((StringBuilder) (obj)).toString();
        closeQuietly(inputstream);
        closeQuietly(inputstreamreader);
        return ((String) (obj));
        inputstream;
        inputstreamreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        inputstreamreader = null;
        obj = inputstream;
        inputstream = exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean safeGetBooleanFromResponse(GraphObject graphobject, String s)
    {
        Object obj = Boolean.valueOf(false);
        if (graphobject != null)
        {
            obj = graphobject.getProperty(s);
        }
        if (!(obj instanceof Boolean))
        {
            graphobject = Boolean.valueOf(false);
        } else
        {
            graphobject = ((GraphObject) (obj));
        }
        return ((Boolean)graphobject).booleanValue();
    }

    public static String safeGetStringFromResponse(GraphObject graphobject, String s)
    {
        if (graphobject != null)
        {
            graphobject = ((GraphObject) (graphobject.getProperty(s)));
        } else
        {
            graphobject = "";
        }
        if (!(graphobject instanceof String))
        {
            graphobject = "";
        }
        return (String)graphobject;
    }

    public static void setAppEventAttributionParameters(GraphObject graphobject, AttributionIdentifiers attributionidentifiers, String s, boolean flag)
    {
        if (attributionidentifiers != null && attributionidentifiers.getAttributionId() != null)
        {
            graphobject.setProperty("attribution", attributionidentifiers.getAttributionId());
        }
        if (attributionidentifiers != null && attributionidentifiers.getAndroidAdvertiserId() != null)
        {
            graphobject.setProperty("advertiser_id", attributionidentifiers.getAndroidAdvertiserId());
            boolean flag1;
            if (!attributionidentifiers.isTrackingLimited())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            graphobject.setProperty("advertiser_tracking_enabled", Boolean.valueOf(flag1));
        }
        graphobject.setProperty("anon_id", s);
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        graphobject.setProperty("application_tracking_enabled", Boolean.valueOf(flag));
    }

    public static void setAppEventExtendedDeviceInfoParameters(GraphObject graphobject, Context context)
    {
        JSONArray jsonarray;
        String s;
        int i;
        int j;
        jsonarray = new JSONArray();
        jsonarray.put("a1");
        s = context.getPackageName();
        j = -1;
        i = j;
        context = context.getPackageManager().getPackageInfo(s, 0);
        i = j;
        j = ((PackageInfo) (context)).versionCode;
        i = j;
        try
        {
            context = ((PackageInfo) (context)).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = "";
            j = i;
        }
        jsonarray.put(s);
        jsonarray.put(j);
        jsonarray.put(context);
        graphobject.setProperty("extinfo", jsonarray.toString());
        return;
    }

    static String sha1hash(String s)
    {
        return hashWithAlgorithm("SHA-1", s);
    }

    static String sha1hash(byte abyte0[])
    {
        return hashWithAlgorithm("SHA-1", abyte0);
    }

    public static boolean stringsEqualOrEmpty(String s, String s1)
    {
        boolean flag = TextUtils.isEmpty(s);
        boolean flag1 = TextUtils.isEmpty(s1);
        if (flag && flag1)
        {
            return true;
        }
        if (!flag && !flag1)
        {
            return s.equals(s1);
        } else
        {
            return false;
        }
    }

    public static JSONArray tryGetJSONArrayFromResponse(GraphObject graphobject, String s)
    {
        if (graphobject == null)
        {
            return null;
        }
        graphobject = ((GraphObject) (graphobject.getProperty(s)));
        if (!(graphobject instanceof JSONArray))
        {
            return null;
        } else
        {
            return (JSONArray)graphobject;
        }
    }

    public static JSONObject tryGetJSONObjectFromResponse(GraphObject graphobject, String s)
    {
        if (graphobject == null)
        {
            return null;
        }
        graphobject = ((GraphObject) (graphobject.getProperty(s)));
        if (!(graphobject instanceof JSONObject))
        {
            return null;
        } else
        {
            return (JSONObject)graphobject;
        }
    }

    public static transient Collection unmodifiableCollection(Object aobj[])
    {
        return Collections.unmodifiableCollection(Arrays.asList(aobj));
    }





/*
    static AsyncTask access$202(AsyncTask asynctask)
    {
        initialAppSettingsLoadTask = asynctask;
        return asynctask;
    }

*/

    private class _cls1 extends AsyncTask
    {

        final String val$applicationId;
        final Context val$context;
        final String val$settingsKey;

        protected final transient GraphObject doInBackground(Void avoid[])
        {
            return Utility.getAppSettingsQueryResponse(applicationId);
        }

        protected final volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected final void onPostExecute(GraphObject graphobject)
        {
            if (graphobject != null)
            {
                graphobject = graphobject.getInnerJSONObject();
                Utility.parseAppSettingsFromJSON(applicationId, graphobject);
                context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(settingsKey, graphobject.toString()).apply();
            }
            Utility.initialAppSettingsLoadTask = null;
        }

        protected final volatile void onPostExecute(Object obj)
        {
            onPostExecute((GraphObject)obj);
        }

        _cls1()
        {
            applicationId = s;
            context = context1;
            settingsKey = s1;
            super();
        }
    }

}
