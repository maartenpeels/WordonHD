// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            bx, de, bu, cc

class by extends bx
{

    private de a;

    by()
    {
        a = new de();
    }

    void a(Class class1, cc cc1)
    {
        a.a(class1, cc1);
    }

    public void a(Object obj, StringBuilder stringbuilder)
    {
        Object obj2 = bu.a(obj);
        if (obj2 == null)
        {
            stringbuilder.append(" null ");
            return;
        }
        obj = null;
        Iterator iterator = de.a(obj2.getClass()).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            obj = (Class)iterator.next();
            cc cc1 = (cc)a.a(obj);
            obj = cc1;
            if (cc1 == null)
            {
                continue;
            }
            obj = cc1;
            break;
        } while (true);
        Object obj1 = obj;
        if (obj == null)
        {
            obj1 = obj;
            if (obj2.getClass().isArray())
            {
                obj1 = (cc)a.a([Ljava/lang/Object;);
            }
        }
        if (obj1 == null)
        {
            throw new RuntimeException((new StringBuilder()).append("json can't serialize type : ").append(obj2.getClass()).toString());
        } else
        {
            ((cc) (obj1)).a(obj2, stringbuilder);
            return;
        }
    }
}
