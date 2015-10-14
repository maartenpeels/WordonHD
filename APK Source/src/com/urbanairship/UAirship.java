// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.Log;
import com.urbanairship.actions.ActionActivity;
import com.urbanairship.actions.ActionRegistry;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.EventService;
import com.urbanairship.location.UALocationManager;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushService;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushUpdateService;
import com.urbanairship.util.ManifestUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.urbanairship:
//            Logger, UrbanAirshipProvider, AirshipConfigOptions, LocationOptions, 
//            ApplicationMetrics, CoreReceiver

public class UAirship
{

    private static final UAirship f = new UAirship();
    Context a;
    AirshipConfigOptions b;
    Analytics c;
    ApplicationMetrics d;
    boolean e;

    private UAirship()
    {
        e = false;
    }

    public static UAirship a()
    {
        return f;
    }

    public static void a(Application application, AirshipConfigOptions airshipconfigoptions)
    {
        com/urbanairship/UAirship;
        JVM INSTR monitorenter ;
        if (application != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("Application argument must not be null");
        application;
        com/urbanairship/UAirship;
        JVM INSTR monitorexit ;
        throw application;
        if (!f.e) goto _L2; else goto _L1
_L1:
        Logger.e("You can only call UAirship.takeOff once.");
_L3:
        com/urbanairship/UAirship;
        JVM INSTR monitorexit ;
        return;
_L2:
        Context context;
        UAirship uairship = f;
        context = application.getApplicationContext();
        uairship.a = context;
        UrbanAirshipProvider.a();
        if (airshipconfigoptions != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        airshipconfigoptions = AirshipConfigOptions.a(context);
        f.b = airshipconfigoptions;
        Logger.a = airshipconfigoptions.d();
        Logger.b = (new StringBuilder()).append(e()).append(" - UALib").toString();
        StringBuilder stringbuilder = new StringBuilder("Airship Take Off! Lib Version: ");
        UAirship uairship1 = f;
        Logger.c(stringbuilder.append("4.0.2 / App key = ").append(airshipconfigoptions.b()).toString());
        Logger.c((new StringBuilder("In Production? ")).append(airshipconfigoptions.j).toString());
        if (!airshipconfigoptions.e())
        {
            Logger.e("AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above.");
            throw new IllegalArgumentException("Application configuration is invalid.");
        }
        if (!airshipconfigoptions.j)
        {
            f.n();
        }
        f.e = true;
        if (airshipconfigoptions.k)
        {
            Logger.c("Initializing Push.");
            PushManager.a();
            if (Logger.a < 7)
            {
                Log.d((new StringBuilder()).append(e()).append(" APID").toString(), (new StringBuilder()).append(PushManager.b().j()).toString());
            }
        }
        if (airshipconfigoptions.l)
        {
            Logger.c("Initializing Rich Push.");
            RichPushManager.c();
        }
        if (airshipconfigoptions.n.a)
        {
            Logger.c("Initializing Location.");
            UALocationManager.a();
        }
        Logger.c("Registering default Actions.");
        ActionRegistry.a().b();
        Logger.c("Initializing Analytics.");
        f.d = new ApplicationMetrics(application);
        f.c = new Analytics(application);
          goto _L3
    }

    public static String b()
    {
        return f.a.getPackageName();
    }

    public static PackageManager c()
    {
        return f.a.getPackageManager();
    }

    public static PackageInfo d()
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = c().getPackageInfo(b(), 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Logger.d((new StringBuilder("NameNotFound for: ")).append(b()).append(". Disabling.").toString());
            return null;
        }
        return packageinfo;
    }

    public static String e()
    {
        if (m() != null)
        {
            return c().getApplicationLabel(m()).toString();
        } else
        {
            return null;
        }
    }

    public static int f()
    {
        ApplicationInfo applicationinfo = m();
        if (applicationinfo != null)
        {
            return applicationinfo.icon;
        } else
        {
            return -1;
        }
    }

    public static String j()
    {
        return "4.0.2";
    }

    private static ApplicationInfo m()
    {
        return f.a.getApplicationInfo();
    }

    private void n()
    {
        ManifestUtils.a("android.permission.INTERNET");
        ManifestUtils.a("android.permission.ACCESS_NETWORK_STATE");
        _cls1 _lcls1 = new _cls1();
        if (_lcls1.get(com/urbanairship/CoreReceiver) == null)
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required receiver: ")).append(com/urbanairship/CoreReceiver.getCanonicalName()).toString());
        }
        if (b.m && _lcls1.get(com/urbanairship/analytics/EventService) == null)
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required service: ")).append(com/urbanairship/analytics/EventService.getCanonicalName()).toString());
        }
        if (b.k)
        {
            if (_lcls1.get(com/urbanairship/push/PushService) == null)
            {
                Logger.e((new StringBuilder("AndroidManifest.xml missing required service: ")).append(com/urbanairship/push/PushService.getCanonicalName()).toString());
            }
            PushManager.m();
        }
        if (b.l && _lcls1.get(com/urbanairship/richpush/RichPushUpdateService) == null)
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required service: ")).append(com/urbanairship/richpush/RichPushUpdateService.getCanonicalName()).toString());
        }
        if (_lcls1.get(com/urbanairship/actions/ActionService) == null)
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required service: ")).append(com/urbanairship/actions/ActionService.getCanonicalName()).toString());
        }
        if (_lcls1.get(com/urbanairship/actions/ActionActivity) == null)
        {
            Logger.a("AndroidManifest.xml missing ActionActivity.  Action.startActivityForResult will not work.");
        }
        Object obj = (new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("http://"))).setPackage(b()).addFlags(0x10000000).addCategory("android.intent.category.DEFAULT");
        if (c().resolveActivity(((Intent) (obj)), 0) == null)
        {
            Logger.a("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme http.  Landing page action may not function properly.");
        }
        obj = (new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("https://"))).setPackage(b()).addFlags(0x10000000).addCategory("android.intent.category.DEFAULT");
        if (c().resolveActivity(((Intent) (obj)), 0) == null)
        {
            Logger.e("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme https Landing page action may not function properly.");
        }
        Iterator iterator;
        if (m() == null)
        {
            obj = b();
        } else
        {
            obj = m().processName;
        }
        iterator = _lcls1.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Class class1 = (Class)iterator.next();
            ComponentInfo componentinfo = (ComponentInfo)_lcls1.get(class1);
            if (componentinfo != null && !((String) (obj)).equals(componentinfo.processName))
            {
                Logger.a((new StringBuilder("A separate process is detected for: ")).append(class1.getCanonicalName()).append(". In the AndroidManifest.xml, remove the android:process attribute.").toString());
            }
        } while (true);
        if (_lcls1.get(com/urbanairship/UrbanAirshipProvider) == null)
        {
            throw new IllegalStateException("Unable to resolve UrbanAirshipProvider. Please check that the provider is defined in your AndroidManifest.xml, and that the authority string is set to  \"YOUR_PACKAGENAME.urbanairship.provider\"");
        } else
        {
            return;
        }
    }

    public final Context g()
    {
        return a;
    }

    public final AirshipConfigOptions h()
    {
        return b;
    }

    public final boolean i()
    {
        return e;
    }

    public final Analytics k()
    {
        return c;
    }

    public final ApplicationMetrics l()
    {
        return d;
    }


    private class _cls1 extends HashMap
    {

        final UAirship a;

        _cls1()
        {
            a = UAirship.this;
            super();
            put(com/urbanairship/analytics/EventService, ManifestUtils.a(com/urbanairship/analytics/EventService));
            put(com/urbanairship/push/PushService, ManifestUtils.a(com/urbanairship/push/PushService));
            put(com/urbanairship/richpush/RichPushUpdateService, ManifestUtils.a(com/urbanairship/richpush/RichPushUpdateService));
            put(com/urbanairship/location/LocationService, ManifestUtils.a(com/urbanairship/location/LocationService));
            put(com/urbanairship/actions/ActionService, ManifestUtils.a(com/urbanairship/actions/ActionService));
            put(com/urbanairship/CoreReceiver, ManifestUtils.c(com/urbanairship/CoreReceiver));
            put(com/urbanairship/push/GCMPushReceiver, ManifestUtils.c(com/urbanairship/push/GCMPushReceiver));
            put(com/urbanairship/UrbanAirshipProvider, ManifestUtils.b(UrbanAirshipProvider.d()));
            put(com/urbanairship/actions/ActionActivity, ManifestUtils.b(com/urbanairship/actions/ActionActivity));
        }
    }

}
