// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;
import com.heyzap.internal.Logger;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;

// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtensionContext

public class HeyzapExtension
    implements FREExtension
{

    private static Boolean PRINT_LOG = Boolean.valueOf(true);
    private static String TAG = "Heyzap";
    public static FREContext context;
    public static HashMap contexts;

    public HeyzapExtension()
    {
    }

    public static HeyzapExtensionContext getContext(String s)
    {
        if (contexts != null)
        {
            return (HeyzapExtensionContext)contexts.get(s);
        } else
        {
            return null;
        }
    }

    public static void log(String s)
    {
        if (PRINT_LOG.booleanValue())
        {
            Log.d(TAG, s);
        }
        if (contexts != null)
        {
            HeyzapExtensionContext heyzapextensioncontext = (HeyzapExtensionContext)contexts.get("main");
            if (heyzapextensioncontext != null)
            {
                heyzapextensioncontext.dispatchStatusEventAsync("LOGGING", s);
            }
        }
    }

    public static void log(Throwable throwable)
    {
        if (throwable != null)
        {
            if (PRINT_LOG.booleanValue())
            {
                Log.d(TAG, (new StringBuilder()).append("Exception: ").append(throwable.toString()).toString());
            }
            if (PRINT_LOG.booleanValue())
            {
                Logger.trace(throwable);
            }
            if (contexts != null)
            {
                Object obj = new StringWriter();
                throwable.printStackTrace(new PrintWriter(((java.io.Writer) (obj))));
                obj = ((StringWriter) (obj)).toString();
                HeyzapExtensionContext heyzapextensioncontext = (HeyzapExtensionContext)contexts.get("main");
                if (heyzapextensioncontext != null)
                {
                    heyzapextensioncontext.dispatchStatusEventAsync("LOGGING", (new StringBuilder()).append("Exception: ").append(throwable.toString()).toString());
                    heyzapextensioncontext.dispatchStatusEventAsync("LOGGING", ((String) (obj)));
                    return;
                }
            }
        }
    }

    public FREContext createContext(String s)
    {
        HeyzapExtensionContext heyzapextensioncontext = (HeyzapExtensionContext)contexts.get(s);
        if (heyzapextensioncontext == null)
        {
            heyzapextensioncontext = HeyzapExtensionContext.Factory.build(s);
            contexts.put(s, heyzapextensioncontext);
            return heyzapextensioncontext;
        } else
        {
            return heyzapextensioncontext;
        }
    }

    public void dispose()
    {
        contexts.clear();
    }

    public void initialize()
    {
        contexts = new HashMap();
    }

}
