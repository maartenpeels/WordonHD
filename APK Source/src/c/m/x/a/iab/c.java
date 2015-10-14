// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;


// Referenced classes of package c.m.x.a.iab:
//            p

public final class c extends Exception
{

    p a;

    public c(int i, String s)
    {
        this(new p(i, s));
    }

    public c(int i, String s, Exception exception)
    {
        this(new p(i, s), exception);
    }

    private c(p p1)
    {
        this(p1, ((Exception) (null)));
    }

    private c(p p1, Exception exception)
    {
        super(p1.b, exception);
        a = p1;
    }

    public final p a()
    {
        return a;
    }
}
