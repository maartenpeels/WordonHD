// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.unity3d.ads.android.IUnityAdsListener;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            UnityadsAdapter

private class <init>
    implements IUnityAdsListener
{

    final UnityadsAdapter this$0;

    public void onFetchCompleted()
    {
        (()UnityadsAdapter.access$100(UnityadsAdapter.this).get(UnityadsAdapter.access$000())).fetchListener.set(new com.heyzap.mediation.abstr.<init>());
    }

    public void onFetchCompleted(String s)
    {
        onFetchCompleted();
    }

    public void onFetchFailed()
    {
        (()UnityadsAdapter.access$100(UnityadsAdapter.this).get(UnityadsAdapter.access$000())).fetchListener.set(new com.heyzap.mediation.abstr.<init>(com.heyzap.internal.lureReason.NO_FILL, "Failed to load."));
    }

    public void onFetchFailed(String s)
    {
        onFetchFailed();
    }

    public void onHide()
    {
        UnityadsAdapter.access$900(UnityadsAdapter.this).closeListener.set(Boolean.valueOf(true));
    }

    public void onShow()
    {
        UnityadsAdapter.access$900(UnityadsAdapter.this).displayListener.set(new com.heyzap.mediation.abstr.t());
    }

    public void onVideoCompleted(String s, final boolean skipped)
    {
        if (com.heyzap.internal.ED.ED(UnityadsAdapter.access$900(UnityadsAdapter.this).adUnit))
        {
            UnityadsAdapter.access$900(UnityadsAdapter.this).closeListener.addListener(new Runnable() {

                final UnityadsAdapter.AdListener this$1;
                final boolean val$skipped;

                public void run()
                {
                    SettableFuture settablefuture = UnityadsAdapter.access$900(this$0).incentiveListener;
                    boolean flag;
                    if (!skipped)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    settablefuture.set(Boolean.valueOf(flag));
                }

            
            {
                this$1 = UnityadsAdapter.AdListener.this;
                skipped = flag;
                super();
            }
            }, UnityadsAdapter.access$1000(UnityadsAdapter.this));
        }
    }

    public void onVideoStarted()
    {
    }

    private _cls1.val.skipped()
    {
        this$0 = UnityadsAdapter.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
