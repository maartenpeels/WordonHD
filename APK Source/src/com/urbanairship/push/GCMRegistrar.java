// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.PushServiceStartedEvent;
import com.urbanairship.push.embedded.BoxOfficeClient;
import com.urbanairship.util.Device;
import com.urbanairship.util.IntentUtils;
import com.urbanairship.util.ManifestUtils;
import java.util.List;

// Referenced classes of package com.urbanairship.push:
//            PushManager, PushPreferences, GCMPushReceiver, PushService

abstract class GCMRegistrar
{

    private static long a = 10000L;

    private GCMRegistrar()
    {
    }

    static void a()
    {
        Object obj = PushManager.b().g();
        if (!((PushPreferences) (obj)).a())
        {
            Logger.c("Push is not enabled. Canceling GCM registration.");
        } else
        {
            PushPreferences pushpreferences = PushManager.b().g();
            boolean flag;
            if (UAirship.d().versionCode != pushpreferences.m())
            {
                Logger.b((new StringBuilder("Version code changed to ")).append(UAirship.d().versionCode).append(". GCM re-registration required.").toString());
                flag = true;
            } else
            if (!Device.a().equals(pushpreferences.n()))
            {
                Logger.b("Device ID changed. GCM re-registration required.");
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag && ((PushPreferences) (obj)).k() != null)
            {
                Logger.d((new StringBuilder("Using GCM Registration ID: ")).append(((PushPreferences) (obj)).k()).toString());
                PushManager.b().i();
                return;
            }
            if (android.os.Build.VERSION.SDK_INT < 8)
            {
                Logger.c((new StringBuilder("GCM not supported in API level ")).append(android.os.Build.VERSION.SDK_INT).toString());
                flag = false;
            } else
            if ("qnx".equalsIgnoreCase(System.getProperty("os.name")) || "BlackBerry".equalsIgnoreCase(Build.BRAND.toString()) || "RIM".equalsIgnoreCase(Build.MANUFACTURER.toString()))
            {
                Logger.e("Urban Airship Android library does not support BlackBerry. Canceling GCM registration.");
                flag = false;
            } else
            if (!a("com.google.android.c2dm.permission.RECEIVE"))
            {
                Logger.e("com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager. Note that an AVD emulator may not support GCM.");
                Logger.e("If you're running in an emulator, you need to install the appropriate image through the Android SDK and AVM manager. See http://developer.android.com/guide/google/gcm/ for further details.");
                flag = false;
            } else
            if (UAirship.a().h().h == null)
            {
                Logger.e("The GCM sender ID is not set. Unable to register.");
                flag = false;
            } else
            {
                flag = true;
            }
            if (flag)
            {
                String s;
                Intent intent;
                if (((PushPreferences) (obj)).e() == null)
                {
                    try
                    {
                        new BoxOfficeClient();
                        BoxOfficeClient.a();
                    }
                    catch (com.urbanairship.push.embedded.BoxOfficeClient.FirstRunForbiddenException firstrunforbiddenexception)
                    {
                        Logger.a(firstrunforbiddenexception);
                        return;
                    }
                    catch (com.urbanairship.push.embedded.BoxOfficeClient.BoxOfficeException boxofficeexception)
                    {
                        Logger.c((new StringBuilder("Firstrun failed, will retry. Error: ")).append(boxofficeexception.getMessage()).toString());
                        d();
                        return;
                    }
                }
                obj = UAirship.a().g();
                s = UAirship.a().h().h;
                intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.putExtra("app", PendingIntent.getBroadcast(((Context) (obj)), 0, new Intent(((Context) (obj)), com/urbanairship/push/GCMPushReceiver), 0));
                intent.setPackage("com.google.android.gsf");
                intent.putExtra("sender", s);
                if (b(intent))
                {
                    Logger.d((new StringBuilder("Sent GCM registration, sender: ")).append(s).toString());
                    return;
                }
            }
        }
    }

    static void a(Intent intent)
    {
        String s;
        Object obj;
        boolean flag;
        flag = PushManager.b().g().a();
        obj = intent.getStringExtra("registration_id");
        s = intent.getStringExtra("error");
        intent = intent.getStringExtra("unregistered");
        if (s == null) goto _L2; else goto _L1
_L1:
        Logger.e((new StringBuilder("Received GCM error: ")).append(s).toString());
        if (!flag) goto _L4; else goto _L3
_L3:
        Logger.e("Failed to register with GCM.");
        Logger.e((new StringBuilder("GCM Failure: ")).append(s).toString());
        if ("INVALID_SENDER".equals(s))
        {
            Logger.e("Your GCM sender ID is invalid. Please check your AirshipConfig.");
        }
        PushPreferences pushpreferences;
        if ("SERVICE_NOT_AVAILABLE".equals(s))
        {
            d();
        } else
        {
            PushManager.b().b(null);
            a = 10000L;
        }
        intent = UAirship.a().g();
        obj = PushManager.b().f();
        pushpreferences = PushManager.b().g();
        if (obj != null)
        {
            Intent intent1 = new Intent("com.urbanairship.push.REGISTRATION_FINISHED");
            intent1.setClass(UAirship.a().g(), ((Class) (obj)));
            intent1.putExtra("com.urbanairship.push.APID", pushpreferences.e());
            intent1.putExtra("com.urbanairship.push.REGISTRATION_VALID", false);
            intent1.putExtra("com.urbanairship.push.REGISTRATION_ERROR", s);
            intent.sendBroadcast(intent1);
        }
_L6:
        return;
_L4:
        Logger.e("Failed to unregister with GCM.");
        return;
_L2:
        if (intent == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Logger.d((new StringBuilder("Unregistered from GCM: ")).append(intent).toString());
_L7:
        a = 10000L;
        return;
        if (obj == null) goto _L6; else goto _L5
_L5:
        Logger.d((new StringBuilder("Received GCM Registration ID:")).append(((String) (obj))).toString());
        if (flag)
        {
            UAirship.a().k().a(new PushServiceStartedEvent());
            PushManager.b().b(((String) (obj)));
        }
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
    }

    private static boolean a(String s)
    {
        try
        {
            UAirship.c().getPermissionInfo(s, 0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    static void b()
    {
        Context context = UAirship.a().g();
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(context, com/urbanairship/push/GCMPushReceiver), 0));
        intent.setPackage("com.google.android.gsf");
        b(intent);
    }

    private static boolean b(Intent intent)
    {
        Logger.c("GCMRegistrar startService");
        Context context = UAirship.a().g();
        try
        {
            context.startService(intent);
        }
        catch (SecurityException securityexception)
        {
            Logger.c((new StringBuilder("A security exception occurred when starting service: ")).append(intent.getAction()).toString(), securityexception);
            return false;
        }
        catch (Exception exception)
        {
            Logger.c((new StringBuilder("An exception occurred when starting service: ")).append(intent.getAction()).toString(), exception);
            return false;
        }
        return true;
    }

    static void c()
    {
        PackageManager packagemanager = UAirship.c();
        String s = UAirship.b();
        ManifestUtils.a("android.permission.WAKE_LOCK");
        ManifestUtils.a("android.permission.GET_ACCOUNTS");
        ApplicationInfo applicationinfo;
        if (a("com.google.android.c2dm.permission.RECEIVE"))
        {
            ManifestUtils.a("com.google.android.c2dm.permission.RECEIVE");
        } else
        {
            Logger.e("Required permission com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager.");
        }
        applicationinfo = UAirship.d().applicationInfo;
        if (UAirship.a().h().q < 16 || applicationinfo != null && applicationinfo.targetSdkVersion < 16 || android.os.Build.VERSION.SDK_INT < 16)
        {
            Object obj = (new StringBuilder()).append(s).append(".permission.C2D_MESSAGE").toString();
            if (a(((String) (obj))))
            {
                ManifestUtils.a(((String) (obj)));
            } else
            {
                Logger.e((new StringBuilder("Required permission ")).append(((String) (obj))).append(" is unknown to PackageManager.").toString());
            }
        }
        if (ManifestUtils.c(com/urbanairship/push/GCMPushReceiver) != null)
        {
            obj = new Intent("com.google.android.c2dm.intent.RECEIVE");
            ((Intent) (obj)).addCategory(s);
            if (packagemanager.queryBroadcastReceivers(((Intent) (obj)), 0).isEmpty())
            {
                Logger.e((new StringBuilder("AndroidManifest.xml's ")).append(com/urbanairship/push/GCMPushReceiver.getCanonicalName()).append(" declaration missing required ").append(((Intent) (obj)).getAction()).append(" filter with category = ").append(s).toString());
            }
            obj = new Intent("com.google.android.c2dm.intent.REGISTRATION");
            ((Intent) (obj)).addCategory(s);
            if (packagemanager.queryBroadcastReceivers(((Intent) (obj)), 0).isEmpty())
            {
                Logger.e((new StringBuilder("AndroidManifest.xml's ")).append(com/urbanairship/push/GCMPushReceiver.getCanonicalName()).append(" declaration missing required ").append(((Intent) (obj)).getAction()).append(" filter with category=").append(s).toString());
            }
            obj = new Intent("android.intent.action.PACKAGE_REPLACED");
            ((Intent) (obj)).setData(Uri.fromParts("package", s, null));
            ((Intent) (obj)).setClassName(s, com/urbanairship/push/GCMPushReceiver.getCanonicalName());
            if (packagemanager.queryBroadcastReceivers(((Intent) (obj)), 0).isEmpty())
            {
                Logger.e((new StringBuilder("AndroidManifest.xml's ")).append(com/urbanairship/push/GCMPushReceiver.getCanonicalName()).append(" declaration missing required filter ").append(((Intent) (obj)).getAction()).append(". Your app may not be able to reset the GCM ID on app upgrade.").toString());
            }
            return;
        } else
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required receiver: ")).append(com/urbanairship/push/GCMPushReceiver.getCanonicalName()).toString());
            return;
        }
    }

    private static void d()
    {
        a = Math.min(a * 2L, 0x4e2000L);
        Logger.d((new StringBuilder("Scheduling GCM registration in ")).append(a / 1000L).append(" seconds").toString());
        Intent intent = new Intent();
        intent.setClass(UAirship.a().g(), com/urbanairship/push/PushService);
        intent.setAction("com.urbanairship.push.GCM_REGISTRATION");
        IntentUtils.a(UAirship.a().g(), intent, a);
    }

}
