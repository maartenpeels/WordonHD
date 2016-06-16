// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.jirbo.adcolony.AdColonyV4VCAd;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

class ShowV4VCFunction
    implements FREFunction
{

    public static final String KEY = "show_v4vc_function";

    ShowV4VCFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = (AirADCContext)frecontext;
        frecontext.getClass();
        Log.i("AdColonyANE", "ShowV4VC");
label0:
        {
            if (!((AirADCContext) (frecontext)).configured)
            {
                return FREObject.newObject(false);
            }
            boolean flag = afreobject[0].getAsBool();
            afreobject = afreobject[1].getAsString();
            if (afreobject.length() > 0)
            {
                (new AdColonyV4VCAd(afreobject)).withResultsDialog(flag).withListener(((AirADCContext) (frecontext)).listener).show();
                break label0;
            }
            try
            {
                (new AdColonyV4VCAd()).withResultsDialog(flag).withListener(((AirADCContext) (frecontext)).listener).show();
            }
            // Misplaced declaration of an exception variable
            catch (FREObject afreobject[])
            {
                frecontext.getClass();
                Log.i("AdColonyANE", afreobject.getMessage());
                afreobject.printStackTrace();
            }
        }
        return null;
    }
}
