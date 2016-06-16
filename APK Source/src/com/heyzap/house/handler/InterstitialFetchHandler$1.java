// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import com.heyzap.house.model.AdModel;
import java.util.ArrayList;

// Referenced classes of package com.heyzap.house.handler:
//            InterstitialFetchHandler

class this._cls0
    implements com.heyzap.house.model.eteListener
{

    final InterstitialFetchHandler this$0;

    public void onComplete(AdModel admodel, Throwable throwable)
    {
        if (throwable != null)
        {
            InterstitialFetchHandler.access$000(InterstitialFetchHandler.this, throwable);
            return;
        } else
        {
            throwable = new ArrayList();
            throwable.add(admodel);
            InterstitialFetchHandler.access$100(InterstitialFetchHandler.this, throwable);
            return;
        }
    }

    eListener()
    {
        this$0 = InterstitialFetchHandler.this;
        super();
    }
}
