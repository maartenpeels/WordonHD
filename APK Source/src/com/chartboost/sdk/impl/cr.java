// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            cq, cs, di

public class cr extends cq
{
    static class a
    {

        int a;
        int b;

        void a()
        {
            a = -1;
            b = 0;
        }

        void a(int i)
        {
            a = i / 16384 - 1;
            b = i % 16384;
        }

        void a(a a1)
        {
            a = a1.a;
            b = a1.b;
        }

        int b()
        {
            return (a + 1) * 16384 + b;
        }

        void b(int i)
        {
            b = b + i;
            if (b > 16384)
            {
                throw new IllegalArgumentException("something is wrong");
            } else
            {
                return;
            }
        }

        int c()
        {
            int i = b;
            b = i + 1;
            return i;
        }

        int c(int i)
        {
            if (i < a)
            {
                return 16384;
            } else
            {
                return b;
            }
        }

        void d()
        {
            if (b != 16384)
            {
                throw new IllegalArgumentException("broken");
            } else
            {
                a = a + 1;
                b = 0;
                return;
            }
        }

        public String toString()
        {
            return (new StringBuilder()).append(a).append(",").append(b).toString();
        }

        a()
        {
            a();
        }
    }


    private static di g = new di(640) {

        protected byte[] a()
        {
            return new byte[16384];
        }

        protected Object b()
        {
            return a();
        }

    };
    final byte a[] = new byte[16384];
    final char b[] = new char[16384];
    final List c = new ArrayList();
    final cs d = new cs();
    private final a e = new a();
    private final a f = new a();

    public cr()
    {
        d();
    }

    public int a()
    {
        return e.b();
    }

    public int a(OutputStream outputstream)
        throws IOException
    {
        if (outputstream == null)
        {
            throw new NullPointerException("out is null");
        }
        int i = -1;
        int j = 0;
        for (; i < c.size(); i++)
        {
            byte abyte0[] = b(i);
            int k = f.c(i);
            outputstream.write(abyte0, 0, k);
            j += k;
        }

        return j;
    }

    public void a(int i)
    {
        e.a(i);
    }

    public int b()
    {
        return f.b();
    }

    byte[] b(int i)
    {
        if (i < 0)
        {
            return a;
        } else
        {
            return (byte[])c.get(i);
        }
    }

    public void d()
    {
        e.a();
        f.a();
        for (int i = 0; i < c.size(); i++)
        {
            g.b(c.get(i));
        }

        c.clear();
    }

    void e()
    {
        if (e.b() < f.b())
        {
            if (e.b == 16384)
            {
                e.d();
            }
        } else
        {
            f.a(e);
            if (f.b >= 16384)
            {
                c.add(g.c());
                f.d();
                e.a(f);
                return;
            }
        }
    }

    byte[] f()
    {
        return b(e.a);
    }

    public void write(int i)
    {
        f()[e.c()] = (byte)(i & 0xff);
        e();
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        while (j > 0) 
        {
            byte abyte1[] = f();
            int k = Math.min(abyte1.length - e.b, j);
            System.arraycopy(abyte0, i, abyte1, e.b, k);
            e.b(k);
            j -= k;
            i += k;
            e();
        }
    }

}
