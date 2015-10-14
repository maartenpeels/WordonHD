// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            n, l

static class ta.c
{

    ArrayList a;

    int a()
    {
        return a.size();
    }

     a(int i)
    {
        return ()a.get(i);
    }

    a a(String s)
    {
        for (int i = 0; i < a.size(); i++)
        {
            a a1 = ()a.get(i);
            if (a1.a.equals(s))
            {
                return a1;
            }
        }

        l.a.a("No such zone: ").b(s);
        return null;
    }

    boolean a(ta.c c)
    {
        a = new ArrayList();
        if (c == null)
        {
            return false;
        }
        for (int i = 0; i < c.i(); i++)
        {
            ta.g g = new <init>();
            if (!g.a(c.b(i)))
            {
                return false;
            }
            a.add(g);
        }

        return true;
    }

    a b()
    {
        return (a)a.get(0);
    }

    ta.c()
    {
    }
}
