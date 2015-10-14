// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import com.google.android.gms.internal.fq;

// Referenced classes of package com.google.android.gms.common.api:
//            Result, BatchResultToken, PendingResult, Status

public final class BatchResult
    implements Result
{

    private final PendingResult AP[];
    private final Status wJ;

    BatchResult(Status status, PendingResult apendingresult[])
    {
        wJ = status;
        AP = apendingresult;
    }

    public Status getStatus()
    {
        return wJ;
    }

    public Result take(BatchResultToken batchresulttoken)
    {
        PendingResult pendingresult;
        boolean flag;
        if (batchresulttoken.mId < AP.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        fq.b(flag, "The result token does not belong to this batch");
        pendingresult = AP[batchresulttoken.mId];
        AP[batchresulttoken.mId] = null;
        return pendingresult.await();
    }
}
