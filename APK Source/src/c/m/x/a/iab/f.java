// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.os.Handler;
import java.util.List;

// Referenced classes of package c.m.x.a.iab:
//            c, p, d, g, 
//            o

final class f
    implements Runnable
{

    final boolean a;
    final List b;
    final Handler c;
    final o d;
    final d e;

    f(d d1, boolean flag, List list, Handler handler, o o)
    {
        e = d1;
        a = flag;
        b = list;
        c = handler;
        d = o;
        super();
    }

    public final void run()
    {
        p p1 = new p(0, "Inventory refresh successful.");
        q q;
        try
        {
            q = e.a(a, b);
        }
        catch (c c1)
        {
            c1 = c1.a();
            q = null;
        }
        e.c();
        c.post(new g(this, p1, q));
    }
}
