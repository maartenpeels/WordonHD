// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            ADCData, af

static class a extends a
{

    ArrayList a;

    double a(int k, double d1)
    {
        a a1 = (a)a.get(k);
        if (a1 != null && a1.p())
        {
            return a1.d();
        } else
        {
            return d1;
        }
    }

    int a(int k, int l)
    {
        d d1 = (d)a.get(k);
        if (d1 != null && d1.p())
        {
            return d1.e();
        } else
        {
            return l;
        }
    }

    e a(double d1)
    {
        a(((a) (new <init>(d1))));
        return this;
    }

    <init> a(int k)
    {
        a(((a) (new <init>(k))));
        return this;
    }

    <init> a(int k, <init> <init>1)
    {
        <init> <init>2 = (<init>)a.get(k);
        if (<init>2 != null && <init>2.f())
        {
            return <init>2.h();
        } else
        {
            return <init>1;
        }
    }

    h a(h h1)
    {
        for (int k = 0; k < h1.i(); k++)
        {
            a((a)h1.a.get(k));
        }

        return this;
    }

    a a(a a1)
    {
        a.add(a1);
        return this;
    }

    a a(String s)
    {
        a(((a) (new <init>(s))));
        return this;
    }

    <init> a(boolean flag)
    {
        <init> <init>1;
        if (flag)
        {
            <init>1 = ADCData.a;
        } else
        {
            <init>1 = ADCData.b;
        }
        a(<init>1);
        return this;
    }

    a a(int k, a a1)
    {
        a a2 = (a)a.get(k);
        if (a2 != null && a2.m())
        {
            return a2.n();
        } else
        {
            return a1;
        }
    }

    String a(int k, String s)
    {
        n n = (n)a.get(k);
        if (n != null && n.k())
        {
            return n.b();
        } else
        {
            return s;
        }
    }

    void a(af af1)
    {
        int l = a.size();
        if (l == 0)
        {
            af1.a("[]");
            return;
        }
        if (l == 1 && ((a)a.get(0)).g())
        {
            af1.a("[");
            ((g)a.get(0)).a(af1);
            af1.a("]");
            return;
        }
        af1.b("[");
        af1.i = af1.i + 2;
        boolean flag = true;
        int k = 0;
        while (k < l) 
        {
            if (flag)
            {
                flag = false;
            } else
            {
                af1.c(',');
            }
            ((a)a.get(k)).a(af1);
            k++;
        }
        af1.d();
        af1.i = af1.i - 2;
        af1.a("]");
    }

    boolean a(int k, boolean flag)
    {
        a a1 = (a)a.get(k);
        if (a1 != null && (a1.a() || a1.k()))
        {
            return a1.l();
        } else
        {
            return flag;
        }
    }

    l a_()
    {
        return (l)a.remove(a.size() - 1);
    }

    a b(int k)
    {
        a a1 = a(k, ((a) (null)));
        if (a1 != null)
        {
            return a1;
        } else
        {
            return new <init>();
        }
    }

    <init> c(int k)
    {
        <init> <init>1 = a(k, ((a) (null)));
        if (<init>1 != null)
        {
            return <init>1;
        } else
        {
            return new <init>();
        }
    }

    String d(int k)
    {
        return a(k, "");
    }

    double e(int k)
    {
        return a(k, 0.0D);
    }

    int f(int k)
    {
        return a(k, 0);
    }

    boolean f()
    {
        return true;
    }

    boolean g()
    {
        return a.size() == 0 || a.size() == 1 && ((a)a.get(0)).g();
    }

    boolean g(int k)
    {
        return a(k, false);
    }

    a h()
    {
        return this;
    }

    int i()
    {
        return a.size();
    }

    void j()
    {
        a.clear();
    }

    ()
    {
        a = new ArrayList();
    }
}
