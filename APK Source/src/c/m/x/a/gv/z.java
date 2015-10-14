// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.Map;

// Referenced classes of package c.m.x.a.gv:
//            ad, y, ae

final class z extends ad
{

    final y a;

    z(y y1)
    {
        a = y1;
        super();
    }

    protected final int a()
    {
        return a.h;
    }

    protected final int a(Object obj)
    {
        if (obj == null)
        {
            return a.a();
        } else
        {
            return a.a(obj, obj.hashCode());
        }
    }

    protected final Object a(int i, int j)
    {
        return a.g[(i << 1) + j];
    }

    protected final Object a(int i, Object obj)
    {
        y y1 = a;
        i = (i << 1) + 1;
        Object obj1 = ((ae) (y1)).g[i];
        ((ae) (y1)).g[i] = obj;
        return obj1;
    }

    protected final void a(int i)
    {
        a.c(i);
    }

    protected final void a(Object obj, Object obj1)
    {
        a.put(obj, obj1);
    }

    protected final int b(Object obj)
    {
        return a.a(obj);
    }

    protected final Map b()
    {
        return a;
    }

    protected final void c()
    {
        a.clear();
    }
}
