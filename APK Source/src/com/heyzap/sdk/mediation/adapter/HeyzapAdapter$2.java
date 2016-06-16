// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.mediation.adapter.AdUnitAliasMap;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

class val.adUnit
    implements Runnable
{

    final HeyzapAdapter this$0;
    final com.heyzap.internal. val$adUnit;

    public void run()
    {
        HeyzapAdapter.access$300(HeyzapAdapter.this, adUnitAliasMap.translate(val$adUnit));
    }

    ()
    {
        this$0 = final_heyzapadapter;
        val$adUnit = com.heyzap.internal..this;
        super();
    }
}
