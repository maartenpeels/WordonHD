// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Tracking.a;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.chartboost.sdk.impl:
//            be, r, q, h, 
//            s

private static class <init>
    implements <init>
{

    private ing a;

    static <init> a(<init> <init>1, <init> <init>2)
    {
        <init>1.a = <init>2;
        return <init>2;
    }

    public void a(s s1)
    {
        if ((s1 instanceof r) || (s1 instanceof q) || (s1 instanceof h))
        {
            if (a != null)
            {
                long l = (System.currentTimeMillis() - com.chartboost.sdk.impl.a(a)) / 1000L;
                com.chartboost.sdk.Tracking.a.a(b(a), Long.valueOf(l).toString(), c(a), s1.getMessage());
                com.chartboost.sdk.Tracking.a.e("cache", "miss", b(a));
            }
            be.l().put(Integer.valueOf(a.hashCode()), a);
            CBLogging.b(be.g(), (new StringBuilder()).append("Error downloading video ").append(s1.getMessage()).append(b(a)).toString());
        }
    }

    private CBLogging()
    {
    }

    CBLogging(CBLogging cblogging)
    {
        this();
    }
}
