// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;
import com.jirbo.adcolony.AdColonyV4VCListener;
import com.jirbo.adcolony.AdColonyV4VCReward;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdcolonyAdapter

private class <init>
    implements AdColonyV4VCListener
{

    final AdcolonyAdapter this$0;

    public void onAdColonyV4VCReward(AdColonyV4VCReward adcolonyv4vcreward)
    {
        com.heyzap.mediation.abstr.tener tener = lastIncentivizedDisplay;
        if (tener != null)
        {
            tener.Listener.set(Boolean.valueOf(adcolonyv4vcreward.success()));
        }
    }

    private ()
    {
        this$0 = AdcolonyAdapter.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
