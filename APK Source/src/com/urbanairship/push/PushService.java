// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.app.Application;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.restclient.AppAuthenticatedRequest;
import com.urbanairship.restclient.Response;
import com.urbanairship.util.IntentUtils;
import com.urbanairship.util.UAStringUtil;
import java.io.UnsupportedEncodingException;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.push:
//            PushManager, PushPreferences, PushRegistrationBuilder, PushRegistrationPayload, 
//            GCMRegistrar, GCMMessageHandler

public class PushService extends IntentService
{

    private static final SparseArray b = new SparseArray();
    private static int c = 0;
    private PushPreferences a;

    public PushService()
    {
        this("PushService");
    }

    private PushService(String s)
    {
        super(s);
    }

    private static int a()
    {
        com/urbanairship/push/PushService;
        JVM INSTR monitorenter ;
        int i;
        android.os.PowerManager.WakeLock wakelock = ((PowerManager)UAirship.a().g().getSystemService("power")).newWakeLock(1, "UA_GCM_WAKE_LOCK");
        wakelock.setReferenceCounted(false);
        wakelock.acquire(60000L);
        SparseArray sparsearray = b;
        i = c + 1;
        c = i;
        sparsearray.append(i, wakelock);
        i = c;
        com/urbanairship/push/PushService;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(int i)
    {
        com/urbanairship/push/PushService;
        JVM INSTR monitorenter ;
        android.os.PowerManager.WakeLock wakelock = (android.os.PowerManager.WakeLock)b.get(i);
        if (wakelock == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        b.remove(i);
        if (wakelock.isHeld())
        {
            wakelock.release();
        }
        com/urbanairship/push/PushService;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(Context context, Intent intent)
    {
        Logger.c("PushService startService");
        intent.setClass(context, com/urbanairship/push/PushService);
        intent.putExtra("com.urbanairship.push.WAKE_LOCK_ID", a());
        context.startService(intent);
    }

    private static void a(String s, String s1)
    {
        Intent intent = new Intent();
        intent.setClass(UAirship.a().g(), com/urbanairship/push/PushService);
        intent.setAction(s);
        intent.putExtra("com.urbanairship.push.APID", s1);
        IntentUtils.a(UAirship.a().g(), intent, 0x927c0L);
    }

    public void onCreate()
    {
        super.onCreate();
        Autopilot.b((Application)getApplicationContext());
        a = PushManager.b().g();
    }

    protected void onHandleIntent(Intent intent)
    {
        if (intent != null) goto _L2; else goto _L1
_L1:
        Logger.b("PushService started with a null intent. Ending task.");
_L15:
        return;
_L2:
        Object obj;
        int i;
        obj = intent.getAction();
        i = intent.getIntExtra("com.urbanairship.push.WAKE_LOCK_ID", -1);
        intent.removeExtra("com.urbanairship.push.WAKE_LOCK_ID");
        if (!"com.urbanairship.push.DELETE_APID".equals(obj)) goto _L4; else goto _L3
_L3:
        intent = intent.getStringExtra("com.urbanairship.push.APID");
        if (intent == null) goto _L6; else goto _L5
_L5:
        if (a.a() && intent.equals(a.e())) goto _L6; else goto _L7
_L7:
        obj = UAirship.a().h();
        obj = (new StringBuilder()).append(((AirshipConfigOptions) (obj)).e).append("api/apids/").append(intent).toString();
        Logger.b((new StringBuilder("URL: ")).append(((String) (obj))).toString());
        obj = (new AppAuthenticatedRequest("DELETE", ((String) (obj)))).a();
        if (obj != null) goto _L9; else goto _L8
_L8:
        Logger.d("Error deleting APID. Scheduling retry.");
        a("com.urbanairship.push.DELETE_APID", intent);
_L6:
        if (i >= 0)
        {
            a(i);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        int j;
        j = ((Response) (obj)).a();
        Logger.d((new StringBuilder("Delete APID status code: ")).append(j).toString());
        if (j != 204 && j != 404)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        Logger.d((new StringBuilder("Delete request succeeded with status: ")).append(j).toString());
          goto _L6
        intent;
        if (i >= 0)
        {
            a(i);
        }
        throw intent;
        if (j < 500 || j >= 600)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        Logger.d((new StringBuilder("Delete request failed. Response status: ")).append(j).append(" (will retry).").toString());
        a("com.urbanairship.push.DELETE_APID", intent);
          goto _L6
        Logger.d((new StringBuilder("Delete request failed. Response status: ")).append(j).toString());
          goto _L6
_L4:
label0:
        {
            if (!"com.urbanairship.push.UPDATE_APID".equals(obj))
            {
                break MISSING_BLOCK_LABEL_733;
            }
            intent = a.e();
            if (a.a())
            {
                break label0;
            }
            Logger.c("Push is not enabled, so skipping stale APID update.");
        }
          goto _L6
label1:
        {
            Logger.c((new StringBuilder("Updating APID: ")).append(intent).toString());
            if (!UAStringUtil.a(intent))
            {
                break label1;
            }
            Logger.e("No APID. Cannot update.");
        }
          goto _L6
        Object obj1;
        obj = UAirship.a().h();
        obj1 = (new StringBuilder()).append(((AirshipConfigOptions) (obj)).e).append("api/apids/").append(intent).toString();
        Logger.b((new StringBuilder("URL: ")).append(((String) (obj1))).toString());
        obj = PushRegistrationBuilder.a();
        obj = ((PushRegistrationPayload) (obj)).a();
        obj1 = new AppAuthenticatedRequest("PUT", ((String) (obj1)));
        StringEntity stringentity = new StringEntity(((JSONObject) (obj)).toString(), "UTF-8");
        stringentity.setContentType("application/json");
        ((AppAuthenticatedRequest) (obj1)).setEntity(stringentity);
        Logger.b((new StringBuilder("Body: ")).append(((JSONObject) (obj)).toString()).toString());
_L10:
        obj = ((AppAuthenticatedRequest) (obj1)).a();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_560;
        }
        Logger.d("Error registering APID. Scheduling a retry.");
        a("com.urbanairship.push.UPDATE_APID", intent);
          goto _L6
        intent;
        Logger.c("Error creating JSON Registration body.", intent);
          goto _L6
        obj;
        Logger.e("Error setting registrationRequest entity.");
          goto _L10
        String s = ((Response) (obj)).d();
        j = ((Response) (obj)).a();
        Logger.d((new StringBuilder("Registration status code: ")).append(j).toString());
        Logger.b((new StringBuilder("Registration result ")).append(s).toString());
        if (j != 200)
        {
            break MISSING_BLOCK_LABEL_653;
        }
        Logger.d("Registration request succeeded.");
        a.d(false);
        a.a(System.currentTimeMillis());
        PushManager.b().h();
          goto _L6
        if (j < 500 || j >= 600)
        {
            break MISSING_BLOCK_LABEL_707;
        }
        Logger.d((new StringBuilder("Registration request response status: ")).append(((Response) (obj)).a()).append(" (will retry)").toString());
        a("com.urbanairship.push.UPDATE_APID", intent);
          goto _L6
        Logger.d((new StringBuilder("Registration request response status: ")).append(((Response) (obj)).a()).toString());
          goto _L6
label2:
        {
            if (!"com.google.android.c2dm.intent.REGISTRATION".equals(obj))
            {
                break label2;
            }
            GCMRegistrar.a(intent);
        }
          goto _L6
label3:
        {
            if (!"com.google.android.c2dm.intent.RECEIVE".equals(obj))
            {
                break label3;
            }
            GCMMessageHandler.a(intent);
        }
          goto _L6
        if (!"com.urbanairship.push.GCM_REGISTRATION".equals(obj)) goto _L12; else goto _L11
_L11:
        GCMRegistrar.a();
          goto _L6
_L12:
        if (!"com.urbanairship.push.START_SERVICE".equals(obj)) goto _L6; else goto _L13
_L13:
        intent = PushManager.b().g();
        Logger.c((new StringBuilder("Push enabled: ")).append(intent.a()).toString());
        if (intent.a())
        {
            break MISSING_BLOCK_LABEL_839;
        }
        Logger.b("Push is disabled.  Not starting Push Service.");
          goto _L6
        long l;
        long l1;
        obj = UAirship.a().h();
        l = intent.o();
        l1 = System.currentTimeMillis();
        if (l <= l1 && l + 0x5265c00L >= l1)
        {
            break MISSING_BLOCK_LABEL_882;
        }
        intent.d(true);
        intent = ((AirshipConfigOptions) (obj)).a();
        if (intent != com.urbanairship.AirshipConfigOptions.TransportType.a)
        {
            break MISSING_BLOCK_LABEL_903;
        }
        Logger.e("The Helium transport is no longer supported.");
          goto _L6
        if (intent == com.urbanairship.AirshipConfigOptions.TransportType.c)
        {
            Logger.e("The Hybrid transport is no longer supported. Using GCM.");
        }
        Logger.c("Starting GCM");
        GCMRegistrar.a();
          goto _L6
        if (true) goto _L15; else goto _L14
_L14:
    }

}
