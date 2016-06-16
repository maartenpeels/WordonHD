// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import java.util.List;

// Referenced classes of package c.m.x.a.iab:
//            h

final class j
    implements Runnable
{

    final List a;
    final h b;

    j(h h1, List list)
    {
        b = h1;
        a = list;
        super();
    }

    public final void run()
    {
        Object obj = b.d;
        obj = b.a;
        obj = a;
    }
}
