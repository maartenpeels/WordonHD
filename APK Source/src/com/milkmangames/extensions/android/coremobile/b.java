// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import c.m.x.a.cm.a;
import com.adobe.fre.FREContext;
import com.milkmangames.extensions.android.CMLocalNotificationReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            z, y, n, r, 
//            s, t, u, c, 
//            v, w, d, e, 
//            f, g, h, i, 
//            j, k, l, m, 
//            o, p, q

public final class b extends FREContext
    implements SensorEventListener
{

    public static String a = "[CoreMobileEx]";
    private static boolean b = false;
    private static boolean c = false;
    private static ArrayList d = new ArrayList();
    private static Activity e;
    private static b f;
    private BroadcastReceiver g;
    private boolean h;
    private boolean i;
    private Sensor j;
    private Sensor k;
    private Sensor l;
    private SensorManager m;
    private float n[];
    private float o[];
    private float p[];
    private float q[];
    private float r[];
    private float s[];
    private float t[];
    private float u[];
    private float v;
    private boolean w;

    public b()
    {
        n = new float[3];
        o = new float[9];
        p = new float[3];
        q = new float[4];
        r = new float[3];
        s = new float[3];
        t = new float[3];
        u = new float[9];
        w = true;
        c = true;
        Log.d(a, "set fg");
        f = this;
    }

    private static JSONObject a(Intent intent)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        for (Iterator iterator = intent.getExtras().keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            try
            {
                jsonobject1.put(s1, intent.getExtras().get(s1));
            }
            catch (JSONException jsonexception)
            {
                Log.e(a, "Failed parsing extras");
                jsonexception.printStackTrace();
            }
        }

        try
        {
            jsonobject.put("extras", jsonobject1);
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Log.e(a, "Failed parsing extras");
            intent.printStackTrace();
            return jsonobject;
        }
        return jsonobject;
    }

    private void a(int i1)
    {
        Object obj = new Intent(getActivity(), com/milkmangames/extensions/android/CMLocalNotificationReceiver);
        obj = PendingIntent.getBroadcast(getActivity(), i1, ((Intent) (obj)), 0x8000000);
        ((AlarmManager)getActivity().getSystemService("alarm")).cancel(((PendingIntent) (obj)));
        Log.d(a, (new StringBuilder("Canceled ")).append(i1).toString());
    }

    public static void a(Context context)
    {
        JSONObject jsonobject;
        String s1;
        String s2;
        String s3;
        int k1;
        long l1;
        Object obj = context.getSharedPreferences("cmexlnlist", 0).getString("intlist", "[]");
        int i1;
        int j1;
        try
        {
            obj = new JSONArray(((String) (obj)));
        }
        catch (JSONException jsonexception)
        {
            obj = new JSONArray();
            jsonexception.printStackTrace();
        }
        j1 = ((JSONArray) (obj)).length();
        i1 = 0;
_L8:
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        try
        {
            jsonobject = ((JSONArray) (obj)).getJSONObject(i1);
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
            jsonexception1 = null;
        }
        if (jsonobject == null) goto _L4; else goto _L3
_L3:
        k1 = jsonobject.getInt("code");
        l1 = jsonobject.getLong("timeSeconds");
        s1 = jsonobject.getString("title");
        s2 = jsonobject.getString("message");
        s3 = jsonobject.getString("extraData");
        if (!jsonobject.has("thenEverySeconds")) goto _L6; else goto _L5
_L5:
        a(context, k1, l1, jsonobject.getLong("thenEverySeconds"), s1, s2, s3);
_L4:
        i1++;
        continue; /* Loop/switch isn't completed */
_L6:
        try
        {
            a(context, k1, l1, s1, s2, s3);
        }
        catch (Exception exception)
        {
            Log.e(a, "Could not parse a pending boot intent.");
        }
        if (true) goto _L4; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static void a(Context context, int i1)
    {
        SharedPreferences sharedpreferences;
        JSONArray jsonarray1;
        JSONArray jsonarray2;
        int j1;
        sharedpreferences = context.getSharedPreferences("cmexlnlist", 0);
        context = sharedpreferences.getString("lnlist", "[]");
        int i2;
        try
        {
            context = new JSONArray(context);
        }
        catch (JSONException jsonexception)
        {
            context = new JSONArray();
            jsonexception.printStackTrace();
        }
        jsonarray1 = new JSONArray();
        i2 = context.length();
        j1 = 0;
        do
        {
            if (j1 >= i2)
            {
                break;
            }
            int k1;
            try
            {
                k1 = context.getInt(j1);
            }
            catch (JSONException jsonexception1)
            {
                jsonexception1.printStackTrace();
                k1 = -1;
            }
            if (k1 != i1 && k1 != -1)
            {
                jsonarray1.put(k1);
            }
            j1++;
        } while (true);
        context = sharedpreferences.getString("intlist", "[]");
        JSONArray jsonarray;
        int l1;
        try
        {
            jsonarray = new JSONArray(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            jsonarray = new JSONArray();
            context.printStackTrace();
        }
        jsonarray2 = new JSONArray();
        i2 = jsonarray.length();
        l1 = 0;
        if (l1 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        context = jsonarray.getJSONObject(l1);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        j1 = context.getInt("code");
_L6:
        if (i1 != -1 && j1 != i1 && j1 != -1)
        {
            jsonarray2.put(context);
        }
        l1++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_158;
        JSONException jsonexception2;
        jsonexception2;
        context = null;
_L4:
        jsonexception2.printStackTrace();
        j1 = -1;
        continue; /* Loop/switch isn't completed */
_L1:
        context = sharedpreferences.edit();
        context.putString("lnlist", jsonarray1.toString());
        context.putString("intlist", jsonarray2.toString());
        context.apply();
        return;
        jsonexception2;
        if (true) goto _L4; else goto _L3
_L3:
        j1 = -1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static void a(Context context, int i1, long l1, long l2, String s1, String s2, 
            String s3)
    {
        Object obj = new Intent(context, com/milkmangames/extensions/android/CMLocalNotificationReceiver);
        ((Intent) (obj)).putExtra("message", s2);
        ((Intent) (obj)).putExtra("title", s1);
        ((Intent) (obj)).putExtra("extraData", s3);
        ((Intent) (obj)).putExtra("requestCode", i1);
        ((Intent) (obj)).putExtra("thenEverySeconds", l2);
        obj = PendingIntent.getBroadcast(context, i1, ((Intent) (obj)), 0x8000000);
        ((AlarmManager)context.getSystemService("alarm")).setInexactRepeating(0, 1000L * l1, 1000L * l2, ((PendingIntent) (obj)));
        SharedPreferences sharedpreferences = context.getSharedPreferences("cmexlnlist", 0);
        obj = sharedpreferences.getString("intlist", "[]");
        context = sharedpreferences.getString("lnlist", "[]");
        JSONObject jsonobject;
        try
        {
            context = new JSONArray(context);
        }
        catch (JSONException jsonexception)
        {
            context = new JSONArray();
            jsonexception.printStackTrace();
        }
        try
        {
            obj = new JSONArray(((String) (obj)));
        }
        catch (JSONException jsonexception1)
        {
            obj = new JSONArray();
            jsonexception1.printStackTrace();
        }
        jsonobject = new JSONObject();
        try
        {
            jsonobject.put("message", s2);
            jsonobject.put("title", s1);
            jsonobject.put("extraData", s3);
            jsonobject.put("code", i1);
            jsonobject.put("timeSeconds", l1);
            jsonobject.put("thenEverySeconds", l2);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.d(a, "Failed setting intent mem.");
            s1.printStackTrace();
        }
        ((JSONArray) (obj)).put(jsonobject);
        context.put(i1);
        s1 = sharedpreferences.edit();
        s1.putString("lnlist", context.toString());
        s1.putString("intlist", ((JSONArray) (obj)).toString());
        s1.apply();
    }

    private static void a(Context context, int i1, long l1, String s1, String s2, String s3)
    {
        Object obj = new Intent(context, com/milkmangames/extensions/android/CMLocalNotificationReceiver);
        ((Intent) (obj)).putExtra("message", s2);
        ((Intent) (obj)).putExtra("title", s1);
        ((Intent) (obj)).putExtra("extraData", s3);
        ((Intent) (obj)).putExtra("requestCode", i1);
        obj = PendingIntent.getBroadcast(context, i1, ((Intent) (obj)), 0x8000000);
        ((AlarmManager)context.getSystemService("alarm")).set(0, 1000L * l1, ((PendingIntent) (obj)));
        SharedPreferences sharedpreferences = context.getSharedPreferences("cmexlnlist", 0);
        obj = sharedpreferences.getString("intlist", "[]");
        context = sharedpreferences.getString("lnlist", "[]");
        JSONObject jsonobject;
        try
        {
            context = new JSONArray(context);
        }
        catch (JSONException jsonexception)
        {
            context = new JSONArray();
            jsonexception.printStackTrace();
        }
        try
        {
            obj = new JSONArray(((String) (obj)));
        }
        catch (JSONException jsonexception1)
        {
            obj = new JSONArray();
            jsonexception1.printStackTrace();
        }
        jsonobject = new JSONObject();
        try
        {
            jsonobject.put("message", s2);
            jsonobject.put("title", s1);
            jsonobject.put("extraData", s3);
            jsonobject.put("code", i1);
            jsonobject.put("timeSeconds", l1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.d(a, "Failed setting intent mem.");
            s1.printStackTrace();
        }
        ((JSONArray) (obj)).put(jsonobject);
        context.put(i1);
        s1 = sharedpreferences.edit();
        s1.putString("lnlist", context.toString());
        s1.putString("intlist", ((JSONArray) (obj)).toString());
        s1.apply();
    }

    public static void a(Context context, Intent intent)
    {
        Log.d(a, "onm.");
        String s1 = a(intent).toString();
        Object obj;
        NotificationManager notificationmanager;
        String s2;
        Object obj1;
        Context context1;
        ApplicationInfo applicationinfo;
        int i1;
        if (intent.getExtras().containsKey("requestCode"))
        {
            i1 = intent.getExtras().getInt("requestCode");
        } else
        {
            i1 = -1;
        }
        if (!intent.getExtras().containsKey("thenEverySeconds"))
        {
            a(context, i1);
        }
        if (c)
        {
            Log.d(a, "fg");
            if (f != null)
            {
                f.a("LOCAL_NOTIFICATION_RECEIVED", s1);
            }
            Log.d(a, "exit");
            return;
        }
        Log.d(a, "bg");
        notificationmanager = (NotificationManager)context.getSystemService("notification");
        obj1 = context.getPackageManager();
        context1 = context.getApplicationContext();
        applicationinfo = context1.getApplicationInfo();
        s2 = intent.getExtras().getString("message");
        obj = context.getApplicationContext().getApplicationInfo().loadLabel(((PackageManager) (obj1)));
        try
        {
            intent = intent.getExtras().getString("title");
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Log.d(a, "Message parse failed.");
            intent.printStackTrace();
            intent = ((Intent) (obj));
        }
        obj = new Notification(applicationinfo.icon, s2, System.currentTimeMillis());
        obj.flags = ((Notification) (obj)).flags | 0x1f;
        obj.flags = ((Notification) (obj)).flags & -5;
        obj.flags = ((Notification) (obj)).flags & -3;
        obj.defaults = ((Notification) (obj)).defaults | 3;
        obj.ledOnMS = 1000;
        obj.ledOffMS = 1000;
        obj.ledARGB = -1;
        obj1 = ((PackageManager) (obj1)).getLaunchIntentForPackage(context1.getPackageName()).getComponent().getClassName();
        try
        {
            obj1 = new Intent(context, Class.forName(((String) (obj1))));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e(a, "Failed to locate the air main intent.");
            context.printStackTrace();
            return;
        }
        ((Intent) (obj1)).putExtra("cmLocal", s1);
        ((Intent) (obj1)).setFlags(0x24000000);
        ((Notification) (obj)).setLatestEventInfo(context, intent, s2, PendingIntent.getActivity(context, 0, ((Intent) (obj1)), 0x8000000));
        obj.flags = ((Notification) (obj)).flags | 0x10;
        notificationmanager.notify(0, ((Notification) (obj)));
        d.add(new z("LOCAL_NOTIFICATION_SELECTED", s1));
    }

    static void a(b b1, double d1)
    {
        b1 = (Vibrator)b1.getActivity().getSystemService("vibrator");
        if (b1 == null)
        {
            Log.d(a, "No Vibrator available.");
            return;
        } else
        {
            Log.d(a, (new StringBuilder("v=")).append((long)(d1 * 1000D)).toString());
            b1.vibrate((long)(d1 * 1000D));
            return;
        }
    }

    static void a(b b1, int i1)
    {
        i1 = 0x1da8c4 + i1;
        b1.a(i1);
        a(((Context) (e)), i1);
    }

    static void a(b b1, int i1, long l1, long l2, String s1, String s2, 
            String s3)
    {
        a(((Context) (b1.getActivity())), 0x1da8c4 + i1, l1, l2, s1, s2, s3);
    }

    static void a(b b1, int i1, long l1, String s1, String s2, String s3)
    {
        a(((Context) (b1.getActivity())), 0x1da8c4 + i1, l1, s1, s2, s3);
    }

    static void a(b b1, String s1, String s2)
    {
        b1.a(s1, s2);
    }

    static void a(b b1, String s1, String s2, String s3, String s4, String s5, boolean flag, int i1, 
            String s6, int j1)
    {
        Object obj1 = LayoutInflater.from(b1.getActivity());
        Object obj = null;
        Object obj2;
        android.app.AlertDialog.Builder builder;
        if (i1 == 1)
        {
            obj = ((LayoutInflater) (obj1)).inflate(b1.getResourceId("layout.inputalert"), null);
        } else
        if (i1 == 2)
        {
            obj = ((LayoutInflater) (obj1)).inflate(b1.getResourceId("layout.credalert"), null);
        }
        builder = new android.app.AlertDialog.Builder(b1.getActivity());
        if (obj != null)
        {
            builder.setView(((View) (obj)));
            obj1 = (EditText)((View) (obj)).findViewById(b1.getResourceId("id.userInput"));
            if (i1 == 1)
            {
                if (!d(s3))
                {
                    ((EditText) (obj1)).setHint(s3);
                }
                ((EditText) (obj1)).setImeOptions(6);
                s3 = ((String) (obj1));
                obj = null;
            } else
            if (i1 == 2)
            {
                s3 = (EditText)((View) (obj)).findViewById(b1.getResourceId("id.passInput"));
                ((EditText) (obj1)).setHint("Login");
                s3.setHint("Password");
                ((EditText) (obj1)).setImeOptions(5);
                s3.setImeOptions(6);
                obj = s3;
            } else
            {
                s3 = null;
                obj = null;
            }
            if (j1 == 0)
            {
                ((EditText) (obj1)).setInputType(1);
            }
            if (j1 == 1)
            {
                ((EditText) (obj1)).setInputType(33);
            }
            if (j1 == 2)
            {
                ((EditText) (obj1)).setInputType(2);
            }
            obj2 = obj;
            obj = s3;
            s3 = ((String) (obj1));
        } else
        {
            obj = null;
            obj2 = null;
            s3 = null;
        }
        builder.setTitle(s1);
        builder.setMessage(s2);
        obj1 = new y(b1, i1, s4, s5, s1, s2, s6, flag, s3, ((EditText) (obj2)));
        s1 = new n(b1, s5, s4, s1, s2, flag, s6);
        s2 = new r(b1, ((y) (obj1)));
        builder.setOnCancelListener(s1);
        builder.setPositiveButton(s4, s2);
        if (!d(s5))
        {
            builder.setNegativeButton(s5, s2);
        }
        s1 = builder.create();
        if (s3 != null)
        {
            s3.setOnFocusChangeListener(new s(b1, s1));
        }
        s1.setOnDismissListener(new t(b1));
        if (obj != null)
        {
            ((EditText) (obj)).setOnEditorActionListener(new u(b1, ((y) (obj1)), s1));
        }
        s1.show();
    }

    private void a(String s1, String s2)
    {
        Log.d(a, (new StringBuilder("event:")).append(s1).toString());
        dispatchStatusEventAsync(s1, s2);
    }

    static boolean a(b b1)
    {
        return b1.e();
    }

    static boolean a(b b1, boolean flag)
    {
        b1.h = flag;
        return flag;
    }

    static boolean a(String s1)
    {
        return d(s1);
    }

    static boolean a(boolean flag)
    {
        c = flag;
        return flag;
    }

    private static float[] a(float af[], float af1[])
    {
        return (new float[] {
            af[0] * af1[0] + af[1] * af1[3] + af[2] * af1[6], af[0] * af1[1] + af[1] * af1[4] + af[2] * af1[7], af[0] * af1[2] + af[1] * af1[5] + af[2] * af1[8], af[3] * af1[0] + af[4] * af1[3] + af[5] * af1[6], af[3] * af1[1] + af[4] * af1[4] + af[5] * af1[7], af[3] * af1[2] + af[4] * af1[5] + af[5] * af1[8], af[6] * af1[0] + af[7] * af1[3] + af[8] * af1[6], af[6] * af1[1] + af[7] * af1[4] + af[8] * af1[7], af[6] * af1[2] + af[7] * af1[5] + af[8] * af1[8]
        });
    }

    private void b()
    {
        c("Begin sensor registration...");
        m.registerListener(this, j, 1);
        m.registerListener(this, k, 1);
        m.registerListener(this, l, 1);
        c("Sensors registered.");
    }

    static void b(b b1, boolean flag)
    {
        b1.h = b1.e();
        if (flag)
        {
            b1.g = new c(b1);
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            b1.getActivity().registerReceiver(b1.g, intentfilter);
        } else
        if (b1.g != null)
        {
            b1.getActivity().unregisterReceiver(b1.g);
            b1.g = null;
            return;
        }
    }

    static void b(String s1)
    {
        c(s1);
    }

    static void b(boolean flag)
    {
        b = flag;
    }

    static boolean b(b b1)
    {
        return b1.h;
    }

    private void c()
    {
        c("Begin sensor unregistration...");
        m.unregisterListener(this, j);
        m.unregisterListener(this, k);
        m.unregisterListener(this, l);
        c("Sensors unregistered.");
    }

    static void c(b b1, boolean flag)
    {
        c("Init Gyro Sensors.");
        boolean flag1 = b1.f();
        if (flag)
        {
            if (flag1)
            {
                b1.i = true;
                float af[] = b1.p;
                float af1[] = b1.p;
                b1.p[2] = 0.0F;
                af1[1] = 0.0F;
                af[0] = 0.0F;
                af = b1.q;
                af1 = b1.q;
                float af2[] = b1.q;
                b1.q[3] = 0.0F;
                af2[2] = 0.0F;
                af1[1] = 0.0F;
                af[0] = 0.0F;
                b1.o[0] = 1.0F;
                b1.o[1] = 0.0F;
                b1.o[2] = 0.0F;
                b1.o[3] = 0.0F;
                b1.o[4] = 1.0F;
                b1.o[5] = 0.0F;
                b1.o[6] = 0.0F;
                b1.o[7] = 0.0F;
                b1.o[8] = 1.0F;
                b1.b();
                return;
            } else
            {
                c("Gyro could not initialize; sensors unavailable.");
                return;
            }
        }
        if (flag1)
        {
            b1.i = false;
            b1.c();
        } else
        {
            c("Gyro not unregistered - sensors unavailable.");
        }
        b1.k = null;
        b1.l = null;
        b1.j = null;
    }

    private static void c(String s1)
    {
        if (!b)
        {
            return;
        } else
        {
            Log.d(a, (new StringBuilder("[V]")).append(s1).toString());
            return;
        }
    }

    static boolean c(b b1)
    {
        return b1.i;
    }

    private String d()
    {
        if (j == null)
        {
            return "{}";
        }
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        try
        {
            jsonobject1.put("roll", p[2]);
            jsonobject1.put("pitch", -p[1]);
            jsonobject1.put("yaw", -p[0]);
            jsonobject1.put("qw", q[0]);
            jsonobject1.put("qx", q[1]);
            jsonobject1.put("qy", q[2]);
            jsonobject1.put("qz", q[3]);
            jsonobject.put("attitude", jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            Log.d(a, "Failed parsing attitude.");
            return "{}";
        }
        return jsonobject.toString();
    }

    static void d(b b1)
    {
        b1.c();
    }

    private static boolean d(String s1)
    {
        if (s1 == null)
        {
            return true;
        }
        return s1.equals("");
    }

    static void e(b b1)
    {
        b1.b();
    }

    private boolean e()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return false;
        }
        return networkinfo.isConnectedOrConnecting();
    }

    static void f(b b1)
    {
        Log.d(a, "init cm");
        e = b1.getActivity();
        (new a(b1)).a(new v(b1));
        b1.i = false;
        float af[] = b1.p;
        float af1[] = b1.p;
        b1.p[2] = 0.0F;
        af1[1] = 0.0F;
        af[0] = 0.0F;
        af = b1.q;
        af1 = b1.q;
        float af2[] = b1.q;
        b1.q[3] = 0.0F;
        af2[2] = 0.0F;
        af1[1] = 0.0F;
        af[0] = 0.0F;
        b1.o[0] = 1.0F;
        b1.o[1] = 0.0F;
        b1.o[2] = 0.0F;
        b1.o[3] = 0.0F;
        b1.o[4] = 1.0F;
        b1.o[5] = 0.0F;
        b1.o[6] = 0.0F;
        b1.o[7] = 0.0F;
        b1.o[8] = 1.0F;
        c((new StringBuilder("gyro orientation initialized: [")).append(b1.p.length).append("], quat: [").append(b1.q.length).append("], matrix: [").append(b1.o.length).append("]").toString());
        Log.d(a, "dispatch queue.");
        b1.a();
    }

    private boolean f()
    {
        if (m == null)
        {
            m = (SensorManager)getActivity().getSystemService("sensor");
        }
        j = m.getDefaultSensor(4);
        k = m.getDefaultSensor(1);
        l = m.getDefaultSensor(2);
        return j != null && k != null && l != null;
    }

    static int g(b b1)
    {
        b1 = ((ConnectivityManager)b1.getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (b1 != null && b1.isConnected())
        {
            return b1.getType() != 1 ? 2 : 1;
        } else
        {
            return 0;
        }
    }

    static boolean h(b b1)
    {
        boolean flag = b1.f();
        c((new StringBuilder("Did init gyro successfully? ")).append(flag).toString());
        return flag;
    }

    static String i(b b1)
    {
        return b1.d();
    }

    static void j(b b1)
    {
        int i1 = 0;
        SharedPreferences sharedpreferences = b1.getActivity().getSharedPreferences("cmexlnlist", 0);
        Object obj = sharedpreferences.getString("lnlist", "[]");
        int k1;
        try
        {
            obj = new JSONArray(((String) (obj)));
        }
        catch (JSONException jsonexception)
        {
            obj = new JSONArray();
            jsonexception.printStackTrace();
        }
        k1 = ((JSONArray) (obj)).length();
        do
        {
            if (i1 >= k1)
            {
                break;
            }
            int j1;
            try
            {
                j1 = ((JSONArray) (obj)).getInt(i1);
            }
            catch (JSONException jsonexception1)
            {
                jsonexception1.printStackTrace();
                j1 = -1;
            }
            if (j1 != -1)
            {
                b1.a(j1);
            }
            i1++;
        } while (true);
        b1 = sharedpreferences.edit();
        b1.putString("lnlist", "[]");
        b1.putString("intlist", "[]");
        b1.apply();
    }

    protected final void a()
    {
        z z1;
        for (Iterator iterator = d.iterator(); iterator.hasNext(); dispatchStatusEventAsync(z1.a, z1.b))
        {
            z1 = (z)iterator.next();
        }

        d.clear();
    }

    public final void dispose()
    {
    }

    public final Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("ffiInitCoreMobile", new w(this));
        hashmap.put("ffiVibrate", new d(this));
        hashmap.put("ffiIsNetworkReachable", new e(this));
        hashmap.put("ffiSetReachabilityListenerEnabled", new f(this));
        hashmap.put("ffiGetNetworkType", new g(this));
        hashmap.put("ffiIsDeviceMotionAvailable", new h(this));
        hashmap.put("ffiSetDeviceMotionEnabled", new i(this));
        hashmap.put("ffiGetDeviceMotionData", new j(this));
        hashmap.put("ffiShowModalDialog", new k(this));
        hashmap.put("ffiScheduleLocalNotification", new l(this));
        hashmap.put("ffiScheduleRepeatingLocalNotification", new m(this));
        hashmap.put("ffiCancelLocalNotification", new o(this));
        hashmap.put("ffiCancelAllLocalNotifications", new p(this));
        hashmap.put("ffiSetVerboseLogEnabled", new q(this));
        return hashmap;
    }

    public final void onAccuracyChanged(Sensor sensor, int i1)
    {
        c((new StringBuilder("Sensor accuracy has changed for ")).append(sensor.getName()).append(" to ").append(i1).toString());
    }

    public final void onSensorChanged(SensorEvent sensorevent)
    {
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 4: default 36
    //                   1 37
    //                   2 808
    //                   3 36
    //                   4 89;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        return;
_L2:
        c("Sensor updated: Accelerometer.");
        System.arraycopy(sensorevent.values, 0, s, 0, 3);
        if (SensorManager.getRotationMatrix(u, null, s, r))
        {
            SensorManager.getOrientation(u, t);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        c("Sesnsor updated: gyroscope.");
        c("Normalizing gyro data...");
        if (t == null)
        {
            c("Normalization canceled: mag orientation not yet available.");
            return;
        }
        if (w)
        {
            c("Setting inital state for gyroscope rotation matrices.");
            float af[] = t;
            float f1 = (float)Math.sin(af[1]);
            float f3 = (float)Math.cos(af[1]);
            float f5 = (float)Math.sin(af[2]);
            float f6 = (float)Math.cos(af[2]);
            float f7 = (float)Math.sin(af[0]);
            float f8 = (float)Math.cos(af[0]);
            float f9 = -f1;
            float f10 = -f5;
            float f11 = -f7;
            af = a(new float[] {
                1.0F, 0.0F, 0.0F, 0.0F, f3, f1, 0.0F, f9, f3
            }, new float[] {
                f6, 0.0F, f5, 0.0F, 1.0F, 0.0F, f10, 0.0F, f6
            });
            af = a(new float[] {
                f8, f7, 0.0F, f11, f8, 0.0F, 0.0F, 0.0F, 1.0F
            }, af);
            SensorManager.getOrientation(af, new float[3]);
            o = a(o, af);
            w = false;
        }
        float af1[] = new float[4];
        if (v != 0.0F)
        {
            float f2 = sensorevent.timestamp;
            float f4 = v;
            System.arraycopy(sensorevent.values, 0, n, 0, 3);
            c("Calculating gyro data to rotation vector...");
            float af2[] = n;
            f2 = ((f2 - f4) * 1E-09F) / 2.0F;
            float af3[] = new float[3];
            f4 = (float)Math.sqrt(af2[0] * af2[0] + af2[1] * af2[1] + af2[2] * af2[2]);
            if (f4 > 1E-09F)
            {
                af3[0] = af2[0] / f4;
                af3[1] = af2[1] / f4;
                af3[2] = af2[2] / f4;
            }
            f4 = f2 * f4;
            f2 = (float)Math.sin(f4);
            f4 = (float)Math.cos(f4);
            af1[0] = af3[0] * f2;
            af1[1] = af3[1] * f2;
            af1[2] = f2 * af3[2];
            af1[3] = f4;
            c("The rotation data vector has been updated.");
        }
        v = sensorevent.timestamp;
        sensorevent = new float[9];
        SensorManager.getRotationMatrixFromVector(sensorevent, af1);
        c("Rotation vector converted to matrix.");
        o = a(o, sensorevent);
        SensorManager.getOrientation(o, p);
        c("Checking for Samsung Quat bug...");
        try
        {
            c((new StringBuilder("Checking gyroQuat[")).append(q.length).append("], gyromatrix[").append(o.length).append("]").toString());
            SensorManager.getQuaternionFromVector(q, o);
            c("Updated quaternion reading.");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SensorEvent sensorevent)
        {
            c("Samsung matrix length exception, recalculating vector...");
        }
        if (o.length > 3)
        {
            c("Resetting to vector length 3...");
            sensorevent = new float[3];
            sensorevent[0] = o[0];
            sensorevent[1] = o[1];
            sensorevent[2] = o[2];
            c((new StringBuilder("Calculate quat with new vector gyroQuat[")).append(q.length).append("], newVector[").append(sensorevent.length).append("]").toString());
            SensorManager.getQuaternionFromVector(q, sensorevent);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        c("Sensor upadted: magnetic");
        System.arraycopy(sensorevent.values, 0, r, 0, 3);
        return;
    }

}
