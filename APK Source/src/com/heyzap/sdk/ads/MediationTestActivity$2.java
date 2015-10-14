// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.sdk.mediation.testactivity.NetworkStatus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class rkStatus.getName extends ArrayList
{

    final MediationTestActivity this$0;

    rkStatus()
    {
        this$0 = MediationTestActivity.this;
        super();
        for (mediationtestactivity = currentNetworks.values().iterator(); hasNext(); add(((NetworkStatus)next()).getName())) { }
    }
}
