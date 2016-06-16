// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.heyzap.sdk.ads.IncentivizedAd;
import com.heyzap.sdk.extensions.air.HeyzapExtension;

public class IncentivizedAdSetUserIdentifierFunction
    implements FREFunction
{

    private static String TAG = "IncentivizedAdSetUserIdentifierFunction";

    public IncentivizedAdSetUserIdentifierFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (afreobject != null)
        {
            try
            {
                if (afreobject.length > 0)
                {
                    IncentivizedAd.setUserIdentifier(afreobject[0].getAsString());
                }
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                HeyzapExtension.log(frecontext);
            }
        }
        return null;
    }

}
