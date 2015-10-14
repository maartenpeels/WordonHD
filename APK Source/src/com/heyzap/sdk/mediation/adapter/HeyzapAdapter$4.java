// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import com.heyzap.mediation.adapter.FetchStateManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

class val.retFuture
    implements Runnable
{

    final HeyzapAdapter this$0;
    final SettableFuture val$retFuture;
    final Set val$updatedUnits;

    public void run()
    {
        ArrayList arraylist = new ArrayList();
        com.heyzap.internal. ;
        for (Iterator iterator = adUnitAliasMap.translate(val$updatedUnits).iterator(); iterator.hasNext(); arraylist.add(((Wrapper)fetchStateManager.get()).fetchListener))
        {
             = (com.heyzap.internal.)iterator.next();
            HeyzapAdapter.access$300(HeyzapAdapter.this, );
        }

        FutureUtils.bind(FutureUtils.allOf(arraylist, HeyzapAdapter.access$400(HeyzapAdapter.this)), val$retFuture, HeyzapAdapter.access$500(HeyzapAdapter.this));
    }

    Wrapper()
    {
        this$0 = final_heyzapadapter;
        val$updatedUnits = set;
        val$retFuture = SettableFuture.this;
        super();
    }
}
