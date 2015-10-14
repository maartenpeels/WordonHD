// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;


// Referenced classes of package c.m.x.a.ep:
//            p

final class u
    implements Runnable
{

    final String a;
    final String b;
    final p c;

    u(p p1, String s, String s1)
    {
        c = p1;
        a = s;
        b = s1;
        super();
    }

    public final void run()
    {
        c.dispatchStatusEventAsync(a, b);
    }
}
