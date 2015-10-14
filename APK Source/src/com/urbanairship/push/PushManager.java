// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionService;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.PushArrivedEvent;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.util.Device;
import com.urbanairship.util.UAStringUtil;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.urbanairship.push:
//            PushPreferences, BasicPushNotificationBuilder, PushService, GCMRegistrar, 
//            PushMessage, PushNotificationBuilder

public class PushManager
{

    private static final PushManager a = new PushManager();
    private PushNotificationBuilder b;
    private Class c;
    private PushPreferences d;
    private boolean e;

    private PushManager()
    {
        e = true;
    }

    public static void a()
    {
        if (UAirship.a().i())
        {
            Logger.b("PushManager init");
            a.d = new PushPreferences();
            a.b = new BasicPushNotificationBuilder();
            n();
            return;
        } else
        {
            throw new IllegalStateException("UAirship.takeOff must be called before PushManager.init!");
        }
    }

    public static PushManager b()
    {
        return a;
    }

    public static void c()
    {
        if (!a.d.a())
        {
            a.d.a(true);
            n();
        }
    }

    private static void c(String s)
    {
        Logger.c((new StringBuilder("Deleting APID: ")).append(s).toString());
        if (UAStringUtil.a(s))
        {
            Logger.e("No APID. Cannot delete.");
            return;
        } else
        {
            Context context = UAirship.a().g();
            Intent intent = new Intent();
            intent.setClass(context, com/urbanairship/push/PushService);
            intent.setAction("com.urbanairship.push.DELETE_APID");
            intent.putExtra("com.urbanairship.push.APID", s);
            context.startService(intent);
            return;
        }
    }

    public static void d()
    {
        if (a.d.a())
        {
            a.d.a(false);
            if (!UAStringUtil.a(a.d.k()))
            {
                a.d.e(null);
                GCMRegistrar.b();
            }
            PushManager pushmanager = a;
            c(a.d.e());
            a.d.c(false);
            a.d.a(0L);
        }
    }

    public static void m()
    {
        GCMRegistrar.c();
    }

    private static void n()
    {
        Logger.b("PushManager startService");
        Context context = UAirship.a().g();
        Intent intent = new Intent(context, com/urbanairship/push/PushService);
        intent.setAction("com.urbanairship.push.START_SERVICE");
        context.startService(intent);
    }

    private void o()
    {
        d.d(true);
        Context context = UAirship.a().g();
        Intent intent = new Intent();
        intent.setClass(context, com/urbanairship/push/PushService);
        intent.setAction("com.urbanairship.push.UPDATE_APID");
        context.startService(intent);
    }

    final void a(PushMessage pushmessage)
    {
        if (a.d.a()) goto _L2; else goto _L1
_L1:
        Logger.d("Received a push when push is disabled! Ignoring.");
_L10:
        return;
_L2:
        String s;
        s = pushmessage.d();
        boolean flag;
        if (s == null || s.equalsIgnoreCase(a.d.e()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            Logger.d((new StringBuilder("Received a push addressed to a different APID: ")).append(pushmessage.d()).toString());
            c(pushmessage.d());
            return;
        }
        s = pushmessage.c();
        if (s == null) goto _L4; else goto _L3
_L3:
        List list1 = d.q();
        if (!list1.contains(s)) goto _L6; else goto _L5
_L5:
        boolean flag1 = false;
_L8:
        if (!flag1)
        {
            Logger.d((new StringBuilder("Received a duplicate push with canonical ID: ")).append(pushmessage.c()).toString());
            return;
        }
        break; /* Loop/switch isn't completed */
_L6:
        list1.add(s);
        if (list1.size() > 10)
        {
            List list = list1.subList(list1.size() - 10, list1.size());
            d.a(list);
        } else
        {
            d.a(list1);
        }
_L4:
        flag1 = true;
        if (true) goto _L8; else goto _L7
_L7:
        d.g(pushmessage.f());
        String s2 = pushmessage.f();
        String s1 = s2;
        if (UAStringUtil.a(s2))
        {
            s1 = UUID.randomUUID().toString();
        }
        UAirship.a().k().a(new PushArrivedEvent(s1));
        ActionService.a(pushmessage.h(), Situation.b);
        if (pushmessage.b())
        {
            Logger.b("Received UA Ping");
            return;
        }
        if (pushmessage.a())
        {
            Logger.c("Notification expired, ignoring.");
            return;
        }
        if (UAirship.a().h().l && !UAStringUtil.a(pushmessage.e()))
        {
            Logger.c("Received a Rich Push.");
            Object obj = new Semaphore(0);
            RichPushManager.a().a(new _cls1(((Semaphore) (obj))));
            Intent intent;
            int i1;
            try
            {
                ((Semaphore) (obj)).tryAcquire(60000L, TimeUnit.MILLISECONDS);
            }
            catch (InterruptedException interruptedexception)
            {
                Logger.a("Interrupted while waiting for rich push messages to refresh");
            }
        }
        i1 = pushmessage.g();
        obj = c;
        if (obj != null)
        {
            intent = new Intent("com.urbanairship.push.PUSH_RECEIVED");
            intent.setClass(UAirship.a().g(), ((Class) (obj)));
            intent.putExtras(pushmessage.h());
            intent.putExtra("com.urbanairship.push.NOTIFICATION_ID", i1);
            UAirship.a().g().sendBroadcast(intent);
            return;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final void a(PushNotificationBuilder pushnotificationbuilder)
    {
        b = pushnotificationbuilder;
    }

    public final void a(Class class1)
    {
        ComponentName componentname = new ComponentName(UAirship.b(), class1.getCanonicalName());
        try
        {
            UAirship.c().getReceiverInfo(componentname, 128);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Logger.e("The receiver class passed to PushManager.setIntentReceiver() is not declared in the manifest.");
            Logger.e((new StringBuilder("AndroidManifest.xml missing required receiver: ")).append(class1.getCanonicalName()).toString());
            return;
        }
        c = class1;
    }

    public final void a(String s)
    {
        if (!UAStringUtil.a(s, d.i()))
        {
            d.d(s);
            o();
        }
    }

    public final void a(Set set)
    {
        if (set == null)
        {
            throw new IllegalArgumentException("Tags must be non-null.");
        }
        if (!set.equals(d.j()))
        {
            d.a(set);
            o();
        }
    }

    public final void b(String s)
    {
        d.a(UAirship.d().versionCode);
        d.f(Device.a());
        if (!UAStringUtil.a(s, d.k()))
        {
            d.e(s);
            o();
        }
    }

    public final PushNotificationBuilder e()
    {
        return b;
    }

    public final Class f()
    {
        return c;
    }

    public final PushPreferences g()
    {
        return d;
    }

    final void h()
    {
        boolean flag = d.d();
        d.c(true);
        Context context;
        Object obj;
        if (UAirship.a().h().l)
        {
            if (!flag)
            {
                RichPushManager.a().e();
            } else
            {
                RichPushManager.a().f();
            }
        }
        context = UAirship.a().g();
        obj = a.c;
        if (obj != null)
        {
            Intent intent = new Intent("com.urbanairship.push.REGISTRATION_FINISHED");
            intent.setClass(context, ((Class) (obj)));
            intent.putExtra("com.urbanairship.push.APID", d.e());
            intent.putExtra("com.urbanairship.push.REGISTRATION_VALID", true);
            obj = d.k();
            if (!UAStringUtil.a(((String) (obj))))
            {
                intent.putExtra("com.urbanairship.push.GCM_REGISTRATION_ID", ((String) (obj)));
            }
            context.sendBroadcast(intent);
        }
    }

    public final void i()
    {
        if (d.l())
        {
            o();
        }
    }

    public final String j()
    {
        if (d.d())
        {
            return d.e();
        } else
        {
            return null;
        }
    }

    public final Set k()
    {
        return d.j();
    }

    public final boolean l()
    {
        return e;
    }


    private class _cls1
        implements com.urbanairship.richpush.RichPushManager.RefreshMessagesCallback
    {

        final Semaphore a;
        final PushManager b;

        public final void a()
        {
            a.release();
        }

        _cls1(Semaphore semaphore)
        {
            b = PushManager.this;
            a = semaphore;
            super();
        }
    }

}
