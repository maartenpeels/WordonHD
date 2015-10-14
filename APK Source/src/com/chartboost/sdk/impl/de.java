// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            dg, df, dd, dh

public class de
{
    private final class a
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

        private a()
        {
            a = de.this;
            super();
        }

    }


    private final Map a = dg.c();
    private final Map b = df.a(new a());

    public de()
    {
    }

    public static List a(Class class1)
    {
        return dd.a(class1);
    }

    static Map a(de de1)
    {
        return de1.a;
    }

    public int a()
    {
        return a.size();
    }

    public Object a(Class class1, Object obj)
    {
        class1 = ((Class) (a.put(class1, obj)));
        b.clear();
        return class1;
        class1;
        b.clear();
        throw class1;
    }

    public Object a(Object obj)
    {
        return b.get(obj);
    }
}
