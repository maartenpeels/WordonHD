// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;


// Referenced classes of package c.m.x.a.gv:
//            ah, aj

final class ao
    implements ah
{

    final ah a;
    final aj b;

    ao(aj aj1, ah ah1)
    {
        b = aj1;
        a = ah1;
        super();
    }

    public final Object then(aj aj1)
    {
        if (aj1.c())
        {
            return aj.a(aj1.e());
        }
        if (aj1.b())
        {
            return aj.f();
        } else
        {
            return aj1.a(a);
        }
    }
}
