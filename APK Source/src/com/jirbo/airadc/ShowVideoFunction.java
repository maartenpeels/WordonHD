// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.jirbo.adcolony.AdColonyVideoAd;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

class ShowVideoFunction
    implements FREFunction
{

    public static final String KEY = "show_video_function";

    ShowVideoFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        AirADCContext airadccontext;
        airadccontext = (AirADCContext)frecontext;
        airadccontext.getClass();
        Log.i("AdColonyANE", "ShowVideo");
        if (!airadccontext.configured)
        {
            return FREObject.newObject(false);
        }
        frecontext = afreobject[0].getAsString();
        if (frecontext.length() <= 0) goto _L2; else goto _L1
_L1:
        frecontext = new AdColonyVideoAd(frecontext);
_L4:
        frecontext.withListener(airadccontext.listener).show();
        break MISSING_BLOCK_LABEL_101;
_L2:
        frecontext = new AdColonyVideoAd();
        if (true) goto _L4; else goto _L3
_L3:
        frecontext;
        airadccontext.getClass();
        Log.i("AdColonyANE", frecontext.getMessage());
        frecontext.printStackTrace();
        return null;
    }
}
