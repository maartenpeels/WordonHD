// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.concurrent.Executor;

// Referenced classes of package c.m.x.a.gv:
//            ah, aj

final class am
    implements ah
{

    final aj.b a;
    final ah b;
    final Executor c;
    final aj d;

    am(aj aj1, aj.b b1, ah ah1, Executor executor)
    {
        d = aj1;
        a = b1;
        b = ah1;
        c = executor;
        super();
    }

    public final Object then(aj aj1)
    {
        aj.a(a, b, aj1, c);
        return null;
    }
}
