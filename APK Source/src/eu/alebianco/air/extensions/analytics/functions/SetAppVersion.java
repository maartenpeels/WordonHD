// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.Tracker;
import com.stackoverflow.util.StackTraceInfo;
import eu.alebianco.air.extensions.utils.FREUtils;
import eu.alebianco.air.extensions.utils.LogLevel;

public class SetAppVersion
    implements FREFunction
{

    public SetAppVersion()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        Object obj;
        try
        {
            obj = afreobject[0].getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read the 'trackingId' parameter. [Exception:(type:%s, method:%s)].", new Object[] {
                FREUtils.stripPackageFromClassName(afreobject.toString()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read the 'trackingId' parameter on method '%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
        }
        obj = GoogleAnalytics.getInstance(frecontext.getActivity()).getTracker(((String) (obj)));
        try
        {
            afreobject = afreobject[1].getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read the 'version' parameter. [Exception:(type:%s, method:%s)].", new Object[] {
                FREUtils.stripPackageFromClassName(afreobject.toString()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
            Log.e("ANE", "got an error", afreobject);
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read the 'version' parameter on method '%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
        }
        ((Tracker) (obj)).setAppVersion(afreobject);
        return null;
    }
}
