// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            RequestsImpl

private static abstract class _cls1.wz extends com.google.android.gms.games.ummariesImpl
{

    public com.google.android.gms.games.request.Impl N(Status status)
    {
        return new com.google.android.gms.games.request.Requests.LoadRequestSummariesResult(status) {

            final RequestsImpl.LoadRequestSummariesImpl KX;
            final Status wz;

            public Status getStatus()
            {
                return wz;
            }

            public void release()
            {
            }

            
            {
                KX = RequestsImpl.LoadRequestSummariesImpl.this;
                wz = status;
                super();
            }
        };
    }

    public Result d(Status status)
    {
        return N(status);
    }

    private _cls1.wz()
    {
    }
}
