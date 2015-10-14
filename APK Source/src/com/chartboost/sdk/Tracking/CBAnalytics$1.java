// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Tracking;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.chartboost.sdk.Tracking:
//            CBAnalytics

static final class b
    implements com.chartboost.sdk.impl.s._cls1
{

    final String a;
    final IAPType b;

    public void a(com.chartboost.sdk.Libraries. , ba ba)
    {
        CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" success response!!").toString());
    }

    public void a(com.chartboost.sdk.Libraries. , ba ba, CBError cberror)
    {
        if (a.equals("iap") &&  != null && .("status") == 400 && b == IAPType.GOOGLE_PLAY)
        {
            CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" 400 response from server!!").toString());
            cberror = bb.a(com.chartboost.sdk.b.l());
             = cberror.j();
            cberror = cberror.i();
            if ( != null && cberror != null)
            {
                .c((File)cberror.get(ba));
                cberror.remove(ba);
            }
            return;
        } else
        {
            CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" failure response!!").toString());
            return;
        }
    }

    IAPType(String s, IAPType iaptype)
    {
        a = s;
        b = iaptype;
        super();
    }
}
