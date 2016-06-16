// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            CompleteProfile, TrustDefenderMobile

final class  extends CompleteProfile
{

    final TrustDefenderMobile this$0;

    public final void run()
    {
        if (!TrustDefenderMobile.access$000(profile))
        {
            try
            {
                TrustDefenderMobile.access$100();
                TrustDefenderMobile.access$400(profile, TrustDefenderMobile.access$200(TrustDefenderMobile.this), TrustDefenderMobile.access$300(profile));
                TrustDefenderMobile.access$100();
                (new StringBuilder("status = ")).append(profile.getStatus().toString());
            }
            catch (InterruptedException interruptedexception)
            {
                TrustDefenderMobile.access$100();
            }
        }
        if (latch != null)
        {
            latch.countDown();
        }
    }

    MStatusCode(TrustDefenderMobile trustdefendermobile1, CountDownLatch countdownlatch)
    {
        this$0 = TrustDefenderMobile.this;
        super(trustdefendermobile1, countdownlatch);
    }
}
