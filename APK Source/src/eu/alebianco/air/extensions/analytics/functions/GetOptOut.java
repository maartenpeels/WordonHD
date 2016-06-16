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
import java.util.HashMap;

public class GetOptOut
    implements FREFunction
{

    private final HashMap mutex = new HashMap();

    public GetOptOut()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        GoogleAnalytics.getInstance(frecontext.getActivity()).requestAppOptOut(new com.google.analytics.tracking.android.GoogleAnalytics.AppOptOutCallback() {

            final GetOptOut this$0;

            public void reportAppOptOut(boolean flag1)
            {
                synchronized (mutex)
                {
                    mutex.put("done", Boolean.valueOf(true));
                    mutex.put("result", Boolean.valueOf(flag1));
                    mutex.notifyAll();
                }
                return;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                this$0 = GetOptOut.this;
                super();
            }
        });
        afreobject = mutex;
        afreobject;
        JVM INSTR monitorenter ;
_L1:
        boolean flag;
        if (!mutex.containsKey("done"))
        {
            break MISSING_BLOCK_LABEL_57;
        }
        flag = ((Boolean)mutex.get("done")).booleanValue();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        mutex.wait();
          goto _L1
        frecontext;
        throw new RuntimeException(frecontext);
        frecontext;
        afreobject;
        JVM INSTR monitorexit ;
        throw frecontext;
        afreobject;
        JVM INSTR monitorexit ;
        try
        {
            afreobject = FREObject.newObject(((Boolean)mutex.get("result")).booleanValue());
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
