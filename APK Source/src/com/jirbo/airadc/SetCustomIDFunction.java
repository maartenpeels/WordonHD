// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.jirbo.adcolony.AdColony;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

class SetCustomIDFunction
    implements FREFunction
{

    public static final String KEY = "set_custom_id_function";

    SetCustomIDFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = (AirADCContext)frecontext;
        frecontext.getClass();
        Log.i("AdColonyANE", "SetCustomID");
        try
        {
            AdColony.setCustomID(afreobject[0].getAsString());
            afreobject = FREObject.newObject(true);
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            frecontext.getClass();
            Log.i("AdColonyANE", afreobject.getMessage());
            afreobject.printStackTrace();
            return null;
        }
        return afreobject;
    }
}
