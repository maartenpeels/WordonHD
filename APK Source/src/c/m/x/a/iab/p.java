// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;


// Referenced classes of package c.m.x.a.iab:
//            d

public final class p
{

    int a;
    String b;

    public p(int i, String s)
    {
        a = i;
        if (s == null || s.trim().length() == 0)
        {
            b = c.m.x.a.iab.d.a(i);
            return;
        } else
        {
            b = (new StringBuilder()).append(s).append(" (response: ").append(c.m.x.a.iab.d.a(i)).append(")").toString();
            return;
        }
    }

    public final int a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final boolean c()
    {
        return a == 0;
    }

    public final boolean d()
    {
        return !c();
    }

    public final String toString()
    {
        return (new StringBuilder("IabResult: ")).append(b).toString();
    }
}
