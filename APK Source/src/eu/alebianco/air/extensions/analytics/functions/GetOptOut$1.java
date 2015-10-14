// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;

import java.util.HashMap;

// Referenced classes of package eu.alebianco.air.extensions.analytics.functions:
//            GetOptOut

class this._cls0
    implements com.google.analytics.tracking.android.ics.AppOptOutCallback
{

    final GetOptOut this$0;

    public void reportAppOptOut(boolean flag)
    {
        synchronized (GetOptOut.access$000(GetOptOut.this))
        {
            GetOptOut.access$000(GetOptOut.this).put("done", Boolean.valueOf(true));
            GetOptOut.access$000(GetOptOut.this).put("result", Boolean.valueOf(flag));
            GetOptOut.access$000(GetOptOut.this).notifyAll();
        }
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    OutCallback()
    {
        this$0 = GetOptOut.this;
        super();
    }
}
