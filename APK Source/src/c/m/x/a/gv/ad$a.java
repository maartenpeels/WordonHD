// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.Iterator;

// Referenced classes of package c.m.x.a.gv:
//            ad

final class b
    implements Iterator
{

    final int a;
    int b;
    int c;
    boolean d;
    final ad e;

    public final boolean hasNext()
    {
        return c < b;
    }

    public final Object next()
    {
        Object obj = e.a(c, a);
        c = c + 1;
        d = true;
        return obj;
    }

    public final void remove()
    {
        if (!d)
        {
            throw new IllegalStateException();
        } else
        {
            c = c - 1;
            b = b - 1;
            d = false;
            e.a(c);
            return;
        }
    }

    (ad ad1, int i)
    {
        e = ad1;
        super();
        d = false;
        a = i;
        b = ad1.a();
    }
}
