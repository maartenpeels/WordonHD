// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import android.content.Context;
import com.heyzap.house.abstr.AbstractFetchHandler;
import com.heyzap.internal.APIClient;

// Referenced classes of package com.heyzap.house.request:
//            FetchRequest

class ler
    implements Runnable
{

    final FetchRequest this$0;
    final Context val$context;
    final AbstractFetchHandler val$fetchHandler;

    public void run()
    {
        APIClient.post(val$context, getUrl(), getParams(val$context), val$fetchHandler);
    }

    ler()
    {
        this$0 = final_fetchrequest;
        val$context = context1;
        val$fetchHandler = AbstractFetchHandler.this;
        super();
    }
}
