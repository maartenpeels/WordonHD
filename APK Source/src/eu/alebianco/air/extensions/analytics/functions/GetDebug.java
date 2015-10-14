// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.stackoverflow.util.StackTraceInfo;
import eu.alebianco.air.extensions.utils.FREUtils;
import eu.alebianco.air.extensions.utils.LogLevel;

public class GetDebug
    implements FREFunction
{

    public GetDebug()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        boolean flag = GoogleAnalytics.getInstance(frecontext.getActivity()).isDebugEnabled();
        try
        {
            afreobject = FREObject.newObject(Boolean.valueOf(flag).booleanValue());
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            FREUtils.logEvent(frecontext, LogLevel.ERROR, "Unable to create the return value. [Exception:(type:%s, method:%s)].", new Object[] {
                FREUtils.stripPackageFromClassName(afreobject.toString()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to create the return value on method '%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
        }
        return afreobject;
    }
}
