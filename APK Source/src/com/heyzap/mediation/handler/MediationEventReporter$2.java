// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.http.RequestParams;
import com.heyzap.internal.ListenableFuture;
import java.util.Map;

// Referenced classes of package com.heyzap.mediation.handler:
//            MediationEventReporter

class val.baseParams extends com.heyzap.internal.e
{

    final MediationEventReporter this$0;
    final Map val$baseParams;

    public void run(Boolean boolean1, Exception exception)
    {
        if (exception == null)
        {
            MediationEventReporter.access$100(MediationEventReporter.this, new RequestParams(val$baseParams));
        }
    }

    public volatile void run(Object obj, Exception exception)
    {
        run((Boolean)obj, exception);
    }

    (Map map)
    {
        this$0 = final_mediationeventreporter;
        val$baseParams = map;
        super(ListenableFuture.this);
    }
}
