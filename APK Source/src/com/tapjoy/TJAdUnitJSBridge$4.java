// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.HashMap;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TapjoyLog

class this._cls0
    implements LocationListener
{

    final TJAdUnitJSBridge this$0;

    public void onLocationChanged(Location location)
    {
        if (TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this) == null || TJAdUnitJSBridge.access$400(TJAdUnitJSBridge.this) == null)
        {
            if (TJAdUnitJSBridge.access$500(TJAdUnitJSBridge.this) != null && TJAdUnitJSBridge.access$600(TJAdUnitJSBridge.this) != null)
            {
                TapjoyLog.i("TJAdUnitJSBridge", "stopping updates");
                TJAdUnitJSBridge.access$500(TJAdUnitJSBridge.this).removeUpdates(TJAdUnitJSBridge.access$600(TJAdUnitJSBridge.this));
            }
        } else
        if (location != null)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("lat", Double.valueOf(location.getLatitude()));
            hashmap.put("long", Double.valueOf(location.getLongitude()));
            hashmap.put("altitude", Double.valueOf(location.getAltitude()));
            hashmap.put("timestamp", Long.valueOf(location.getTime()));
            hashmap.put("speed", Float.valueOf(location.getSpeed()));
            hashmap.put("course", Float.valueOf(location.getBearing()));
            invokeJSAdunitMethod("locationUpdated", hashmap);
            return;
        }
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    er()
    {
        this$0 = TJAdUnitJSBridge.this;
        super();
    }
}
