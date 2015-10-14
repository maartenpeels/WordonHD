// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.freshplanet.ane.AirDeviceId.functions;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

public class IsSupportedFunction
    implements FREFunction
{

    private static String TAG = "[AirDeviceId] IsSupported -";

    public IsSupportedFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        Log.d(TAG, "true");
        try
        {
            frecontext = FREObject.newObject(true);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.d(TAG, frecontext.getLocalizedMessage());
            return null;
        }
        return frecontext;
    }

}
