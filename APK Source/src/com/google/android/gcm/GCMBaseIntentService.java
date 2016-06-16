// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gcm:
//            GCMRegistrar

public abstract class GCMBaseIntentService extends IntentService
{

    private static android.os.PowerManager.WakeLock a;
    private static final Object b = com/google/android/gcm/GCMBaseIntentService;
    private static int d = 0;
    private static final Random e;
    private static final int f;
    private static final String g;
    private final String c[];

    protected GCMBaseIntentService()
    {
        Object obj = (new StringBuilder("GCMIntentService-")).append("DynamicSenderIds").append("-");
        int i = d + 1;
        d = i;
        obj = ((StringBuilder) (obj)).append(i).toString();
        Log.v("GCMBaseIntentService", (new StringBuilder("Intent service name: ")).append(((String) (obj))).toString());
        this(((String) (obj)));
    }

    private GCMBaseIntentService(String s)
    {
        super(s);
        c = null;
    }

    static void a(Context context, Intent intent, String s)
    {
        synchronized (b)
        {
            if (a == null)
            {
                a = ((PowerManager)context.getSystemService("power")).newWakeLock(1, "GCM_LIB");
            }
        }
        Log.v("GCMBaseIntentService", "Acquiring wakelock");
        a.acquire();
        intent.setClassName(context, s);
        context.startService(intent);
    }

    protected abstract void a();

    protected abstract void a(Context context, Intent intent);

    protected abstract void a(String s);

    protected String[] a(Context context)
    {
        if (c == null)
        {
            throw new IllegalStateException("sender id not set on constructor");
        } else
        {
            return c;
        }
    }

    protected abstract void b(String s);

    public final void onHandleIntent(Intent intent)
    {
        Object obj;
        String s;
        obj = getApplicationContext();
        s = intent.getAction();
        if (!s.equals("com.google.android.c2dm.intent.REGISTRATION")) goto _L2; else goto _L1
_L1:
        String s1;
        GCMRegistrar.e(((Context) (obj)));
        s = intent.getStringExtra("registration_id");
        s1 = intent.getStringExtra("error");
        intent = intent.getStringExtra("unregistered");
        Log.d("GCMBaseIntentService", (new StringBuilder("handleRegistration: registrationId = ")).append(s).append(", error = ").append(s1).append(", unregistered = ").append(intent).toString());
        if (s == null) goto _L4; else goto _L3
_L3:
        GCMRegistrar.j(((Context) (obj)));
        GCMRegistrar.a(((Context) (obj)), s);
        b(s);
_L15:
        intent = ((Intent) (b));
        intent;
        JVM INSTR monitorenter ;
        if (a == null) goto _L6; else goto _L5
_L5:
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L12:
        return;
_L4:
        if (intent == null) goto _L8; else goto _L7
_L7:
        GCMRegistrar.j(((Context) (obj)));
        GCMRegistrar.h(((Context) (obj)));
        a();
        continue; /* Loop/switch isn't completed */
        JVM INSTR monitorenter ;
        if (a == null) goto _L10; else goto _L9
_L9:
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L13:
        intent;
        JVM INSTR monitorexit ;
        throw obj;
_L8:
        Log.d("GCMBaseIntentService", (new StringBuilder("Registration error: ")).append(s1).toString());
        if ("SERVICE_NOT_AVAILABLE".equals(s1))
        {
            int i = GCMRegistrar.k(((Context) (obj)));
            int k = i / 2 + e.nextInt(i);
            Log.d("GCMBaseIntentService", (new StringBuilder("Scheduling registration retry, backoff = ")).append(k).append(" (").append(i).append(")").toString());
            intent = new Intent("com.google.android.gcm.intent.RETRY");
            intent.putExtra("token", g);
            intent = PendingIntent.getBroadcast(((Context) (obj)), 0, intent, 0);
            ((AlarmManager)((Context) (obj)).getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + (long)k, intent);
            if (i < f)
            {
                GCMRegistrar.a(((Context) (obj)), i * 2);
            }
            continue; /* Loop/switch isn't completed */
        }
        a(s1);
        continue; /* Loop/switch isn't completed */
_L2:
        if (!s.equals("com.google.android.c2dm.intent.RECEIVE"))
        {
            break MISSING_BLOCK_LABEL_490;
        }
        s = intent.getStringExtra("message_type");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_481;
        }
        if (!s.equals("deleted_messages"))
        {
            break MISSING_BLOCK_LABEL_455;
        }
        intent = intent.getStringExtra("total_deleted");
        if (intent == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            int j = Integer.parseInt(intent);
            Log.v("GCMBaseIntentService", (new StringBuilder("Received deleted messages notification: ")).append(j).toString());
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            intent = ((Intent) (b));
        }
        Log.e("GCMBaseIntentService", (new StringBuilder("GCM returned invalid number of deleted messages: ")).append(intent).toString());
        continue; /* Loop/switch isn't completed */
        Log.e("GCMBaseIntentService", (new StringBuilder("Received unknown special message: ")).append(s).toString());
        continue; /* Loop/switch isn't completed */
        a(((Context) (obj)), intent);
        continue; /* Loop/switch isn't completed */
        if (!s.equals("com.google.android.gcm.intent.RETRY"))
        {
            continue; /* Loop/switch isn't completed */
        }
        intent = intent.getStringExtra("token");
        if (g.equals(intent))
        {
            break MISSING_BLOCK_LABEL_585;
        }
        Log.e("GCMBaseIntentService", (new StringBuilder("Received invalid token: ")).append(intent).toString());
        intent = ((Intent) (b));
        intent;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_573;
        }
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L11:
        return;
        obj;
        intent;
        JVM INSTR monitorexit ;
        throw obj;
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L11
        if (GCMRegistrar.g(((Context) (obj))))
        {
            GCMRegistrar.d(((Context) (obj)));
            continue; /* Loop/switch isn't completed */
        }
        GCMRegistrar.b(((Context) (obj)), a(((Context) (obj))));
        continue; /* Loop/switch isn't completed */
_L6:
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L12
        Exception exception;
        exception;
        throw exception;
_L10:
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L13
        exception;
        throw exception;
        if (true) goto _L15; else goto _L14
_L14:
    }

    static 
    {
        e = new Random();
        f = (int)TimeUnit.SECONDS.toMillis(3600L);
        g = Long.toBinaryString(e.nextLong());
    }
}
