// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.location:
//            UALocationManager

final class b
    implements ServiceConnection
{

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        UALocationManager.a(b.a(ibinder));
        UALocationManager.a(true);
        if (UALocationManager.b(UALocationManager.f()) != null)
        {
            UALocationManager.i().sendBroadcast((new Intent(UALocationManager.i(), UALocationManager.b(UALocationManager.f()))).setAction("com.urbanairship.location.LOCATION_SERVICE_BOUND"));
        }
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        UALocationManager.a(null);
        UALocationManager.a(false);
        if (UALocationManager.b(UALocationManager.f()) != null)
        {
            UALocationManager.i().sendBroadcast((new Intent(UALocationManager.i(), UALocationManager.b(UALocationManager.f()))).setAction("com.urbanairship.location.LOCATION_SERVICE_UNBOUND"));
        }
        Logger.d("LocationService unbound.");
    }

    b()
    {
    }
}
