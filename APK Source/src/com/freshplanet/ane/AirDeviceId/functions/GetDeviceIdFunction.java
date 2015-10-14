// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.freshplanet.ane.AirDeviceId.functions;

import android.app.Activity;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

public class GetDeviceIdFunction
    implements FREFunction
{

    public GetDeviceIdFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = FREObject.newObject(android.provider.Settings.Secure.getString(frecontext.getActivity().getContentResolver(), "android_id"));
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            frecontext.printStackTrace();
            return null;
        }
        return frecontext;
    }
}
