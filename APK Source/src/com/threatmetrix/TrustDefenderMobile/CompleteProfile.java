// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            TrustDefenderMobile

public class CompleteProfile
    implements Runnable
{

    CountDownLatch latch;
    TrustDefenderMobile profile;

    public CompleteProfile(TrustDefenderMobile trustdefendermobile, CountDownLatch countdownlatch)
    {
        profile = null;
        latch = null;
        profile = trustdefendermobile;
        latch = countdownlatch;
    }

    public void run()
    {
        profile.completeProfileRequest();
        if (latch != null)
        {
            latch.countDown();
        }
    }
}
