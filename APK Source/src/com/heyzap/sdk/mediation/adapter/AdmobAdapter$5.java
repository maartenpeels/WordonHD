// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;


// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdmobAdapter

class tartedListener
    implements com.heyzap.mediation.adapter.er.FetchStartedListener
{

    final AdmobAdapter this$0;
    final com.heyzap.mediation.abstr.FetchStartedListener val$fetchStartedListener;

    public void onFetchStarted(com.heyzap.internal.t t, Wrapper wrapper)
    {
        val$fetchStartedListener.onFetchStarted(t, wrapper.fetchListener);
    }

    public volatile void onFetchStarted(com.heyzap.internal.t t, Object obj)
    {
        onFetchStarted(t, (Wrapper)obj);
    }

    tartedListener()
    {
        this$0 = final_admobadapter;
        val$fetchStartedListener = com.heyzap.mediation.abstr.FetchStartedListener.this;
        super();
    }
}
