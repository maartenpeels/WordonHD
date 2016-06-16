// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package c.m.x.a.gv:
//            ae, z, ad

public class y extends ae
    implements Map
{

    ad a;

    public y()
    {
    }

    private ad b()
    {
        if (a == null)
        {
            a = new z(this);
        }
        return a;
    }

    public Set entrySet()
    {
        ad ad1 = b();
        if (ad1.b == null)
        {
            ad1.b = new ad.b(ad1);
        }
        return ad1.b;
    }

    public Set keySet()
    {
        ad ad1 = b();
        if (ad1.c == null)
        {
            ad1.c = new ad.c(ad1);
        }
        return ad1.c;
    }

    public void putAll(Map map)
    {
        a(h + map.size());
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

    }

    public Collection values()
    {
        ad ad1 = b();
        if (ad1.d == null)
        {
            ad1.d = new ad.e(ad1);
        }
        return ad1.d;
    }
}
