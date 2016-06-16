// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.internal.Constants;
import com.heyzap.mediation.config.MediationConfigLoader;

// Referenced classes of package com.heyzap.mediation:
//            MediationManager

class this._cls0
    implements Runnable
{

    final MediationManager this$0;

    public void run()
    {
        MediationManager.access$000(MediationManager.this).start();
        if ((MediationManager.access$100(MediationManager.this).flags & 1) == 0)
        {
            fetch(com.heyzap.internal.TERSTITIAL, Constants.DEFAULT_TAG);
        }
    }

    figLoader()
    {
        this$0 = MediationManager.this;
        super();
    }
}
