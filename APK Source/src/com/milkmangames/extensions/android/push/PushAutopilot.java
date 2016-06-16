// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.push;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import c.m.x.a.ep.o;
import c.m.x.a.ep.p;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;

// Referenced classes of package com.milkmangames.extensions.android.push:
//            MmgPushReceiver

public class PushAutopilot extends Autopilot
{

    public PushAutopilot()
    {
        Log.d("[EPAPInternal]", "Init.");
    }

    public final void a(Application application)
    {
        Log.d("[EPAPInternal]", "Cold start.");
        long l1 = System.nanoTime();
        Log.d("[EPAPInternal]", (new StringBuilder("Start ")).append(l1).toString());
        Object obj = application.getApplicationContext().getSharedPreferences("pnpref", 0);
        String s = ((SharedPreferences) (obj)).getString("ask", null);
        if (s == null)
        {
            Log.d("[EPAPInternal]", "cold start aborted.");
            return;
        }
        p.c = true;
        String s1 = ((SharedPreferences) (obj)).getString("ass", null);
        boolean flag = ((SharedPreferences) (obj)).getBoolean("asd", false);
        String s2 = ((SharedPreferences) (obj)).getString("asa", null);
        boolean flag1 = ((SharedPreferences) (obj)).getBoolean("asb", false);
        obj = ((SharedPreferences) (obj)).getString("asc", null);
        p.d = flag1;
        AirshipConfigOptions airshipconfigoptions = AirshipConfigOptions.a(application.getApplicationContext());
        long l;
        if (flag)
        {
            airshipconfigoptions.c = s;
            airshipconfigoptions.d = s1;
            airshipconfigoptions.j = false;
        } else
        {
            airshipconfigoptions.a = s;
            airshipconfigoptions.b = s1;
            airshipconfigoptions.j = true;
        }
        airshipconfigoptions.i = "gcm";
        airshipconfigoptions.h = ((String) (obj));
        airshipconfigoptions.q = 14;
        l = System.nanoTime();
        Log.d("[EPAPInternal]", (new StringBuilder("Takeoff start ")).append(l).append(", (").append(l - l1).toString());
        UAirship.a(application, airshipconfigoptions);
        if (!s2.equals(""))
        {
            PushManager.b().a(s2);
        }
        PushManager.b().a(com/milkmangames/extensions/android/push/MmgPushReceiver);
        PushManager.b().a(o.a());
        application = PushManager.b().g();
        Log.d("[EPAPInternal]", (new StringBuilder("AIRSHIP->App APID: ")).append(application.e()).toString());
        application.b(true);
        l1 = System.nanoTime();
        Log.d("[EPAPInternal]", (new StringBuilder("Takeoff complete:")).append(l1 - l).toString());
    }
}
