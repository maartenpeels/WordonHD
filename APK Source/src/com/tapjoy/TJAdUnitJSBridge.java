// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.tapjoy.mraid.view.MraidView;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TJWebViewJSInterface, TapjoyCache, TJAdUnitView, 
//            TJCOffers, TapjoyConnectCore, TapjoyVideoView, TapjoyCachedAssetData, 
//            TJEventOptimizer, TJEventRequest, TJEventData, TJEventManager, 
//            TJEvent, TJEventCallback, TapjoyVideo, TJWebViewJSInterfaceNotifier, 
//            TapjoyUtil, TJEventRequestCallback

public class TJAdUnitJSBridge
{
    private class ShowWebView extends AsyncTask
    {

        final TJAdUnitJSBridge this$0;
        WebView webView;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Boolean[])aobj);
        }

        protected transient Boolean[] doInBackground(Boolean aboolean[])
        {
            return aboolean;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean[])obj);
        }

        protected void onPostExecute(Boolean aboolean[])
        {
            final boolean visible = aboolean[0].booleanValue();
            boolean flag = aboolean[1].booleanValue();
            ((Activity)context).runOnUiThread(flag. new Runnable() {

                final ShowWebView this$1;
                final boolean val$transparent;
                final boolean val$visible;

                public void run()
                {
                    if (!visible) goto _L2; else goto _L1
_L1:
                    webView.setVisibility(0);
                    if (!transparent) goto _L4; else goto _L3
_L3:
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                    }
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        webView.setLayerType(1, null);
                    }
_L6:
                    return;
_L4:
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(255);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(-1);
                    }
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        webView.setLayerType(0, null);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L2:
                    webView.setVisibility(4);
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                        return;
                    }
                    if (true) goto _L6; else goto _L5
_L5:
                }

            
            {
                this$1 = final_showwebview;
                visible = flag;
                transparent = Z.this;
                super();
            }
            });
        }

        public ShowWebView(WebView webview)
        {
            this$0 = TJAdUnitJSBridge.this;
            super();
            webView = webview;
        }
    }


    private static final String TAG = "TJAdUnitJSBridge";
    public boolean allowRedirect;
    private View bannerView;
    private Context context;
    public boolean customClose;
    public boolean didLaunchOtherActivity;
    private boolean enabled;
    private TJEventData eventData;
    private TJWebViewJSInterface jsBridge;
    private LocationListener locationListener;
    private LocationManager locationManager;
    public String otherActivityCallbackID;
    private ProgressDialog progressDialog;
    private TJAdUnitJSBridge self;
    public boolean shouldClose;
    private WebView webView;

    public TJAdUnitJSBridge(Context context1, WebView webview, TJEventData tjeventdata)
    {
        bannerView = null;
        didLaunchOtherActivity = false;
        allowRedirect = true;
        otherActivityCallbackID = null;
        customClose = false;
        shouldClose = false;
        TapjoyLog.i("TJAdUnitJSBridge", "creating AdUnit/JS Bridge");
        context = context1;
        eventData = tjeventdata;
        self = this;
        webView = webview;
        if (webView == null)
        {
            TapjoyLog.e("TJAdUnitJSBridge", "Error: webView is NULL");
            return;
        } else
        {
            jsBridge = new TJWebViewJSInterface(webView, new TJWebViewJSInterfaceNotifier() {

                final TJAdUnitJSBridge this$0;

                public void dispatchMethod(String s, JSONObject jsonobject)
                {
                    if (!enabled) goto _L2; else goto _L1
_L1:
                    String s1 = null;
                    String s2 = jsonobject.getString("callbackId");
                    s1 = s2;
_L4:
                    jsonobject = jsonobject.getJSONObject("data");
                    com/tapjoy/TJAdUnitJSBridge.getMethod(s, new Class[] {
                        org/json/JSONObject, java/lang/String
                    }).invoke(self, new Object[] {
                        jsonobject, s1
                    });
_L2:
                    return;
                    s;
                    s.printStackTrace();
                    invokeJSCallback(s1, new Object[] {
                        Boolean.FALSE
                    });
                    return;
                    Exception exception;
                    exception;
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                super();
            }
            });
            webView.addJavascriptInterface(jsBridge, "AndroidJavascriptInterface");
            enabled = true;
            return;
        }
    }

    private File downloadFileFromURL(String s)
    {
        String s1 = s.substring(s.lastIndexOf('.'));
        java.io.FileOutputStream fileoutputstream;
        byte abyte0[];
        s = (new URL(s)).openStream();
        fileoutputstream = context.openFileOutput((new StringBuilder()).append("share_temp").append(s1).toString(), 1);
        abyte0 = new byte[4096];
_L3:
        int i = s.read(abyte0, 0, abyte0.length);
        if (i < 0) goto _L2; else goto _L1
_L1:
        fileoutputstream.write(abyte0, 0, i);
          goto _L3
        s;
        s.printStackTrace();
_L5:
        return new File(context.getFilesDir(), (new StringBuilder()).append("share_temp").append(s1).toString());
_L2:
        try
        {
            fileoutputstream.close();
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void alert(JSONObject jsonobject, final String callbackID)
    {
        Object obj;
        Object obj1;
        String s1;
        Object obj2;
        TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("alert_method: ").append(jsonobject).toString());
        obj1 = "";
        s1 = "";
        obj2 = null;
        obj = s1;
        String s = jsonobject.getString("title");
        obj = s1;
        obj1 = s;
        s1 = jsonobject.getString("message");
        obj = s1;
        obj1 = s;
        jsonobject = jsonobject.getJSONArray("buttons");
        obj1 = s;
        obj = s1;
_L2:
        obj = (new android.app.AlertDialog.Builder(context)).setTitle(((CharSequence) (obj1))).setMessage(((CharSequence) (obj))).create();
        if (jsonobject == null || jsonobject.length() == 0)
        {
            invokeJSCallback(callbackID, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        break; /* Loop/switch isn't completed */
        jsonobject;
        invokeJSCallback(callbackID, new Object[] {
            Boolean.FALSE
        });
        jsonobject.printStackTrace();
        jsonobject = obj2;
        if (true) goto _L2; else goto _L1
_L1:
        int i;
        obj1 = new ArrayList();
        i = 0;
_L6:
        if (i >= jsonobject.length())
        {
            break MISSING_BLOCK_LABEL_277;
        }
        i;
        JVM INSTR tableswitch 0 1: default 204
    //                   0 253
    //                   1 260;
           goto _L3 _L4 _L5
_L3:
        byte byte0 = -1;
_L7:
        try
        {
            ((ArrayList) (obj1)).add(jsonobject.getString(i));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        ((AlertDialog) (obj)).setButton(byte0, (CharSequence)((ArrayList) (obj1)).get(i), new android.content.DialogInterface.OnClickListener() {

            final TJAdUnitJSBridge this$0;
            final String val$callbackID;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                boolean flag = false;
                j;
                JVM INSTR tableswitch -3 -1: default 28
            //                           -3 58
            //                           -2 53
            //                           -1 63;
                   goto _L1 _L2 _L3 _L4
_L4:
                break MISSING_BLOCK_LABEL_63;
_L1:
                j = ((flag) ? 1 : 0);
_L5:
                try
                {
                    invokeJSCallback(callbackID, new Object[] {
                        Integer.valueOf(j)
                    });
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (DialogInterface dialoginterface)
                {
                    dialoginterface.printStackTrace();
                }
                break MISSING_BLOCK_LABEL_73;
_L3:
                j = 0;
                  goto _L5
_L2:
                j = 1;
                  goto _L5
                j = 2;
                  goto _L5
            }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                callbackID = s;
                super();
            }
        });
        i++;
        if (true) goto _L6; else goto _L4
_L4:
        byte0 = -2;
          goto _L7
_L5:
        byte0 = -3;
          goto _L7
        ((AlertDialog) (obj)).show();
        return;
    }

    public void cacheAsset(JSONObject jsonobject, String s)
    {
        Long long1;
        String s1 = "";
        long1 = Long.valueOf(0L);
        String s2;
        String s3;
        long l;
        try
        {
            s3 = jsonobject.getString("url");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to cache video. Invalid parameters.");
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        s2 = jsonobject.getString("offerId");
        s1 = s2;
_L4:
        l = jsonobject.getLong("timeToLive");
        jsonobject = Long.valueOf(l);
_L2:
        if (TapjoyCache.getInstance() != null)
        {
            invokeJSCallback(s, new Object[] {
                TapjoyCache.getInstance().cacheAssetFromURL(s3, s1, jsonobject.longValue())
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        jsonobject;
        jsonobject = long1;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void cachePathForURL(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getString("url");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                ""
            });
            return;
        }
        if (TapjoyCache.getInstance() != null)
        {
            invokeJSCallback(s, new Object[] {
                TapjoyCache.getInstance().getPathOfCachedURL(jsonobject)
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                ""
            });
            return;
        }
    }

    public void checkAppInstalled(JSONObject jsonobject, String s)
    {
label0:
        {
            Object obj = "";
            try
            {
                jsonobject = jsonobject.getString("bundle");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                jsonobject = ((JSONObject) (obj));
            }
            if (jsonobject == null || jsonobject.length() <= 0)
            {
                break label0;
            }
            obj = context.getPackageManager().getInstalledApplications(0).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break label0;
                }
            } while (!((ApplicationInfo)((Iterator) (obj)).next()).packageName.equals(jsonobject));
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        invokeJSCallback(s, new Object[] {
            Boolean.FALSE
        });
    }

    public void clearCache(JSONObject jsonobject, String s)
    {
        if (TapjoyCache.getInstance() != null)
        {
            TapjoyCache.getInstance().clearTapjoyCache();
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
    }

    public void closeRequested()
    {
        shouldClose = true;
        invokeJSAdunitMethod("closeRequested", new Object[0]);
    }

    public void destroy()
    {
        if (locationListener != null && locationManager != null)
        {
            locationManager.removeUpdates(locationListener);
            locationManager = null;
            locationListener = null;
        }
    }

    public void disable()
    {
        enabled = false;
    }

    public void dismiss(JSONObject jsonobject, String s)
    {
        if (context instanceof TJAdUnitView)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            ((Activity)context).finish();
        }
    }

    public void display()
    {
        invokeJSAdunitMethod("display", new Object[0]);
    }

    public void displayOffers(JSONObject jsonobject, String s)
    {
        Object obj = null;
        try
        {
            jsonobject = jsonobject.getString("currencyId");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            TapjoyLog.w("TJAdUnitJSBridge", "no currencyID for showOfferWall");
            jsonobject = obj;
        }
        (new TJCOffers(context)).showOffersWithCurrencyID(jsonobject, false, eventData, s, null);
    }

    public void displayRichMedia(final JSONObject json, String s)
    {
        String s1;
        boolean flag;
        flag = false;
        s1 = null;
        boolean flag1 = json.getBoolean("inline");
        flag = flag1;
_L4:
        String s2 = json.getString("html");
        s1 = s2;
_L2:
        if (s1 == null)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            ((Activity)context).runOnUiThread(new Runnable() {

                final TJAdUnitJSBridge this$0;
                final JSONObject val$json;

                public void run()
                {
                    String s3 = null;
                    String s4 = json.getString("html");
                    s3 = s4;
_L2:
                    if (bannerView != null && bannerView.getParent() != null)
                    {
                        ((ViewGroup)bannerView.getParent()).removeView(bannerView);
                    }
                    MraidView mraidview = new MraidView(context);
                    webView.getSettings().setJavaScriptEnabled(true);
                    mraidview.setPlacementType(com.tapjoy.mraid.view.MraidView.PLACEMENT_TYPE.INLINE);
                    mraidview.setLayoutParams(new android.view.ViewGroup.LayoutParams(640, 100));
                    mraidview.setInitialScale(100);
                    mraidview.setBackgroundColor(0);
                    mraidview.loadDataWithBaseURL(null, s3, "text/html", "utf-8", null);
                    int i = ((WindowManager)((Activity)context).getSystemService("window")).getDefaultDisplay().getWidth();
                    bannerView = TapjoyUtil.scaleDisplayAd(mraidview, i);
                    ((Activity)context).addContentView(bannerView, new android.view.ViewGroup.LayoutParams(i, (int)(100D * ((double)i / 640D))));
                    return;
                    Exception exception1;
                    exception1;
                    exception1.printStackTrace();
                    if (true) goto _L2; else goto _L1
_L1:
                }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                json = jsonobject;
                super();
            }
            });
            return;
        } else
        {
            json = new Intent(context, com/tapjoy/TJAdUnitView);
            json.putExtra("tjevent", eventData);
            json.putExtra("view_type", 3);
            json.putExtra("html", s1);
            json.putExtra("base_url", TapjoyConnectCore.getHostURL());
            json.putExtra("callback_id", s);
            ((Activity)context).startActivityForResult(json, 0);
            return;
        }
        exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void displayStoreURL(JSONObject jsonobject, String s)
    {
        displayURL(jsonobject, s);
    }

    public void displayURL(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getString("url");
            didLaunchOtherActivity = true;
            otherActivityCallbackID = s;
            jsonobject = new Intent("android.intent.action.VIEW", Uri.parse(jsonobject));
            ((Activity)context).startActivity(jsonobject);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
        }
        jsonobject.printStackTrace();
    }

    public void displayVideo(JSONObject jsonobject, String s)
    {
        String s1;
        HashMap hashmap;
        s1 = "";
        hashmap = new HashMap();
        Object obj = jsonobject.getJSONObject("trackingUrls");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        Iterator iterator = ((JSONObject) (obj)).keys();
_L1:
        String s2;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_119;
        }
        s2 = (String)iterator.next();
        hashmap.put(s2, ((JSONObject) (obj)).getString(s2));
          goto _L1
        Exception exception2;
        exception2;
        TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("no tracking url for ").append(((JSONObject) (obj)).getString(s2)).toString());
          goto _L1
        Exception exception;
        exception;
        TapjoyLog.i("TJAdUnitJSBridge", "no video tracking urls");
        exception = jsonobject.getString("cancelMessage");
        s1 = exception;
_L3:
        Intent intent;
        Exception exception1;
        TapjoyCachedAssetData tapjoycachedassetdata;
        try
        {
            jsonobject = jsonobject.getString("url");
            intent = new Intent(context, com/tapjoy/TapjoyVideoView);
            if (TapjoyCache.getInstance() == null)
            {
                break MISSING_BLOCK_LABEL_189;
            }
            tapjoycachedassetdata = TapjoyCache.getInstance().getCachedDataForURL(jsonobject);
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            jsonobject.printStackTrace();
            return;
        }
        if (tapjoycachedassetdata == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        intent.putExtra("CACHED_VIDEO_LOCATION", tapjoycachedassetdata.getLocalFilePath());
        intent.putExtra("VIDEO_URL", jsonobject);
        intent.putExtra("VIDEO_CANCEL_MESSAGE", s1);
        intent.putExtra("VIDEO_SHOULD_DISMISS", true);
        intent.putExtra("callback_id", s);
        intent.putExtra("VIDEO_TRACKING_URLS", hashmap);
        ((Activity)context).startActivityForResult(intent, 0);
        return;
        exception1;
        TapjoyLog.w("TJAdUnitJSBridge", "no cancelMessage");
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void eventOptimizationCallback(JSONObject jsonobject, String s)
    {
        try
        {
            String s1 = jsonobject.getString("token");
            boolean flag = jsonobject.getBoolean("result");
            TJEventOptimizer.getInstance().eventOptimizationCallback(s1, Boolean.valueOf(flag).booleanValue());
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        jsonobject.printStackTrace();
    }

    public void getCachedAssets(JSONObject jsonobject, String s)
    {
        if (TapjoyCache.getInstance() != null)
        {
            invokeJSCallback(s, new Object[] {
                TapjoyCache.getInstance().cachedAssetsToJSON()
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                ""
            });
            return;
        }
    }

    public void getLocation(JSONObject jsonobject, String s)
    {
        float f;
        boolean flag;
        f = 100F;
        flag = false;
        float f1 = Float.valueOf(jsonobject.getString("gpsAccuracy")).floatValue();
        f = f1;
_L3:
        boolean flag1 = Boolean.valueOf(jsonobject.getString("enabled")).booleanValue();
        flag = flag1;
_L1:
        locationManager = (LocationManager)context.getSystemService("location");
        jsonobject = new Criteria();
        jsonobject = locationManager.getBestProvider(jsonobject, false);
        if (locationListener == null)
        {
            locationListener = new LocationListener() {

                final TJAdUnitJSBridge this$0;

                public void onLocationChanged(Location location)
                {
                    if (context == null || webView == null)
                    {
                        if (locationManager != null && locationListener != null)
                        {
                            TapjoyLog.i("TJAdUnitJSBridge", "stopping updates");
                            locationManager.removeUpdates(locationListener);
                        }
                    } else
                    if (location != null)
                    {
                        HashMap hashmap = new HashMap();
                        hashmap.put("lat", Double.valueOf(location.getLatitude()));
                        hashmap.put("long", Double.valueOf(location.getLongitude()));
                        hashmap.put("altitude", Double.valueOf(location.getAltitude()));
                        hashmap.put("timestamp", Long.valueOf(location.getTime()));
                        hashmap.put("speed", Float.valueOf(location.getSpeed()));
                        hashmap.put("course", Float.valueOf(location.getBearing()));
                        invokeJSAdunitMethod("locationUpdated", hashmap);
                        return;
                    }
                }

                public void onProviderDisabled(String s1)
                {
                }

                public void onProviderEnabled(String s1)
                {
                }

                public void onStatusChanged(String s1, int i, Bundle bundle)
                {
                }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                super();
            }
            };
        }
        if (flag)
        {
            if (jsonobject != null)
            {
                locationManager.requestLocationUpdates(jsonobject, 0L, f, locationListener);
                invokeJSCallback(s, new Object[] {
                    Boolean.TRUE
                });
                return;
            } else
            {
                invokeJSCallback(s, new Object[] {
                    Boolean.FALSE
                });
                return;
            }
        }
        break MISSING_BLOCK_LABEL_161;
        jsonobject;
        jsonobject.printStackTrace();
          goto _L1
        if (locationManager != null && locationListener != null)
        {
            locationManager.removeUpdates(locationListener);
        }
        invokeJSCallback(s, new Object[] {
            Boolean.TRUE
        });
        return;
        Exception exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void invokeJSAdunitMethod(String s, Map map)
    {
        jsBridge.callback(map, s, null);
    }

    public transient void invokeJSAdunitMethod(String s, Object aobj[])
    {
        aobj = new ArrayList(Arrays.asList(aobj));
        jsBridge.callback(((ArrayList) (aobj)), s, null);
    }

    public void invokeJSCallback(String s, Map map)
    {
        jsBridge.callback(map, "", s);
    }

    public transient void invokeJSCallback(String s, Object aobj[])
    {
        aobj = new ArrayList(Arrays.asList(aobj));
        jsBridge.callback(((ArrayList) (aobj)), "", s);
    }

    public void log(JSONObject jsonobject, String s)
    {
        try
        {
            TapjoyLog.i("TJAdUnitJSBridge", jsonobject.getString("message"));
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        jsonobject.printStackTrace();
    }

    public void nativeEval(final JSONObject json, final String callbackID)
    {
        ((Activity)context).runOnUiThread(new Runnable() {

            final TJAdUnitJSBridge this$0;
            final String val$callbackID;
            final JSONObject val$json;

            public void run()
            {
                if (android.os.Build.VERSION.SDK_INT < 19)
                {
                    break MISSING_BLOCK_LABEL_50;
                }
                webView.evaluateJavascript(json.getString("command"), null);
_L1:
                invokeJSCallback(callbackID, new Object[] {
                    Boolean.TRUE
                });
                return;
                try
                {
                    webView.loadUrl((new StringBuilder()).append("javascript:").append(json.getString("command")).toString());
                }
                catch (Exception exception)
                {
                    invokeJSCallback(callbackID, new Object[] {
                        Boolean.FALSE
                    });
                    return;
                }
                  goto _L1
            }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                json = jsonobject;
                callbackID = s;
                super();
            }
        });
    }

    public void openApp(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getString("bundle");
            jsonobject = context.getPackageManager().getLaunchIntentForPackage(jsonobject);
            context.startActivity(jsonobject);
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        jsonobject.printStackTrace();
    }

    public void present(JSONObject jsonobject, String s)
    {
        Boolean boolean1;
        Boolean boolean3;
        boolean1 = Boolean.valueOf(false);
        boolean3 = Boolean.valueOf(jsonobject.getString("visible"));
        Boolean boolean2 = Boolean.valueOf(jsonobject.getString("transparent"));
        boolean1 = boolean2;
_L2:
        try
        {
            customClose = Boolean.valueOf(jsonobject.getString("customClose")).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject) { }
        try
        {
            (new ShowWebView(webView)).execute(new Boolean[] {
                boolean3, boolean1
            });
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        jsonobject.printStackTrace();
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void removeAssetFromCache(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getString("url");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to cache video. Invalid parameters.");
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        if (TapjoyCache.getInstance() != null)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.valueOf(TapjoyCache.getInstance().removeAssetFromCache(jsonobject))
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
    }

    public void sendActionCallback(JSONObject jsonobject, final String callbackID)
    {
        String s;
        TJEventRequest tjeventrequest;
        tjeventrequest = new TJEventRequest();
        s = null;
        String s1 = jsonobject.getString("type");
        s = s1;
_L3:
        Exception exception;
        try
        {
            tjeventrequest.quantity = Integer.valueOf(jsonobject.getString("quantity")).intValue();
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        try
        {
            tjeventrequest.identifier = jsonobject.getString("identifier");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
        }
        if (s != null && tjeventrequest.identifier != null) goto _L2; else goto _L1
_L1:
        TapjoyLog.i("TJAdUnitJSBridge", "sendActionCallback: null type or identifier");
        invokeJSCallback(callbackID, new Object[] {
            Boolean.FALSE
        });
_L8:
        return;
        exception;
        exception.printStackTrace();
          goto _L3
_L2:
        if (!s.equals("currency")) goto _L5; else goto _L4
_L4:
        tjeventrequest.type = 3;
_L7:
        if (tjeventrequest.type == 0)
        {
            TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("unknown type: ").append(s).toString());
            invokeJSCallback(callbackID, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        break; /* Loop/switch isn't completed */
_L5:
        if (s.equals("inAppPurchase"))
        {
            tjeventrequest.type = 1;
        } else
        if (s.equals("navigation"))
        {
            tjeventrequest.type = 4;
        } else
        if (s.equals("virtualGood"))
        {
            tjeventrequest.type = 2;
        }
        if (true) goto _L7; else goto _L6
_L6:
        tjeventrequest.callback = new TJEventRequestCallback() {

            final TJAdUnitJSBridge this$0;
            final String val$callbackID;

            public void cancelled()
            {
                invokeJSCallback(callbackID, new Object[] {
                    Boolean.FALSE
                });
            }

            public void completed()
            {
                invokeJSCallback(callbackID, new Object[] {
                    Boolean.TRUE
                });
            }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                callbackID = s;
                super();
            }
        };
        jsonobject = TJEventManager.get(eventData.guid);
        if (jsonobject != null)
        {
            jsonobject.getCallback().didRequestAction(jsonobject, tjeventrequest);
            return;
        }
          goto _L8
    }

    public void setAllowRedirect(JSONObject jsonobject, String s)
    {
        boolean flag = true;
        boolean flag1 = jsonobject.getBoolean("enabled");
        flag = flag1;
_L2:
        allowRedirect = flag;
        invokeJSCallback(s, new Object[] {
            Boolean.TRUE
        });
        return;
        jsonobject;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void setCloseButtonVisible(JSONObject jsonobject, String s)
    {
        TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("setCloseButtonVisible_method: ").append(jsonobject).toString());
        try
        {
            final boolean buttonVisible = jsonobject.getBoolean("visible");
            ((Activity)context).runOnUiThread(new Runnable() {

                final TJAdUnitJSBridge this$0;
                final boolean val$buttonVisible;

                public void run()
                {
                    ((TJAdUnitView)context).setCloseButtonVisibility(buttonVisible);
                }

            
            {
                this$0 = TJAdUnitJSBridge.this;
                buttonVisible = flag;
                super();
            }
            });
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        jsonobject.printStackTrace();
    }

    public void setContext(Context context1)
    {
        context = context1;
    }

    public void setEventPreloadLimit(JSONObject jsonobject, String s)
    {
        if (TapjoyCache.getInstance() != null)
        {
            int i;
            try
            {
                i = jsonobject.getInt("eventPreloadLimit");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                TapjoyLog.w("TJAdUnitJSBridge", "Unable to set Tapjoy cache's event preload limit. Invalid parameters.");
                invokeJSCallback(s, new Object[] {
                    Boolean.FALSE
                });
                return;
            }
            TapjoyCache.getInstance().setEventPreloadLimit(i);
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
            return;
        } else
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
    }

    public void setSpinnerVisible(JSONObject jsonobject, String s)
    {
        String s3;
        String s1 = "Loading...";
        s3 = "";
        String s2;
        boolean flag;
        try
        {
            flag = jsonobject.getBoolean("visible");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            jsonobject.printStackTrace();
            return;
        }
        s2 = jsonobject.getString("title");
        s1 = s2;
        jsonobject = jsonobject.getString("message");
        s1 = s2;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        progressDialog = ProgressDialog.show(context, s1, jsonobject);
_L4:
        invokeJSCallback(s, new Object[] {
            Boolean.TRUE
        });
        return;
_L2:
        if (progressDialog != null)
        {
            progressDialog.dismiss();
        }
        if (true) goto _L4; else goto _L3
_L3:
        jsonobject;
        jsonobject = s3;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void share(JSONObject jsonobject, String s)
    {
        String s3;
        String s4;
        s4 = jsonobject.getString("network");
        s3 = jsonobject.getString("message");
        Object obj;
        String s1;
        String s2;
        boolean flag1;
        obj = null;
        s1 = null;
        s2 = null;
        flag1 = false;
        Intent intent = new Intent("android.intent.action.SEND");
        Object obj1 = jsonobject.getString("imageURL");
        obj = obj1;
_L7:
        jsonobject = jsonobject.getString("linkURL");
_L8:
        s1 = s2;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        obj1 = downloadFileFromURL(((String) (obj)));
        s1 = s2;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        s1 = (new StringBuilder()).append("file://").append(((File) (obj1)).getAbsolutePath()).toString();
        s2 = s3;
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        s2 = (new StringBuilder()).append(s3).append("\n").append(jsonobject).toString();
        intent.putExtra("android.intent.extra.TEXT", s2);
        if (!s4.equals("facebook")) goto _L2; else goto _L1
_L1:
        if (obj == null || s1 == null) goto _L4; else goto _L3
_L3:
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.STREAM", Uri.parse(s1));
_L9:
        jsonobject = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
_L6:
        boolean flag = flag1;
        if (!jsonobject.hasNext())
        {
            break MISSING_BLOCK_LABEL_299;
        }
        obj = (ResolveInfo)jsonobject.next();
        if (!((ResolveInfo) (obj)).activityInfo.packageName.toLowerCase(Locale.ENGLISH).contains(s4) && !((ResolveInfo) (obj)).activityInfo.name.toLowerCase(Locale.ENGLISH).contains(s4)) goto _L6; else goto _L5
_L5:
        intent.setPackage(((ResolveInfo) (obj)).activityInfo.packageName);
        flag = true;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        Exception exception;
        try
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
        }
        break MISSING_BLOCK_LABEL_349;
        exception;
        TapjoyLog.i("TJAdUnitJSBridge", "no imageURL");
          goto _L7
        jsonobject.printStackTrace();
        return;
        jsonobject;
        TapjoyLog.i("TJAdUnitJSBridge", "no linkURL");
        jsonobject = s1;
          goto _L8
_L4:
        intent.setType("text/plain");
          goto _L9
_L2:
        if (!s4.equals("twitter")) goto _L9; else goto _L10
_L10:
        intent.setType("*/*");
        if (obj == null || s1 == null) goto _L9; else goto _L11
_L11:
        intent.putExtra("android.intent.extra.STREAM", Uri.parse(s1));
          goto _L9
        didLaunchOtherActivity = true;
        otherActivityCallbackID = s;
        jsonobject = Intent.createChooser(intent, "Select");
        ((Activity)context).startActivity(jsonobject);
        return;
          goto _L7
    }

    public void shouldClose(JSONObject jsonobject, String s)
    {
        try
        {
            if (Boolean.valueOf(jsonobject.getString("close")).booleanValue() && (context instanceof TJAdUnitView))
            {
                ((Activity)context).finish();
            }
            invokeJSCallback(s, new Object[] {
                Boolean.TRUE
            });
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            invokeJSCallback(s, new Object[] {
                Boolean.FALSE
            });
            ((Activity)context).finish();
            jsonobject.printStackTrace();
        }
        shouldClose = false;
    }

    public void triggerEvent(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getString("eventName");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            TapjoyLog.w("TJAdUnitJSBridge", "Unable to triggerEvent. No event name.");
            return;
        }
        if (jsonobject.equals("start"))
        {
            TapjoyVideo.videoNotifierStart();
        } else
        {
            if (jsonobject.equals("complete"))
            {
                TapjoyVideo.videoNotifierComplete();
                return;
            }
            if (jsonobject.equals("error"))
            {
                TapjoyVideo.videoNotifierError(3);
                return;
            }
        }
    }





/*
    static View access$202(TJAdUnitJSBridge tjadunitjsbridge, View view)
    {
        tjadunitjsbridge.bannerView = view;
        return view;
    }

*/




}
