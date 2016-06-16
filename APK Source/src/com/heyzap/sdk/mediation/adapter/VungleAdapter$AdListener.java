// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.vungle.publisher.EventListener;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            VungleAdapter

private class <init>
    implements EventListener
{

    final VungleAdapter this$0;

    public void onAdEnd(boolean flag)
    {
        VungleAdapter.access$700(VungleAdapter.this).closeListener.set(Boolean.valueOf(true));
        if (flag)
        {
            VungleAdapter.access$700(VungleAdapter.this).clickListener.set(Boolean.valueOf(true));
        }
    }

    public void onAdStart()
    {
        VungleAdapter.access$700(VungleAdapter.this).displayListener.set(new com.heyzap.mediation.abstr.ult());
    }

    public void onAdUnavailable(String s)
    {
        (()VungleAdapter.access$400(VungleAdapter.this).get(VungleAdapter.access$300())).fetchListener.set(new com.heyzap.mediation.abstr.t(com.heyzap.internal.ailureReason.NO_FILL, s));
    }

    public void onCachedAdAvailable()
    {
        (()VungleAdapter.access$400(VungleAdapter.this).get(VungleAdapter.access$300())).fetchListener.set(new com.heyzap.mediation.abstr.t());
    }

    public void onVideoView(boolean flag, int i, int j)
    {
        if (com.heyzap.internal.IZED.IZED(VungleAdapter.access$700(VungleAdapter.this).adUnit))
        {
            VungleAdapter.access$700(VungleAdapter.this).incentiveListener.set(Boolean.valueOf(flag));
        }
        VungleAdapter.access$700(VungleAdapter.this).closeListener.set(Boolean.valueOf(true));
    }

    private ()
    {
        this$0 = VungleAdapter.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
