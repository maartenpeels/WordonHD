// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.Iterator;

// Referenced classes of package c.m.x.a.gv:
//            ad, aa

final class b
    implements Iterator, java.util.ntry
{

    int a;
    int b;
    boolean c;
    final ad d;

    public final boolean equals(Object obj)
    {
        if (!c)
        {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof java.util.ntry))
        {
            return false;
        }
        obj = (java.util.ntry)obj;
        return aa.a(((java.util.ntry) (obj)).getKey(), d.a(b, 0)) && aa.a(((java.util.ntry) (obj)).getValue(), d.a(b, 1));
    }

    public final Object getKey()
    {
        if (!c)
        {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        } else
        {
            return d.a(b, 0);
        }
    }

    public final Object getValue()
    {
        if (!c)
        {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        } else
        {
            return d.a(b, 1);
        }
    }

    public final boolean hasNext()
    {
        return b < a;
    }

    public final int hashCode()
    {
        if (!c)
        {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        Object obj = d.a(b, 0);
        Object obj1 = d.a(b, 1);
        int i;
        int j;
        if (obj == null)
        {
            i = 0;
        } else
        {
            i = obj.hashCode();
        }
        if (obj1 == null)
        {
            j = 0;
        } else
        {
            j = obj1.hashCode();
        }
        return i ^ j;
    }

    public final volatile Object next()
    {
        b = b + 1;
        c = true;
        return this;
    }

    public final void remove()
    {
        if (!c)
        {
            throw new IllegalStateException();
        } else
        {
            b = b - 1;
            a = a - 1;
            c = false;
            d.a(b);
            return;
        }
    }

    public final Object setValue(Object obj)
    {
        if (!c)
        {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        } else
        {
            return d.a(b, obj);
        }
    }

    public final String toString()
    {
        return (new StringBuilder()).append(getKey()).append("=").append(getValue()).toString();
    }

    (ad ad1)
    {
        d = ad1;
        super();
        c = false;
        a = ad1.a() - 1;
        b = -1;
    }
}
