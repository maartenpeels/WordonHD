// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;


// Referenced classes of package c.m.x.a.gv:
//            ah, aj

final class ap
    implements Runnable
{

    final ah a;
    final aj b;
    final aj.b c;

    ap(ah ah1, aj aj, aj.b b1)
    {
        a = ah1;
        b = aj;
        c = b1;
        super();
    }

    public final void run()
    {
        try
        {
            Object obj = a.then(b);
            c.a(obj);
            return;
        }
        catch (Exception exception)
        {
            c.a(exception);
        }
    }
}
