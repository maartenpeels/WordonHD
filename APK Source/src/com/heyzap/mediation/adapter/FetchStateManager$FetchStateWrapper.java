// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.heyzap.mediation.adapter:
//            FetchStateManager

private static class <init>
{

    public final AtomicBoolean started;
    public final Object value;

    private (Object obj)
    {
        started = new AtomicBoolean(false);
        value = obj;
    }

    value(Object obj, value value1)
    {
        this(obj);
    }
}
