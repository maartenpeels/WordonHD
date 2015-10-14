// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.utils;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREObject;
import java.io.PrintWriter;
import java.io.StringWriter;

// Referenced classes of package eu.alebianco.air.extensions.utils:
//            LogLevel

public class FREUtils
{

    private static final String TAG = "ANE";

    public FREUtils()
    {
    }

    public static transient FREObject createRuntimeException(String s, int i, String s1, Object aobj[])
    {
        try
        {
            s = FREObject.newObject(s, new FREObject[] {
                FREObject.newObject(String.format(s1, aobj)), FREObject.newObject(i)
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e("ANE", "Inception Error: Unable to create the runtime exception to notify the application about the previous error.");
            return null;
        }
        return s;
    }

    public static String getStackTrace(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        return stringwriter.toString();
    }

    public static transient void logEvent(FREContext frecontext, LogLevel loglevel, String s, Object aobj[])
    {
        s = String.format(s, aobj);
        Log.println(loglevel.getPriority(), "ANE", s);
        frecontext.dispatchStatusEventAsync(s, loglevel.getName());
    }

    public static String stripPackageFromClassName(String s)
    {
        return s.substring(s.lastIndexOf(".") + 1);
    }
}
