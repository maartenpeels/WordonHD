// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.ContextReference;
import com.unity3d.ads.android.UnityAds;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            UnityadsAdapter

class this._cls0
    implements Runnable
{

    final UnityadsAdapter this$0;

    public void run()
    {
        UnityAds.changeActivity(UnityadsAdapter.access$800(UnityadsAdapter.this).getActivity());
    }

    ()
    {
        this$0 = UnityadsAdapter.this;
        super();
    }
}
