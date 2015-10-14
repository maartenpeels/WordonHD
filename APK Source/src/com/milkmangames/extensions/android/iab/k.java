// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import c.m.x.a.iab.o;
import c.m.x.a.iab.p;
import c.m.x.a.iab.q;
import c.m.x.a.iab.r;
import c.m.x.a.iab.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            i, n

final class k
    implements o
{

    final int a;
    final i b;

    k(i j, int l)
    {
        b = j;
        a = l;
        super();
    }

    public final void a(p p1, q q1)
    {
        if (p1.d())
        {
            b.a(i.c, p1);
            return;
        }
        p1 = new JSONObject();
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        t t1;
        JSONObject jsonobject3;
        for (Iterator iterator = q1.a().values().iterator(); iterator.hasNext(); n.a(jsonobject, t1.a(), jsonobject3))
        {
            t1 = (t)iterator.next();
            jsonobject3 = new JSONObject();
            n.a(jsonobject3, "itemType", t1.f());
            n.a(jsonobject3, "type", t1.b());
            n.a(jsonobject3, "price", t1.c());
            n.a(jsonobject3, "title", t1.d());
            n.a(jsonobject3, "description", t1.e());
        }

        r r1;
        for (q1 = q1.b().values().iterator(); q1.hasNext(); i.a(b, r1))
        {
            r1 = (r)q1.next();
            JSONObject jsonobject2 = n.a(r1);
            n.a(jsonobject1, r1.d(), jsonobject2);
        }

        n.a(p1, "skus", jsonobject);
        n.a(p1, "purchases", jsonobject1);
        n.a(p1, "requestId", Integer.valueOf(a));
        b.a(i.d, p1.toString());
    }
}
