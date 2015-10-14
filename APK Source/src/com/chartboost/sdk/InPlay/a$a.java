// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.InPlay;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.impl.s;

// Referenced classes of package com.chartboost.sdk.InPlay:
//            a

private class <init>
    implements com.chartboost.sdk.impl.a
{

    final a a;

    public void a(s s1)
    {
        CBLogging.b(com.chartboost.sdk.InPlay.a.d(), (new StringBuilder()).append("Bitmap download failed ").append(s1.getMessage()).toString());
    }

    private BLogging(a a1)
    {
        a = a1;
        super();
    }

    a(a a1, a a2)
    {
        this(a1);
    }
}
