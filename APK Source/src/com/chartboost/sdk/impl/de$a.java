// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            dh, de

private final class <init>
    implements dh
{

    final de a;

    public Object a(Class class1)
    {
        for (class1 = de.a(class1).iterator(); class1.hasNext();)
        {
            Object obj = (Class)class1.next();
            obj = de.a(a).get(obj);
            if (obj != null)
            {
                return obj;
            }
        }

        return null;
    }

    public volatile Object a(Object obj)
    {
        return a((Class)obj);
    }

    private (de de1)
    {
        a = de1;
        super();
    }

    a(de de1, a a1)
    {
        this(de1);
    }
}
