// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;


// Referenced classes of package c.m.x.a.iab:
//            f, o, p, q

final class g
    implements Runnable
{

    final p a;
    final q b;
    final f c;

    g(f f1, p p, q q)
    {
        c = f1;
        a = p;
        b = q;
        super();
    }

    public final void run()
    {
        c.d.a(a, b);
    }
}
