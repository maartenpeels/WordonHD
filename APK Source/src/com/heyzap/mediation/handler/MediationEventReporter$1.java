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

    public void run(com.heyzap.mediation.abstr.ult ult, Exception exception)
    {
        if (ult != null && ult.success)
        {
            MediationEventReporter.access$000(MediationEventReporter.this, new RequestParams(val$baseParams));
        }
    }

    public volatile void run(Object obj, Exception exception)
    {
        run((com.heyzap.mediation.abstr.ult)obj, exception);
    }

    t(Map map)
    {
        this$0 = final_mediationeventreporter;
        val$baseParams = map;
        super(ListenableFuture.this);
    }
}
