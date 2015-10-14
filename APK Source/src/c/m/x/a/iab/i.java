// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import java.util.List;

// Referenced classes of package c.m.x.a.iab:
//            h, r, p, k

final class i
    implements Runnable
{

    final List a;
    final h b;

    i(h h1, List list)
    {
        b = h1;
        a = list;
        super();
    }

    public final void run()
    {
        b.b.a((r)b.a.get(0), (p)a.get(0));
    }
}
