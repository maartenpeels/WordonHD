// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.ResultReceiver;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushResolver, RichPushUpdateService, RichPushUser

public class RichPushManager
{

    static RichPushResolver a;
    private static final RichPushManager b = new RichPushManager();
    private RichPushUser c;
    private AtomicInteger d;
    private List e;

    RichPushManager()
    {
        d = new AtomicInteger();
        e = new ArrayList();
        a = new RichPushResolver(UAirship.a().g());
    }

    public static RichPushManager a()
    {
        return b;
    }

    static AtomicInteger a(RichPushManager richpushmanager)
    {
        return richpushmanager.d;
    }

    static void a(RichPushManager richpushmanager, boolean flag)
    {
        if (flag)
        {
            Logger.c("Messages update succeeded");
        } else
        {
            Logger.c("Messages update failed");
        }
        for (richpushmanager = richpushmanager.h().iterator(); richpushmanager.hasNext();)
        {
            Listener listener = (Listener)richpushmanager.next();
            try
            {
                listener.a();
            }
            catch (Exception exception)
            {
                Logger.c("RichPushManager unable to complete onUpdateMessages() callback.", exception);
            }
        }

    }

    private static void a(String s, ResultReceiver resultreceiver)
    {
        Logger.c("RichPushManager startUpdateService");
        Context context = UAirship.a().g();
        Intent intent = new Intent(context, com/urbanairship/richpush/RichPushUpdateService);
        intent.setAction(s);
        if (resultreceiver != null)
        {
            intent.putExtra("com.urbanairship.richpush.RESULT_RECEIVER", resultreceiver);
        }
        context.startService(intent);
    }

    private void a(boolean flag, RefreshMessagesCallback refreshmessagescallback)
    {
        boolean flag1;
        if (d.get() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 && !flag)
        {
            Logger.d("Skipping refreshing messages, already refreshing.");
            return;
        } else
        {
            a("com.urbanairship.richpush.MESSAGES_UPDATE", ((ResultReceiver) (new _cls2(d.incrementAndGet(), refreshmessagescallback))));
            return;
        }
    }

    static void b(RichPushManager richpushmanager, boolean flag)
    {
        if (flag)
        {
            Logger.c("User update succeeded");
            richpushmanager.c.a(System.currentTimeMillis());
        } else
        {
            Logger.c("User update failed");
            richpushmanager.c.a(0L);
        }
        for (richpushmanager = richpushmanager.h().iterator(); richpushmanager.hasNext();)
        {
            Listener listener = (Listener)richpushmanager.next();
            try
            {
                listener.b();
            }
            catch (Exception exception)
            {
                Logger.c("RichPushManager unable to complete onUpdateUser() callback.", exception);
            }
        }

    }

    public static void c()
    {
        com/urbanairship/richpush/RichPushManager;
        JVM INSTR monitorenter ;
        if (UAirship.a().h().l)
        {
            Logger.d("Initializing Rich Push.");
            b.f();
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction(Analytics.a);
            intentfilter.addCategory(UAirship.b());
            UAirship.a().g().registerReceiver(new _cls1(), intentfilter);
        }
        com/urbanairship/richpush/RichPushManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static RichPushManager g()
    {
        return b;
    }

    private List h()
    {
        ArrayList arraylist;
        synchronized (e)
        {
            arraylist = new ArrayList(e);
        }
        return arraylist;
    }

    public final void a(RefreshMessagesCallback refreshmessagescallback)
    {
        a(true, refreshmessagescallback);
    }

    public final RichPushUser b()
    {
        this;
        JVM INSTR monitorenter ;
        RichPushUser richpushuser;
        if (c == null)
        {
            c = new RichPushUser();
        }
        richpushuser = c;
        this;
        JVM INSTR monitorexit ;
        return richpushuser;
        Exception exception;
        exception;
        throw exception;
    }

    public final void d()
    {
        a(false, ((RefreshMessagesCallback) (null)));
    }

    public final void e()
    {
        a("com.urbanairship.richpush.USER_UPDATE", new _cls3());
    }

    public final void f()
    {
        long l = b().g();
        long l1 = System.currentTimeMillis();
        if (l > l1 || l + 0x5265c00L < l1)
        {
            e();
        }
    }


    private class Listener
    {

        public abstract void a();

        public abstract void b();
    }


    private class _cls2 extends UpdateResultReceiver
    {
        private class UpdateResultReceiver extends ResultReceiver
        {

            public abstract void a(boolean flag);

            protected void onReceiveResult(int i, Bundle bundle)
            {
                boolean flag;
                if (i == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                a(flag);
            }

            public UpdateResultReceiver()
            {
                super(new Handler(Looper.getMainLooper()));
            }
        }


        final int a;
        final RefreshMessagesCallback b;
        final RichPushManager c;

        public final void a(boolean flag)
        {
            if (RichPushManager.a(c).compareAndSet(a, 0))
            {
                RichPushManager.a(c, flag);
            }
            if (b != null)
            {
                b.a();
            }
        }

        _cls2(int i, RefreshMessagesCallback refreshmessagescallback)
        {
            c = RichPushManager.this;
            a = i;
            b = refreshmessagescallback;
            super();
        }

        private class RefreshMessagesCallback
        {

            public abstract void a();
        }

    }


    private class _cls1 extends BroadcastReceiver
    {

        public final void onReceive(Context context, Intent intent)
        {
            RichPushManager.g().d();
        }

        _cls1()
        {
        }
    }


    private class _cls3 extends UpdateResultReceiver
    {

        final RichPushManager a;

        public final void a(boolean flag)
        {
            RichPushManager.b(a, flag);
        }

        _cls3()
        {
            a = RichPushManager.this;
            super();
        }
    }

}
