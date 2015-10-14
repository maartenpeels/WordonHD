// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.adobe.fre.FREArray;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.jirbo.adcolony.AdColony;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

public class ConfigureFunction
    implements FREFunction
{

    public static final String KEY = "configure_function";

    public ConfigureFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = (AirADCContext)frecontext;
        android.app.Activity activity;
        String s;
        String s1;
        ArrayList arraylist;
        int i;
        try
        {
            activity = frecontext.getActivity();
            s = afreobject[0].getAsString();
            s1 = afreobject[1].getAsString();
            arraylist = new ArrayList();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            frecontext.getClass();
            Log.i("AdColonyANE", afreobject.getMessage());
            afreobject.printStackTrace();
            return null;
        }
        i = 0;
        if ((long)i >= ((FREArray)afreobject[2]).getLength())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(((FREArray)afreobject[2]).getObjectAt(i).getAsString());
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_38;
_L1:
        afreobject = (String[])arraylist.toArray(new String[arraylist.size()]);
        frecontext.getClass();
        Log.i("AdColonyANE", (new StringBuilder()).append("Configuring with app ID: ").append(s1).append(" and zone ids: ").append(Arrays.toString(afreobject)).toString());
        AdColony.configure(activity, s, s1, afreobject);
        AdColony.addV4VCListener(((AirADCContext) (frecontext)).listener);
        AdColony.addAdAvailabilityListener(((AirADCContext) (frecontext)).listener);
        frecontext.configured = true;
        return null;
    }
}
