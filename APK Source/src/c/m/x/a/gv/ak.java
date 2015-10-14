// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;


// Referenced classes of package c.m.x.a.gv:
//            ah, aj, al

final class ak
    implements Runnable
{

    final ah a;
    final aj b;
    final aj.b c;

    ak(ah ah1, aj aj1, aj.b b1)
    {
        a = ah1;
        b = aj1;
        c = b1;
        super();
    }

    public final void run()
    {
        aj aj1 = (aj)a.then(b);
        if (aj1 == null)
        {
            try
            {
                c.a(null);
                return;
            }
            catch (Exception exception)
            {
                c.a(exception);
            }
            break MISSING_BLOCK_LABEL_53;
        }
        aj1.a(new al(this));
        return;
    }
}
