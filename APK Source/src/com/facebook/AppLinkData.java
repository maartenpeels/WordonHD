// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            FacebookException, Settings, AppEventsLogger, Request, 
//            Response

public class AppLinkData
{
    public static interface CompletionHandler
    {

        public abstract void onDeferredAppLinkDataFetched(AppLinkData applinkdata);
    }


    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
    public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
    private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
    private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
    private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
    private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
    private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG = com/facebook/AppLinkData.getCanonicalName();
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String ref;
    private Uri targetUri;

    private AppLinkData()
    {
    }

    public static AppLinkData createFromActivity(Activity activity)
    {
        Validate.notNull(activity, "activity");
        Intent intent = activity.getIntent();
        if (intent == null)
        {
            return null;
        }
        AppLinkData applinkdata = createFromAlApplinkData(intent);
        activity = applinkdata;
        if (applinkdata == null)
        {
            activity = createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
        }
        if (activity == null)
        {
            return createFromUri(intent.getData());
        } else
        {
            return activity;
        }
    }

    private static AppLinkData createFromAlApplinkData(Intent intent)
    {
        Bundle bundle = intent.getBundleExtra("al_applink_data");
        if (bundle == null)
        {
            return null;
        }
        AppLinkData applinkdata = new AppLinkData();
        applinkdata.targetUri = intent.getData();
        if (applinkdata.targetUri == null)
        {
            intent = bundle.getString("target_url");
            if (intent != null)
            {
                applinkdata.targetUri = Uri.parse(intent);
            }
        }
        applinkdata.argumentBundle = bundle;
        applinkdata.arguments = null;
        intent = bundle.getBundle("referer_data");
        if (intent != null)
        {
            applinkdata.ref = intent.getString("fb_ref");
        }
        return applinkdata;
    }

    private static AppLinkData createFromJson(String s)
    {
        if (s == null)
        {
            return null;
        }
        Object obj;
        s = new JSONObject(s);
        obj = s.getString("version");
        if (!s.getJSONObject("bridge_args").getString("method").equals("applink") || !((String) (obj)).equals("2"))
        {
            break MISSING_BLOCK_LABEL_189;
        }
        obj = new AppLinkData();
        obj.arguments = s.getJSONObject("method_args");
        if (!((AppLinkData) (obj)).arguments.has("ref")) goto _L2; else goto _L1
_L1:
        obj.ref = ((AppLinkData) (obj)).arguments.getString("ref");
_L4:
        if (((AppLinkData) (obj)).arguments.has("target_url"))
        {
            obj.targetUri = Uri.parse(((AppLinkData) (obj)).arguments.getString("target_url"));
        }
        obj.argumentBundle = toBundle(((AppLinkData) (obj)).arguments);
        return ((AppLinkData) (obj));
_L2:
        if (!((AppLinkData) (obj)).arguments.has("referer_data")) goto _L4; else goto _L3
_L3:
        s = ((AppLinkData) (obj)).arguments.getJSONObject("referer_data");
        if (s.has("fb_ref"))
        {
            obj.ref = s.getString("fb_ref");
        }
          goto _L4
        s;
        Log.d(TAG, "Unable to parse AppLink JSON", s);
_L6:
        return null;
        s;
        Log.d(TAG, "Unable to parse AppLink JSON", s);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static AppLinkData createFromUri(Uri uri)
    {
        if (uri == null)
        {
            return null;
        } else
        {
            AppLinkData applinkdata = new AppLinkData();
            applinkdata.targetUri = uri;
            return applinkdata;
        }
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionhandler)
    {
        fetchDeferredAppLinkData(context, null, completionhandler);
    }

    public static void fetchDeferredAppLinkData(final Context applicationContext, final String applicationIdCopy, final CompletionHandler completionHandler)
    {
        Validate.notNull(applicationContext, "context");
        Validate.notNull(completionHandler, "completionHandler");
        if (applicationIdCopy == null)
        {
            applicationIdCopy = Utility.getMetadataApplicationId(applicationContext);
        }
        Validate.notNull(applicationIdCopy, "applicationId");
        applicationContext = applicationContext.getApplicationContext();
        Settings.getExecutor().execute(new _cls1());
    }

    private static void fetchDeferredAppLinkFromServer(Context context, String s, CompletionHandler completionhandler)
    {
        Object obj;
        obj = com.facebook.model.GraphObject.Factory.create();
        ((GraphObject) (obj)).setProperty("event", "DEFERRED_APP_LINK");
        Utility.setAppEventAttributionParameters(((GraphObject) (obj)), AttributionIdentifiers.getAttributionIdentifiers(context), AppEventsLogger.getAnonymousAppDeviceGUID(context), Settings.getLimitEventAndDataUsage(context));
        ((GraphObject) (obj)).setProperty("application_package_name", context.getPackageName());
        context = String.format("%s/activities", new Object[] {
            s
        });
        context = Request.newPostRequest(null, context, ((GraphObject) (obj)), null).executeAndWait().getGraphObject();
        if (context == null) goto _L2; else goto _L1
_L1:
        context = context.getInnerJSONObject();
_L3:
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_335;
        }
        long l;
        String s1 = context.optString("applink_args");
        l = context.optLong("click_time", -1L);
        s = context.optString("applink_class");
        obj = context.optString("applink_url");
        if (TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_335;
        }
        context = createFromJson(s1);
        if (l == -1L)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        if (((AppLinkData) (context)).arguments != null)
        {
            ((AppLinkData) (context)).arguments.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", l);
        }
        if (((AppLinkData) (context)).argumentBundle != null)
        {
            ((AppLinkData) (context)).argumentBundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(l));
        }
_L4:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        if (((AppLinkData) (context)).arguments != null)
        {
            ((AppLinkData) (context)).arguments.put("com.facebook.platform.APPLINK_NATIVE_CLASS", s);
        }
        if (((AppLinkData) (context)).argumentBundle != null)
        {
            ((AppLinkData) (context)).argumentBundle.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", s);
        }
_L6:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        if (((AppLinkData) (context)).arguments != null)
        {
            ((AppLinkData) (context)).arguments.put("com.facebook.platform.APPLINK_NATIVE_URL", obj);
        }
        if (((AppLinkData) (context)).argumentBundle != null)
        {
            ((AppLinkData) (context)).argumentBundle.putString("com.facebook.platform.APPLINK_NATIVE_URL", ((String) (obj)));
        }
_L5:
        completionhandler.onDeferredAppLinkDataFetched(context);
        return;
_L2:
        context = null;
          goto _L3
        JSONException jsonexception;
        jsonexception;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L4
        s;
_L7:
        Utility.logd(TAG, "Unable to fetch deferred applink from server");
          goto _L5
        s;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L6
        s;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L5
        context;
        context = null;
          goto _L7
        context = null;
          goto _L5
    }

    private static Bundle toBundle(JSONObject jsonobject)
    {
        Bundle bundle = new Bundle();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = jsonobject.get(s);
            if (obj instanceof JSONObject)
            {
                bundle.putBundle(s, toBundle((JSONObject)obj));
            } else
            if (obj instanceof JSONArray)
            {
                obj = (JSONArray)obj;
                if (((JSONArray) (obj)).length() == 0)
                {
                    bundle.putStringArray(s, new String[0]);
                } else
                {
                    Object aobj[] = ((Object []) (((JSONArray) (obj)).get(0)));
                    if (aobj instanceof JSONObject)
                    {
                        aobj = new Bundle[((JSONArray) (obj)).length()];
                        for (int i = 0; i < ((JSONArray) (obj)).length(); i++)
                        {
                            aobj[i] = toBundle(((JSONArray) (obj)).getJSONObject(i));
                        }

                        bundle.putParcelableArray(s, ((android.os.Parcelable []) (aobj)));
                    } else
                    {
                        if (aobj instanceof JSONArray)
                        {
                            throw new FacebookException("Nested arrays are not supported.");
                        }
                        aobj = new String[((JSONArray) (obj)).length()];
                        for (int j = 0; j < ((JSONArray) (obj)).length(); j++)
                        {
                            aobj[j] = ((JSONArray) (obj)).get(j).toString();
                        }

                        bundle.putStringArray(s, ((String []) (aobj)));
                    }
                }
            } else
            {
                bundle.putString(s, obj.toString());
            }
        }

        return bundle;
    }

    public Bundle getArgumentBundle()
    {
        return argumentBundle;
    }

    public JSONObject getArguments()
    {
        return arguments;
    }

    public String getRef()
    {
        return ref;
    }

    public Bundle getRefererData()
    {
        if (argumentBundle != null)
        {
            return argumentBundle.getBundle("referer_data");
        } else
        {
            return null;
        }
    }

    public Uri getTargetUri()
    {
        return targetUri;
    }



    private class _cls1
        implements Runnable
    {

        final Context val$applicationContext;
        final String val$applicationIdCopy;
        final CompletionHandler val$completionHandler;

        public final void run()
        {
            AppLinkData.fetchDeferredAppLinkFromServer(applicationContext, applicationIdCopy, completionHandler);
        }

        _cls1()
        {
            applicationContext = context;
            applicationIdCopy = s;
            completionHandler = completionhandler;
            super();
        }
    }

}
