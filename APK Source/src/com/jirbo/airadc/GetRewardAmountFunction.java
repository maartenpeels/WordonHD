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

class GetRewardAmountFunction
    implements FREFunction
{

    public static final String KEY = "get_v4vc_amount_function";

    GetRewardAmountFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        Object obj;
        AirADCContext airadccontext;
        airadccontext = (AirADCContext)frecontext;
        obj = null;
        airadccontext.getClass();
        Log.i("AdColonyANE", "GetV4VCAmount");
        if (!airadccontext.configured)
        {
            return FREObject.newObject(0);
        }
        frecontext = afreobject[0].getAsString();
        if (frecontext.length() <= 0) goto _L2; else goto _L1
_L1:
        frecontext = new AdColonyV4VCAd(frecontext);
_L4:
        frecontext = FREObject.newObject(frecontext.getRewardAmount());
        break MISSING_BLOCK_LABEL_106;
_L2:
        frecontext = new AdColonyV4VCAd();
        if (true) goto _L4; else goto _L3
_L3:
        frecontext;
        airadccontext.getClass();
        Log.i("AdColonyANE", frecontext.getMessage());
        frecontext.printStackTrace();
        frecontext = obj;
        return frecontext;
    }
}