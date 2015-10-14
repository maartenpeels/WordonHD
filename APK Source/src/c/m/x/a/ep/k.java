// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package c.m.x.a.ep:
//            g, m, e, b, 
//            d, f, c

final class k
    implements g
{

    k()
    {
    }

    public final Notification a(e e1)
    {
        m m1;
        m1 = new m(e1.a, e1.r, e1.b, e1.c, e1.h, e1.f, e1.i, e1.d, e1.e, e1.g, e1.n, e1.o, e1.p, e1.k, e1.j, e1.m);
        b b1;
        for (Iterator iterator = e1.q.iterator(); iterator.hasNext(); m1.a(b1.a, b1.b, b1.c))
        {
            b1 = (b)iterator.next();
        }

        if (e1.l == null) goto _L2; else goto _L1
_L1:
        if (!(e1.l instanceof d)) goto _L4; else goto _L3
_L3:
        e1 = (d)e1.l;
        m1.a(((d) (e1)).e, ((d) (e1)).g, ((d) (e1)).f, ((d) (e1)).a);
_L2:
        return m1.a();
_L4:
        if (e1.l instanceof f)
        {
            e1 = (f)e1.l;
            m1.a(((f) (e1)).e, ((f) (e1)).g, ((f) (e1)).f, ((f) (e1)).a);
        } else
        if (e1.l instanceof c)
        {
            e1 = (c)e1.l;
            m1.a(((c) (e1)).e, ((c) (e1)).g, ((c) (e1)).f, ((c) (e1)).a, ((c) (e1)).b, ((c) (e1)).c);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }
}
