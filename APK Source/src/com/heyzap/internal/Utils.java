// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.TouchDelegate;
import android.view.View;
import com.heyzap.sdk.ads.HeyzapAds;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.heyzap.internal:
//            Logger, Base64, Constants, AdvertisingIdCallable, 
//            ExecutorPool, SettableFuture

public class Utils
{
    static interface ResponseHandler
    {

        public abstract void onFailure(Throwable throwable);

        public abstract void onSuccess(String s);
    }


    private static final String CACHE_DIR = "com.heyzap.sdk";
    public static final String HEYZAP_PACKAGE = "com.heyzap.android";
    private static final String IMAGE_CACHE_DIR = "com.heyzap.sdk.images";
    private static Object advertiserIdLock = new Object();
    private static String advertisingId = null;
    private static Future advertisingIdAvailable;
    private static HashMap cachedParams;
    private static float density = -1F;
    private static String deviceId = "unknown";
    private static Boolean limitAdTrackingEnabled = Boolean.valueOf(false);
    private static String packageName = "unknown";
    private static Object paramLock = new Object();
    ExecutorService executorPool;

    public Utils()
    {
        executorPool = Executors.newCachedThreadPool();
    }

    public static Boolean activityExistsInPackage(Activity activity, Class class1)
    {
        boolean flag;
        if ((new Intent(activity, class1)).resolveActivityInfo(activity.getPackageManager(), 0) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public static boolean androidVersionSupported()
    {
        int i;
        try
        {
            i = Integer.parseInt(android.os.Build.VERSION.SDK);
        }
        catch (Exception exception)
        {
            return false;
        }
        return i >= 7;
    }

    public static String capitalize(String s)
    {
        return (new StringBuilder()).append(s.substring(0, 1).toUpperCase(Locale.US)).append(s.substring(1)).toString();
    }

    public static Boolean classExists(String s)
    {
        try
        {
            Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }

    public static void clickWrap(Context context, View view, View view1)
    {
        clickWrap(context, view, view1, 0);
    }

    public static void clickWrap(Context context, View view, View view1, int i)
    {
        clickWrap(context, view, view1, i, i, i, i);
    }

    public static void clickWrap(Context context, View view, View view1, int i, int j, int k, int l)
    {
        if (view != null)
        {
            view.post(new Runnable(view, context, i, j, k, l, view1) {

                final Context val$context;
                final int val$extraPaddingDpBottom;
                final int val$extraPaddingDpLeft;
                final int val$extraPaddingDpRight;
                final int val$extraPaddingDpTop;
                final View val$inner;
                final View val$wrapper;

                public void run()
                {
                    Rect rect = new Rect();
                    wrapper.getHitRect(rect);
                    rect.top = rect.top - Utils.getScaledSize(context, extraPaddingDpTop);
                    rect.right = rect.right + Utils.getScaledSize(context, extraPaddingDpRight);
                    rect.bottom = rect.bottom + Utils.getScaledSize(context, extraPaddingDpBottom);
                    rect.left = rect.left - Utils.getScaledSize(context, extraPaddingDpLeft);
                    wrapper.setTouchDelegate(new TouchDelegate(rect, inner));
                }

            
            {
                wrapper = view;
                context = context1;
                extraPaddingDpTop = i;
                extraPaddingDpRight = j;
                extraPaddingDpBottom = k;
                extraPaddingDpLeft = l;
                inner = view1;
                super();
            }
            });
        }
    }

    private static String convertStreamToString(InputStream inputstream)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        stringbuilder = new StringBuilder();
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
          goto _L1
        IOException ioexception;
        ioexception;
        Logger.trace(ioexception);
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Logger.trace(inputstream);
        }
        return stringbuilder.toString();
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Logger.trace(inputstream);
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Exception exception;
        exception;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Logger.trace(inputstream);
        }
        throw exception;
    }

    public static void createCacheDir(Context context)
    {
        context = new File(getCacheDirAbsolutePath(context));
        if (!context.exists())
        {
            context.mkdirs();
        }
    }

    public static int daysBetween(Date date, Date date1)
    {
        return Math.abs((int)((date.getTime() - date1.getTime()) / 0x5265c00L));
    }

    public static void deleteDirectory(File file)
        throws IOException
    {
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

    public static int dpToPx(Context context, int i)
    {
        float f;
        if (density > 0.0F)
        {
            f = density;
        } else
        {
            f = context.getResources().getDisplayMetrics().density;
        }
        density = f;
        return (int)((float)i * density + 0.5F);
    }

    public static Boolean externalStorageIsAvailableAndWritable()
    {
        String s = Environment.getExternalStorageState();
        boolean flag;
        boolean flag1;
        boolean flag2;
        if ("mounted".equals(s))
        {
            flag = true;
            flag1 = true;
        } else
        if ("mounted_ro".equals(s))
        {
            flag = false;
            flag1 = true;
        } else
        {
            flag = false;
            flag1 = false;
        }
        if (flag1 && flag)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        return Boolean.valueOf(flag2);
    }

    static HashMap extraParams(Context context)
    {
        HashMap hashmap = new HashMap();
        Object obj1 = paramLock;
        obj1;
        JVM INSTR monitorenter ;
        if (cachedParams != null) goto _L2; else goto _L1
_L1:
        cachedParams = new HashMap();
        Object obj = Integer.valueOf(0);
        int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        obj = Integer.valueOf(i);
_L3:
        cachedParams.put("app_version", String.valueOf(obj));
        context.getResources().getDisplayMetrics();
        cachedParams = new HashMap();
        cachedParams.put("sdk_version", "8.0.7");
        cachedParams.put("android_version", android.os.Build.VERSION.SDK);
        cachedParams.put("external_package", getPackageName(context));
        cachedParams.put("game_package", getPackageName(context));
        if (isTablet(context))
        {
            obj = "tablet";
        } else
        {
            obj = "phone";
        }
        cachedParams.put("device_form_factor", obj);
        cachedParams.put("device_model", Build.MODEL);
        cachedParams.put("device_type", Build.DEVICE);
        obj = HeyzapAds.config.publisherId;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        cachedParams.put("publisher_sdk_key", obj);
        if (!isAmazon())
        {
            break MISSING_BLOCK_LABEL_339;
        }
        cachedParams.put("platform", "amazon");
        cachedParams.put("sdk_platform", "amazon");
_L2:
        hashmap.putAll(cachedParams);
        obj1;
        JVM INSTR monitorexit ;
        if (getAdvertisingId(context) != null && !isAmazon())
        {
            hashmap.put("device_id", getAdvertisingId(context));
            hashmap.put("advertising_id", getAdvertisingId(context));
            Exception exception;
            if (!getLimitAdTrackingEnabled(context).booleanValue())
            {
                context = "1";
            } else
            {
                context = "0";
            }
            hashmap.put("tracking_enabled", context);
            return hashmap;
        } else
        {
            hashmap.put("device_id", getDeviceId(context));
            return hashmap;
        }
        exception;
        Logger.trace(exception);
          goto _L3
        context;
        obj1;
        JVM INSTR monitorexit ;
        throw context;
        cachedParams.put("platform", "android");
        cachedParams.put("sdk_platform", "android");
          goto _L2
    }

    public static String getAbsolutePath(Context context, String s)
    {
        return String.format("%s/files/%s", new Object[] {
            context.getCacheDir().getAbsolutePath(), s
        });
    }

    public static String getAdvertisingId(Context context)
    {
        if (advertisingIdAvailable == null)
        {
            loadAdvertisingId(context);
        }
        if (advertisingIdAvailable != null)
        {
            context = (Boolean)advertisingIdAvailable.get();
        }
        context = advertisingId;
        return context;
        context;
        Logger.trace(context);
_L2:
        return advertisingId;
        context;
        Logger.trace(context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getAppLabel(Context context)
    {
        try
        {
            context = context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = null;
        }
        if (context == null)
        {
            return null;
        } else
        {
            return context.toString();
        }
    }

    public static String getCacheDirAbsolutePath(Context context)
    {
        if (context != null)
        {
            return String.format("%s/%s", new Object[] {
                context.getCacheDir(), "com.heyzap.sdk"
            });
        } else
        {
            return null;
        }
    }

    public static String getCachePath(Context context, String s)
    {
        if (context != null && s != null)
        {
            return String.format("%s/%s", new Object[] {
                getCacheDirAbsolutePath(context), s
            });
        } else
        {
            return null;
        }
    }

    public static String getDeviceId(Context context)
    {
        if (deviceId.equals("unknown") && context != null)
        {
            String s = Build.PRODUCT;
            context = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (s != null && context != null)
            {
                deviceId = (new StringBuilder()).append(s).append("_").append(context).toString();
            }
        }
        return deviceId;
    }

    public static String getImageCacheDirAbsolutePath(Context context)
    {
        if (context != null)
        {
            return String.format("%s/%s", new Object[] {
                context.getCacheDir(), "com.heyzap.sdk.images"
            });
        } else
        {
            return null;
        }
    }

    public static int getInverseScaledSize(Context context, float f)
    {
        if (density <= 0.0F)
        {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int)(f / density);
    }

    public static int getInverseScaledSize(Context context, int i)
    {
        return getInverseScaledSize(context, i);
    }

    public static Boolean getLimitAdTrackingEnabled(Context context)
    {
        if (advertisingIdAvailable == null)
        {
            loadAdvertisingId(context);
        }
        context = (Boolean)advertisingIdAvailable.get();
        context = limitAdTrackingEnabled;
        return context;
        context;
        Logger.trace(context);
_L2:
        return limitAdTrackingEnabled;
        context;
        Logger.trace(context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getPackageName(Context context)
    {
        if (packageName.equals("unknown") && context != null)
        {
            String s = context.getPackageName();
            context = s;
            if (s.endsWith(".debug"))
            {
                context = s.substring(0, s.length() - 6);
            }
            packageName = context;
        }
        return packageName;
    }

    public static Integer getPackageVersion(Context context)
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.trace(context);
            return Integer.valueOf(0);
        }
        return Integer.valueOf(i);
    }

    public static int getScaledSize(Context context, float f)
    {
        if (density <= 0.0F)
        {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int)(density * f);
    }

    public static int getScaledSize(Context context, int i)
    {
        return getScaledSize(context, i);
    }

    public static int getSdkVersion()
    {
        return android.os.Build.VERSION.SDK_INT;
    }

    public static String getSignatureHash(Context context)
    {
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
            context = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(context), 2);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.trace(context);
            return "";
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.trace(context);
            return "";
        }
        return context;
    }

    public static int getStatusBarHeight(Context context)
    {
        int i = 0;
        int j = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (j > 0)
        {
            i = context.getResources().getDimensionPixelSize(j);
        }
        return i;
    }

    public static String hex(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuffer.append(Integer.toHexString(abyte0[i] & 0xff | 0x100).substring(1, 3));
        }

        return stringbuffer.toString();
    }

    public static String hexString()
    {
        Random random = new Random();
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < 20; i++)
        {
            stringbuilder.append("ABCDEF1234567890".charAt(random.nextInt("ABCDEF1234567890".length())));
        }

        return stringbuilder.toString();
    }

    public static boolean heyzapIsInstalled(Context context)
    {
        return packageIsInstalled("com.heyzap.android", context);
    }

    private static boolean isAirplaneModeOn(Context context)
    {
        return android.provider.Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isAmazon()
    {
        return Build.MANUFACTURER.equals("Amazon") || HeyzapAds.config.store.equals("amazon");
    }

    public static boolean isApplicationOnTop(Context context)
    {
        Object obj;
        obj = (ActivityManager)context.getSystemService("activity");
        context = context.getApplicationContext().getPackageName();
        obj = ((ActivityManager) (obj)).getRunningAppProcesses();
        int i = 0;
_L2:
        int j;
        if (i >= ((List) (obj)).size())
        {
            break; /* Loop/switch isn't completed */
        }
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((List) (obj)).get(i);
        if (!runningappprocessinfo.processName.equals(context))
        {
            break MISSING_BLOCK_LABEL_73;
        }
        j = runningappprocessinfo.importance;
        if (j == 100)
        {
            return true;
        }
        i++;
        if (true) goto _L2; else goto _L1
        context;
        Logger.trace(context);
_L1:
        return false;
    }

    public static Boolean isDebug(Context context)
    {
        return Boolean.valueOf(packageIsInstalled(Constants.SNAKE_PACKAGE, context));
    }

    public static Boolean isExpired(Long long1, Integer integer)
    {
        if ((long)integer.intValue() < System.currentTimeMillis() - long1.longValue())
        {
            return Boolean.valueOf(true);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public static boolean isFroyo()
    {
        return getSdkVersion() >= 8;
    }

    public static boolean isGingerbread()
    {
        return getSdkVersion() >= 9;
    }

    public static boolean isHoneycomb()
    {
        return getSdkVersion() >= 11;
    }

    public static boolean isHoneycombTablet(Context context)
    {
        return isHoneycomb() && isTablet(context);
    }

    public static Boolean isOnMainThread()
    {
        boolean flag;
        if (Looper.getMainLooper() == Looper.myLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public static boolean isOnline(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        return connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isConnectedOrConnecting() && !isAirplaneModeOn(context);
    }

    public static boolean isTablet(Context context)
    {
        return (context.getResources().getConfiguration().screenLayout & 0xf) >= 3;
    }

    public static void load(Context context)
    {
        createCacheDir(context);
        loadAdvertisingId(context);
    }

    private static void loadAdvertisingId(Context context)
    {
        synchronized (advertiserIdLock)
        {
            if (advertisingIdAvailable == null || advertisingIdAvailable.isDone())
            {
                context = new AdvertisingIdCallable(context.getApplicationContext());
                advertisingIdAvailable = ExecutorPool.getInstance().submit(context);
            }
        }
        return;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    public static boolean marketInstalled(Context context)
    {
        boolean flag;
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.heyzap.android"));
            flag = context.getPackageManager().queryIntentActivities(intent, 0x10000).isEmpty();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return !flag;
    }

    public static String md5Hex(String s)
    {
        s = hex(MessageDigest.getInstance("MD5").digest(s.getBytes("CP1252")));
        return s;
        s;
_L2:
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Boolean packageHasPermissions(Activity activity, ArrayList arraylist)
    {
        for (Iterator iterator = activity.getPackageManager().getInstalledPackages(4096).iterator(); iterator.hasNext();)
        {
            PackageInfo packageinfo = (PackageInfo)iterator.next();
            if (packageinfo.packageName.equals(getPackageName(activity)) && packageinfo.requestedPermissions != null)
            {
                activity = new ArrayList(Arrays.asList(packageinfo.requestedPermissions));
                for (arraylist = arraylist.iterator(); arraylist.hasNext();)
                {
                    if (!activity.contains((String)arraylist.next()))
                    {
                        return Boolean.valueOf(false);
                    }
                }

                return Boolean.valueOf(true);
            }
        }

        return Boolean.valueOf(false);
    }

    public static Boolean packageHasReceiver(Activity activity, String s)
    {
        for (Iterator iterator = activity.getPackageManager().getInstalledPackages(2).iterator(); iterator.hasNext();)
        {
            PackageInfo packageinfo = (PackageInfo)iterator.next();
            if (packageinfo.packageName.equals(getPackageName(activity)))
            {
                activity = packageinfo.receivers;
                if (activity != null)
                {
                    int j = activity.length;
                    for (int i = 0; i < j; i++)
                    {
                        if (((ActivityInfo) (activity[i])).name.equals(s))
                        {
                            return Boolean.valueOf(true);
                        }
                    }

                }
                return Boolean.valueOf(false);
            }
        }

        return Boolean.valueOf(false);
    }

    public static boolean packageIsInstalled(String s, Context context)
    {
        boolean flag1 = false;
        int i;
        boolean flag;
        try
        {
            context = context.getPackageManager();
            s = context.getLaunchIntentForPackage(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        flag = flag1;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        i = context.queryIntentActivities(s, 0x10000).size();
        flag = flag1;
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static Boolean probablyHasGooglePlayServices(Activity activity)
    {
        for (Iterator iterator = activity.getPackageManager().getInstalledPackages(128).iterator(); iterator.hasNext();)
        {
            PackageInfo packageinfo = (PackageInfo)iterator.next();
            if (packageinfo.packageName.equals(getPackageName(activity)))
            {
                activity = packageinfo.applicationInfo;
                if (activity != null)
                {
                    activity = ((ApplicationInfo) (activity)).metaData;
                    if (activity != null && activity.containsKey("com.google.android.gms.version"))
                    {
                        return Boolean.valueOf(true);
                    }
                }
                return Boolean.valueOf(false);
            }
        }

        return Boolean.valueOf(false);
    }

    public static void runOnMainThreadAndBlock(Activity activity, Integer integer, Runnable runnable)
        throws TimeoutException, ExecutionException, InterruptedException
    {
        if (Looper.myLooper() != null && Looper.getMainLooper() == Looper.myLooper())
        {
            runnable.run();
        }
        activity = SettableFuture.create();
        runnable = new Runnable(runnable, activity) {

            final Runnable val$runnable;
            final SettableFuture val$settableFuture;

            public void run()
            {
                runnable.run();
                settableFuture.set(Boolean.valueOf(true));
                return;
                Object obj;
                obj;
                settableFuture.setException(((Throwable) (obj)));
                settableFuture.set(Boolean.valueOf(true));
                return;
                obj;
                settableFuture.set(Boolean.valueOf(true));
                throw obj;
            }

            
            {
                runnable = runnable1;
                settableFuture = settablefuture;
                super();
            }
        };
        (new Handler(Looper.getMainLooper())).post(runnable);
        activity.get(integer.intValue(), TimeUnit.MILLISECONDS);
    }

    public static String saveBitmapToLocalFile(Context context, String s, Bitmap bitmap)
    {
        if (s == null)
        {
            try
            {
                throw new Exception("No filename.");
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Logger.trace(context);
            }
            return null;
        }
        if (bitmap != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        throw new Exception("No image.");
        String s1;
        ByteArrayOutputStream bytearrayoutputstream;
        s1 = getAbsolutePath(context, s);
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 0, bytearrayoutputstream);
        context = context.openFileOutput(s, 3);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        context.write(bytearrayoutputstream.toByteArray());
        return s1;
        throw new Exception("Unable to open output file stream.");
    }

    public static void setAdvertisingId(String s)
    {
        advertisingId = s;
    }

    public static void setLimitAdTracking(Boolean boolean1)
    {
        limitAdTrackingEnabled = boolean1;
    }

    public static String truncate(String s, int i)
    {
        if (s.length() > i)
        {
            return (new StringBuilder()).append(s.substring(0, i)).append("...").toString();
        } else
        {
            return s;
        }
    }

    public ExecutorService getExecutorPool()
    {
        return executorPool;
    }

}
