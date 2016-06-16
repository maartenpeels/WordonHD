// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ba;

// Referenced classes of package com.chartboost.sdk:
//            b

static final class 
    implements com.chartboost.sdk.impl.
{

    final a a;

    public void a(com.chartboost.sdk.Libraries. , ba ba)
    {
        if ( != null)
        {
            b.a(.a("response"));
        }
        if (a != null)
        {
            a.a();
        }
    }

    public void a(com.chartboost.sdk.Libraries.a a1, ba ba, CBError cberror)
    {
        if (a != null)
        {
            a.a();
        }
    }

    l.CBError(l.CBError cberror)
    {
        a = cberror;
        super();
    }
}
