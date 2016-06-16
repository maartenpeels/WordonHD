// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.freshplanet.ane.AirDeviceId;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.freshplanet.ane.AirDeviceId.functions.GetDeviceIdFunction;
import com.freshplanet.ane.AirDeviceId.functions.IsSupportedFunction;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.freshplanet.ane.AirDeviceId:
//            AirDeviceIdExtension

public class AirDeviceIdExtensionContext extends FREContext
{

    private static String TAG = "[AirDeviceId]";

    public AirDeviceIdExtensionContext()
    {
        Log.d(TAG, "Creating Extension Context");
    }

    public void dispose()
    {
        Log.d(TAG, "Disposing Extension Context");
        AirDeviceIdExtension.context = null;
    }

    public Map getFunctions()
    {
        Log.d(TAG, "Registering Extension Functions");
        HashMap hashmap = new HashMap();
        hashmap.put("isSupported", new IsSupportedFunction());
        hashmap.put("getDeviceId", new GetDeviceIdFunction());
        return hashmap;
    }

}
