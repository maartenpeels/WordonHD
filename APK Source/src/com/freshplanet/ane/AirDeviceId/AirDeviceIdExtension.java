// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.freshplanet.ane.AirDeviceId;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.freshplanet.ane.AirDeviceId:
//            AirDeviceIdExtensionContext

public class AirDeviceIdExtension
    implements FREExtension
{

    private static String TAG = "[AirDeviceId]";
    public static FREContext context;

    public AirDeviceIdExtension()
    {
    }

    public FREContext createContext(String s)
    {
        Log.d(TAG, (new StringBuilder("Extension.createContext extId: ")).append(s).toString());
        s = new AirDeviceIdExtensionContext();
        context = s;
        return s;
    }

    public void dispose()
    {
        Log.d(TAG, "Extension.dispose");
        context = null;
    }

    public void initialize()
    {
        Log.d(TAG, "Extension.initialize");
    }

}
