// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package com.chartboost.sdk.impl:
//            dg

class dd
{

    private static final ConcurrentMap a = dg.c();

    public static List a(Class class1)
    {
        ConcurrentMap concurrentmap = a();
        do
        {
            List list = (List)concurrentmap.get(class1);
            if (list != null)
            {
                return list;
            }
            concurrentmap.putIfAbsent(class1, b(class1));
        } while (true);
    }

    private static ConcurrentMap a()
    {
        return a;
    }

    private static void a(Class class1, List list)
    {
        if (class1 != null && class1 != java/lang/Object)
        {
            Class aclass[] = class1.getInterfaces();
            for (int i = aclass.length - 1; i >= 0; i--)
            {
                a(aclass[i], list);
            }

            a(class1.getSuperclass(), list);
            if (!list.contains(class1))
            {
                list.add(class1);
                return;
            }
        }
    }

    private static List b(Class class1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(java/lang/Object);
        a(class1, arraylist);
        Collections.reverse(arraylist);
        return Collections.unmodifiableList(new ArrayList(arraylist));
    }

}
