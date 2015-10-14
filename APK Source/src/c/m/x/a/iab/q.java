// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package c.m.x.a.iab:
//            r

public final class q
{

    Map a;
    Map b;

    q()
    {
        a = new HashMap();
        b = new HashMap();
    }

    final List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            r r1 = (r)iterator.next();
            if (r1.a.equals(s))
            {
                arraylist.add(r1.d);
            }
        } while (true);
        return arraylist;
    }

    public final Map a()
    {
        return a;
    }

    public final Map b()
    {
        return b;
    }
}
