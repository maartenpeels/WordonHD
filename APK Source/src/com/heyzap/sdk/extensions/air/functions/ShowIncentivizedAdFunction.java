// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air.functions;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.heyzap.internal.Logger;
import com.heyzap.sdk.ads.IncentivizedAd;
import com.heyzap.sdk.extensions.air.HeyzapExtension;
import java.io.PrintWriter;
import java.io.StringWriter;

public class ShowIncentivizedAdFunction
    implements FREFunction
{

    private static String TAG = "ShowIncentivizedAdFunction";

    public ShowIncentivizedAdFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        Log.d(TAG, "call");
        if (afreobject == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        if (afreobject.length != 0)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        IncentivizedAd.display(frecontext.getActivity());
        break MISSING_BLOCK_LABEL_103;
        try
        {
            afreobject = afreobject[0].getAsString();
            IncentivizedAd.display(frecontext.getActivity(), afreobject);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Logger.trace(frecontext);
            HeyzapExtension.log((new StringBuilder()).append("Exception caught: ").append(frecontext.toString()).toString());
            afreobject = new StringWriter();
            frecontext.printStackTrace(new PrintWriter(afreobject));
            HeyzapExtension.log(afreobject.toString());
        }
        return null;
    }

}
