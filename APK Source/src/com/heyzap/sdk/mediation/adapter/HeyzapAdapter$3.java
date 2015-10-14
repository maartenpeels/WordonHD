// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;


// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

class artedListener
    implements com.heyzap.mediation.adapter.r.FetchStartedListener
{

    final HeyzapAdapter this$0;
    final com.heyzap.mediation.abstr.etchStartedListener val$fetchStartedListener;

    public void onFetchStarted(com.heyzap.internal. , Wrapper wrapper)
    {
        val$fetchStartedListener.onFetchStarted(, wrapper.fetchListener);
    }

    public volatile void onFetchStarted(com.heyzap.internal. , Object obj)
    {
        onFetchStarted(, (Wrapper)obj);
    }

    artedListener()
    {
        this$0 = final_heyzapadapter;
        val$fetchStartedListener = com.heyzap.mediation.abstr.etchStartedListener.this;
        super();
    }
}
