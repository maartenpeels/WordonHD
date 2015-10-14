// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.heyzap.sdk.ads.VideoAd;
import com.heyzap.sdk.extensions.air.HeyzapExtension;

public class FetchVideoAdFunction
    implements FREFunction
{

    private static String TAG = "FetchVideoAdFunction";

    public FetchVideoAdFunction()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (afreobject == null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        if (afreobject.length != 0)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        VideoAd.fetch();
        break MISSING_BLOCK_LABEL_32;
        try
        {
            VideoAd.fetch(afreobject[0].getAsString());
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            HeyzapExtension.log(frecontext);
        }
        return null;
    }

}
