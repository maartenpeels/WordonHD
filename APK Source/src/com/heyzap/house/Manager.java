// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.abstr.AbstractActivity;
import com.heyzap.house.cache.FileCache;
import com.heyzap.house.handler.AttributionHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.DisplayCache;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.Logger;
import com.heyzap.internal.PackageManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.sdk.ads.HeyzapAds;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class Manager
{

    public static final String ACTION_URL_PLACEHOLDER = "market://details?id=%s&referrer=%s";
    public static final String ACTION_URL_REFERRER = "utm_source%3Dheyzap%26utm_medium%3Dmobile%26utm_campaign%3Dheyzap_ad_network";
    public static String AD_SERVER = "http://ads.heyzap.com/in_game_api/ads";
    public static final String FIRST_RUN_KEY = "HeyzapAdsFirstRun";
    public static final long MAX_CACHE_SIZE = 0x1c9c380L;
    public static final String PREFERENCES_KEY = "com.heyzap.sdk.ads";
    public static Boolean SLOW_CLOSE = Boolean.valueOf(false);
    public static Context applicationContext;
    private static DisplayCache displayCache;
    private static FileCache fileCache;
    public static final Handler handler = new Handler(Looper.getMainLooper());
    private static AtomicReference initializationFutureRef = new AtomicReference();
    public static AbstractActivity lastActivity = null;
    public static long maxClickDifference = 1000L;
    private static volatile Manager ref;
    public static Boolean started = Boolean.valueOf(false);
    private ContextReference contextRef;
    private int flags;
    public long lastClickedTime;

    private Manager(ContextReference contextreference, String s)
    {
        lastClickedTime = 0L;
        flags = 0;
        contextRef = null;
        setPublisherId(s);
        setContextRef(contextreference);
        clearAndCreateImageFileCache();
        displayCache = new DisplayCache();
        fileCache = new FileCache(ExecutorPool.getInstance(), new File(Utils.getCacheDirAbsolutePath(contextreference.getApp())), Long.valueOf(0x1c9c380L));
    }

    public static Manager getInstance()
    {
        com/heyzap/house/Manager;
        JVM INSTR monitorenter ;
        if (ref == null)
        {
            throw new RuntimeException("Heyzap has not been started yet! Start Heyzap by calling HeyzapAds.start(<your-publisher-id>) in your launch Activity.");
        }
        break MISSING_BLOCK_LABEL_25;
        Exception exception;
        exception;
        com/heyzap/house/Manager;
        JVM INSTR monitorexit ;
        throw exception;
        Manager manager = ref;
        com/heyzap/house/Manager;
        JVM INSTR monitorexit ;
        return manager;
    }

    public static Boolean isStarted()
    {
        return started;
    }

    public static void runOnUiThread(Runnable runnable)
    {
        (new Handler(Looper.getMainLooper())).post(runnable);
    }

    public static void setAdsHost(String s)
    {
        FetchRequest.setDefaultHost(s);
        APIClient.DOMAIN = s;
        AD_SERVER = (new StringBuilder()).append("http://").append(s).append("/in_game_api/ads").toString();
    }

    public static SettableFuture start(ContextReference contextreference, String s)
    {
        if (initializationFutureRef.compareAndSet(null, SettableFuture.create()))
        {
            if (contextreference.getApp() == null)
            {
                throw new IllegalArgumentException();
            }
            applicationContext = contextreference.getApp();
            ref = new Manager(contextreference, s);
            s = contextreference.getApp().getSharedPreferences("com.heyzap.sdk.ads", 0);
            android.content.SharedPreferences.Editor editor = s.edit();
            boolean flag;
            if (!s.getBoolean("ran_once", false))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                Logger.log("Running first run tasks");
                AttributionHandler.getInstance().doSelfInstall(applicationContext);
                editor.putBoolean("ran_once", true);
                editor.commit();
            }
            PackageManager.checkInstalledPackages(contextreference.getApp());
            MetricsTracker.sendMetrics();
            FutureUtils.bind(ref.getFileCache().open(), (SettableFuture)initializationFutureRef.get(), ExecutorPool.getInstance());
            ((SettableFuture)initializationFutureRef.get()).addListener(new Runnable() {

                public void run()
                {
                    Manager.started = Boolean.valueOf(true);
                    Logger.log("Heyzap Ad Manager started.");
                }

            }, ExecutorPool.getInstance());
        }
        return (SettableFuture)initializationFutureRef.get();
    }

    public void clearAndCreateFileCache()
    {
        String s = Utils.getCacheDirAbsolutePath(applicationContext);
        try
        {
            if ((new File(s)).exists())
            {
                Utils.deleteDirectory(new File(s));
            }
            (new File(s)).mkdirs();
            return;
        }
        catch (Exception exception)
        {
            Logger.trace(exception);
        }
    }

    public void clearAndCreateImageFileCache()
    {
        String s = Utils.getImageCacheDirAbsolutePath(applicationContext);
        try
        {
            if ((new File(s)).exists())
            {
                Utils.deleteDirectory(new File(s));
            }
            (new File(s)).mkdirs();
            return;
        }
        catch (Exception exception)
        {
            Logger.trace(exception);
        }
    }

    public Object clone()
    {
        return null;
    }

    public DisplayCache getDisplayCache()
    {
        return displayCache;
    }

    public FileCache getFileCache()
    {
        return fileCache;
    }

    public List getLocalPackages()
    {
        if (applicationContext == null)
        {
            return null;
        }
        Object obj = applicationContext.getPackageManager().getInstalledPackages(0);
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            PackageInfo packageinfo = (PackageInfo)((Iterator) (obj)).next();
            if (!packageinfo.packageName.startsWith("android.") && !packageinfo.packageName.startsWith("com.google.android") && !packageinfo.packageName.startsWith("com.android") && !packageinfo.packageName.startsWith("com.htc") && !packageinfo.packageName.startsWith("com.samsung") && !packageinfo.packageName.startsWith("com.sec") && !packageinfo.packageName.startsWith("com.monotype") && !packageinfo.packageName.startsWith("com.verizon") && !packageinfo.packageName.startsWith("com.qualcomm") && !packageinfo.packageName.startsWith("com.vzw"))
            {
                arraylist.add(packageinfo.packageName);
            }
        } while (true);
        return arraylist;
    }

    public String getPublisherId()
    {
        return HeyzapAds.config.publisherId;
    }

    public void installHeyzap(AdModel admodel)
    {
    }

    public Boolean isFlagEnabled(int i)
    {
        boolean flag;
        if ((flags & i) == i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public void setContextRef(ContextReference contextreference)
    {
        contextRef = contextreference;
    }

    public void setFlags(int i)
    {
        flags = i;
    }

    public void setPublisherId(String s)
    {
        HeyzapAds.config.publisherId = s;
    }

}
