// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.adobe.fre.FREContext;
import com.google.android.gcm.GCMRegistrar;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package c.m.x.a.ep:
//            s, ai, q, o, 
//            u, aj, t, ab, 
//            af, ah, ag, z, 
//            aa, ad, ae, ac, 
//            v, w, x, y

public final class p extends FREContext
{

    public static p a;
    public static boolean b;
    public static boolean c;
    public static boolean d;
    public static boolean e = false;
    private static ArrayList g = new ArrayList();
    private static Activity h;
    private static int i = 0;
    private String f;

    private p()
    {
        a = this;
        e = true;
    }

    public static void a(Context context, Intent intent)
    {
label0:
        {
            Object obj;
label1:
            {
                if (a == null)
                {
                    break label0;
                }
                context = a;
                Log.d("[PushNotifyEx]", "onNotificationOpened");
                obj = context.getActivity().getPackageName();
                obj = (new StringBuilder()).append(((String) (obj))).append(".AppEntry").toString();
                try
                {
                    obj = Class.forName(((String) (obj)));
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    Log.e("[PushNotifyEx]", "error locating air core activity!");
                    context.printStackTrace();
                    return;
                }
                if (obj != null)
                {
                    if (!intent.getExtras().containsKey("url"))
                    {
                        break label1;
                    }
                    intent = intent.getExtras().getString("url");
                    context = intent;
                    if (!intent.startsWith("http://"))
                    {
                        context = intent;
                        if (!intent.startsWith("https://"))
                        {
                            context = (new StringBuilder("http://")).append(intent).toString();
                        }
                    }
                    intent = new Intent("android.intent.action.VIEW");
                    intent.setFlags(0x10000000);
                    intent.setData(Uri.parse(context));
                    UAirship.a().g().startActivity(intent);
                }
                return;
            }
            Intent intent1 = new Intent("android.intent.action.MAIN");
            intent1.setClass(UAirship.a().g(), ((Class) (obj)));
            intent1.setFlags(0x10000000);
            UAirship.a().g().startActivity(intent1);
            context.dispatchStatusEventAsync("RESUMED_FROM_NOTIFICATION", d(intent).toString());
            return;
        }
        Context context1 = context.getApplicationContext();
        if (intent.getExtras().containsKey("url"))
        {
            intent = intent.getExtras().getString("url");
            context = intent;
            if (!intent.startsWith("http://"))
            {
                context = intent;
                if (!intent.startsWith("https://"))
                {
                    context = (new StringBuilder("http://")).append(intent).toString();
                }
            }
            intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(0x10000000);
            intent.setData(Uri.parse(context));
            UAirship.a().g().startActivity(intent);
            return;
        } else
        {
            context = context.getPackageManager().getLaunchIntentForPackage(context1.getPackageName());
            context.setFlags(0x10000000);
            intent = d(intent).toString();
            Log.d("[PushNotifyEx]", "Enquing pending ->");
            a("RESUMED_FROM_NOTIFICATION", ((String) (intent)));
            context1.startActivity(context);
            return;
        }
    }

    public static void a(Intent intent)
    {
        p p1;
        String s1;
label0:
        {
            if (a != null)
            {
                p1 = a;
                s1 = d(intent).toString();
                p1.getActivity();
                if (e)
                {
                    break label0;
                }
                Log.d("[PushNotifyEx]", "[background notification]");
                if (!intent.getExtras().containsKey("url"))
                {
                    a("RESUMED_FROM_NOTIFICATION", s1);
                }
            }
            return;
        }
        if (d)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(p1.getActivity());
            builder.setMessage(intent.getExtras().getString("com.urbanairship.push.ALERT"));
            if (intent.getExtras().containsKey("aTitle"))
            {
                builder.setTitle(intent.getExtras().getString("aTitle"));
            }
            intent = builder.create();
            intent.setButton("OK", new s(p1, s1));
            intent.show();
        }
        p1.dispatchStatusEventAsync("FOREGROUND_NOTIFICATION", s1);
    }

    static void a(p p1)
    {
        p1.h();
    }

    private static void a(String s1, String s2)
    {
        g.add(new ai(s1, s2));
    }

    protected static void a(boolean flag)
    {
        PushManager.b().g().b(flag);
    }

    public static boolean a(long l, long l1)
    {
        Date date = new Date(l * 1000L);
        Date date1 = new Date(l1 * 1000L);
        PushManager.b().g().a(date, date1);
        return true;
    }

    public static boolean a(String s1)
    {
        PushManager.b().a(s1);
        return true;
    }

    public static boolean a(Set set)
    {
        PushManager.b().a(set);
        return true;
    }

    public static String[] a(Context context)
    {
        String as[] = new String[1];
        if (a != null && a.f != null)
        {
            as[0] = a.f;
            return as;
        } else
        {
            context = context.getApplicationContext().getSharedPreferences("pnpref", 0).getString("lklast", "");
            a.f = context;
            as[0] = a.f;
            return as;
        }
    }

    public static void b(Context context, Intent intent)
    {
        Object obj;
        String s1;
        Log.d("[PushNotifyEx]", "manual message callback.");
        s1 = c(intent).toString();
        obj = context.getPackageManager();
        obj = context.getApplicationContext().getApplicationInfo().loadLabel(((PackageManager) (obj)));
        Object obj2;
        boolean flag;
        obj2 = intent.getExtras().getString("aTitle");
        flag = ((String) (obj2)).equals("");
        Object obj1;
        obj1 = obj;
        if (!flag)
        {
            obj1 = obj;
            if (obj2 != null)
            {
                obj1 = obj2;
            }
        }
_L4:
        obj = new JSONObject(intent.getExtras().getString("custom"));
        if (!((JSONObject) (obj)).has("a"))
        {
            break MISSING_BLOCK_LABEL_548;
        }
        obj2 = ((JSONObject) (obj)).getJSONObject("a");
        if (!((JSONObject) (obj2)).has("aTitle"))
        {
            break MISSING_BLOCK_LABEL_548;
        }
        obj2 = ((JSONObject) (obj2)).getString("aTitle");
_L11:
        if (!((JSONObject) (obj)).has("u")) goto _L2; else goto _L1
_L1:
        Object obj3 = ((JSONObject) (obj)).getString("u");
_L10:
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        if (((String) (obj3)).length() <= 0)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        obj = obj3;
        if (((String) (obj3)).startsWith("http://"))
        {
            break MISSING_BLOCK_LABEL_205;
        }
        obj = obj3;
        if (!((String) (obj3)).startsWith("https://"))
        {
            obj = (new StringBuilder("http://")).append(((String) (obj3))).toString();
        }
_L9:
        flag = ((String) (obj2)).equals("");
        Object obj4;
        obj3 = obj1;
        obj4 = obj;
        if (!flag)
        {
            obj3 = obj1;
            obj4 = obj;
            if (obj2 != null)
            {
                obj4 = obj;
                obj3 = obj2;
            }
        }
_L5:
        obj = intent.getExtras().getString("alert");
        intent = intent.getExtras().getString("sound");
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_532;
        }
        flag = intent.equals("");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_532;
        }
_L8:
        obj1 = intent;
        intent = ((Intent) (obj));
        obj = obj1;
          goto _L3
        obj1;
        Log.d("[PushNotifyEx]", "Message title not available (extras).");
        obj1 = obj;
          goto _L4
        obj;
        obj = null;
_L7:
        Log.d("[PushNotifyEx]", "Message title not available (custom).");
        obj3 = obj1;
        obj4 = obj;
          goto _L5
        intent;
        obj = s1;
_L6:
        intent = ((Intent) (obj));
        obj = null;
_L3:
        Log.d("[PushNotifyEx]", "check state...s");
        if (e)
        {
            if (a != null)
            {
                Log.d("[PushNotifyEx]", "push message instance.");
                context = a;
                obj = obj3.toString();
                Log.d("[PushNotifyEx]", "fg message dispatch.");
                context.dispatchStatusEventAsync("FOREGROUND_NOTIFICATION", s1);
                Log.d("[PushNotifyEx]", "fg msg sent.");
                if (d)
                {
                    context.getActivity().runOnUiThread(new q(context, intent, ((String) (obj)), s1));
                }
                return;
            } else
            {
                Log.d("[PushNotifyEx]", "fg, instance freed.");
                return;
            }
        }
        Log.d("[PushNotifyEx]", "enq message instance.");
        a("RESUMED_FROM_NOTIFICATION", s1);
        obj1 = (NotificationManager)context.getSystemService("notification");
        context = context.getApplicationContext();
        o.a();
        context = o.a(context, obj3.toString(), intent, ((String) (obj)), ((String) (obj4)));
        if (context == null)
        {
            Log.e("[PushNotifyEx]", "Notification data was not valid.");
            return;
        } else
        {
            int k = i + 1;
            i = k;
            ((NotificationManager) (obj1)).notify(k, context);
            return;
        }
        intent;
          goto _L6
        obj2;
          goto _L7
        intent = null;
          goto _L8
        obj = null;
          goto _L9
_L2:
        obj3 = null;
          goto _L10
        obj2 = null;
          goto _L11
    }

    public static void b(Intent intent)
    {
        p p1;
label0:
        {
            if (a != null)
            {
                p1 = a;
                String s1 = intent.getStringExtra("com.urbanairship.push.APID");
                if (!intent.getBooleanExtra("com.urbanairship.push.REGISTRATION_VALID", false))
                {
                    break label0;
                }
                p1.dispatchStatusEventAsync("TOKEN_REGISTERED", s1);
                Log.d("[PushNotifyEx]", "will get prefs");
                intent = PushManager.b().g();
                Log.d("[PushNotifyEx]", (new StringBuilder("AIRSHIP->App APID: ")).append(intent.e()).toString());
            }
            return;
        }
        p1.dispatchStatusEventAsync("TOKEN_REG_FAILED", (new StringBuilder("-1[ERR]")).append(intent.getStringExtra("com.urbanairship.push.REGISTRATION_ERROR")).toString());
    }

    public static void b(String s1)
    {
        if (a != null)
        {
            a.b("TOKEN_REG_FAILED", (new StringBuilder("-1[ERR]")).append(s1).toString());
        }
    }

    private void b(String s1, String s2)
    {
        Log.d("[PushNotifyEx]", (new StringBuilder("dispatch on main:")).append(h).toString());
        h.runOnUiThread(new u(this, s1, s2));
    }

    protected static void b(boolean flag)
    {
        if (flag)
        {
            PushManager.c();
            return;
        } else
        {
            PushManager.d();
            return;
        }
    }

    private static JSONObject c(Intent intent)
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
                Log.e("[PushNotifyEx]", "Failed posting extra to callback");
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
            Log.e("[PushNotifyEx]", "Failed posting extras obj to callback");
            intent.printStackTrace();
            return jsonobject;
        }
        return jsonobject;
    }

    public static void c(String s1)
    {
        Log.d("[PushNotifyEx]", (new StringBuilder("onmanual reg callback instance ")).append(a).toString());
        if (a != null)
        {
            Log.d("[PushNotifyEx]", "push thread--");
            a.b("TOKEN_REGISTERED", s1);
            Log.d("[PushNotifyEx]", "thread pushed.");
        }
    }

    public static boolean c()
    {
        return true;
    }

    private static JSONObject d(Intent intent)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONObject jsonobject2 = new JSONObject();
        Iterator iterator;
        try
        {
            jsonobject1.put("alert", intent.getExtras().getString("com.urbanairship.push.ALERT"));
        }
        catch (JSONException jsonexception)
        {
            Log.e("[PushNotifyEx]", "Failed posting alert to callback");
            jsonexception.printStackTrace();
        }
        for (iterator = intent.getExtras().keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            try
            {
                jsonobject2.put(s1, intent.getExtras().get(s1));
            }
            catch (JSONException jsonexception1)
            {
                Log.e("[PushNotifyEx]", "Failed posting extra to callback");
                jsonexception1.printStackTrace();
            }
        }

        try
        {
            jsonobject1.put("extras", jsonobject2);
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Log.e("[PushNotifyEx]", "Failed posting extras obj to callback");
            intent.printStackTrace();
        }
        try
        {
            jsonobject.put("android", jsonobject1);
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Log.e("[PushNotifyEx]", "Failed posting android obj to callback");
            intent.printStackTrace();
            return jsonobject;
        }
        return jsonobject;
    }

    public static void f()
    {
    }

    public static p g()
    {
        if (a == null)
        {
            a = new p();
        } else
        {
            Log.d("[PushNotifyEx]", "Context already created!");
        }
        return a;
    }

    private void h()
    {
        String s1 = GCMRegistrar.f(getActivity());
        if (s1.equals(""))
        {
            Log.d("[PushNotifyEx]", "No current token, starting registration...");
            GCMRegistrar.a(getActivity(), new String[] {
                f
            });
        } else
        {
            Log.d("[PushNotifyEx]", (new StringBuilder("Has token already:")).append(s1).toString());
            if (GCMRegistrar.i(getActivity()))
            {
                Log.d("[PushNotifyEx]", (new StringBuilder("Token already registered:")).append(s1).toString());
                dispatchStatusEventAsync("TOKEN_ALREADY_REGISTERED", s1);
            } else
            {
                dispatchStatusEventAsync("TOKEN_REGISTERED", s1);
            }
        }
        j();
    }

    private void i()
    {
        (new aj(this)).a(new t(this));
    }

    private void j()
    {
        Log.d("[PushNotifyEx]", "Dq.");
        Iterator iterator = g.iterator();
        int k;
        for (k = 0; iterator.hasNext(); k++)
        {
            ai ai1 = (ai)iterator.next();
            dispatchStatusEventAsync(ai1.a, ai1.b);
        }

        Log.d("[PushNotifyEx]", (new StringBuilder("Count DQ ")).append(k).toString());
        g.clear();
    }

    public final boolean a()
    {
        j();
        return true;
    }

    public final boolean a(String s1, String s2, boolean flag, String s3, boolean flag1, String s4, boolean flag2)
    {
        i();
        android.content.SharedPreferences.Editor editor = getActivity().getApplicationContext().getSharedPreferences("pnpref", 0).edit();
        editor.putString("ask", s1);
        editor.putString("ass", s2);
        editor.putBoolean("asd", flag);
        editor.putString("asa", s3);
        editor.putBoolean("asb", flag1);
        editor.putString("asc", s4);
        editor.commit();
        Log.d("[PushNotifyEx]", "Changes applied.");
        if (b)
        {
            Log.d("[PushNotifyEx]", "Airship->Already initialized!");
            return false;
        }
        b = true;
        d = flag1;
        h = getActivity();
        Log.d("[PushNotifyEx]", "InitAirship->");
        s3 = AirshipConfigOptions.a(getActivity().getApplication());
        if (flag)
        {
            s3.c = s1;
            s3.d = s2;
            s3.j = false;
        } else
        {
            s3.a = s1;
            s3.b = s2;
            s3.j = true;
        }
        s3.i = "gcm";
        s3.h = s4;
        s3.q = 14;
        Autopilot.b(getActivity().getApplication());
        if (flag2)
        {
            PushManager.c();
        }
        s1 = PushManager.b().g();
        Log.d("[PushNotifyEx]", (new StringBuilder("AIRSHIP->App APID--: ")).append(s1.e()).toString());
        j();
        return true;
    }

    public final boolean a(String s1, boolean flag, boolean flag1)
    {
        i();
        f = s1;
        d = flag;
        h = getActivity();
        s1 = getActivity().getApplicationContext().getSharedPreferences("pnpref", 0).edit();
        s1.putString("lklast", f);
        s1.commit();
        if (flag1)
        {
            h();
        }
        j();
        return true;
    }

    public final void b()
    {
        Log.d("[PushNotifyEx]", "activation");
        if (getActivity().getIntent().getDataString().equals("mmg://easypush"))
        {
            j();
        }
    }

    public final boolean d()
    {
        try
        {
            GCMRegistrar.a(getActivity());
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            Log.e("[PushNotifyEx]", "Notifications not supported on this device.");
            return false;
        }
        try
        {
            GCMRegistrar.b(getActivity());
        }
        catch (IllegalStateException illegalstateexception)
        {
            Log.e("[PushNotifyEx]", "Manifest is not properly configured.");
            return false;
        }
        return true;
    }

    public final void dispose()
    {
    }

    public final boolean e()
    {
        if (GCMRegistrar.g(getActivity()))
        {
            GCMRegistrar.c(getActivity());
            return true;
        } else
        {
            return false;
        }
    }

    public final Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("ffiInitAirship", new ab(this, (byte)0));
        hashmap.put("ffiSetAirshipQuietTime", new af(this, (byte)0));
        hashmap.put("ffiUpdateAirshipAlias", new ah(this, (byte)0));
        hashmap.put("ffiSetAirshipTags", new ag(this, (byte)0));
        hashmap.put("ffiAreNotificationsAvailable", new z(this, (byte)0));
        hashmap.put("ffiDispatchAndClearPending", new aa(this, (byte)0));
        hashmap.put("ffiIsAirshipAvailable", new ad(this, (byte)0));
        hashmap.put("ffiOnActivate", new ae(this, (byte)0));
        hashmap.put("ffiInitManual", new ac(this, (byte)0));
        hashmap.put("ffiManualUnregisterToken", new v(this));
        hashmap.put("ffiSetAirshipPushEnabled", new w(this));
        hashmap.put("ffiSetAirshipSoundEnabled", new x(this));
        hashmap.put("ffiRegisterForNotifications", new y(this));
        return hashmap;
    }

}
