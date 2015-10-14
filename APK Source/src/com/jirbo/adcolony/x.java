// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.jirbo.adcolony:
//            a

class x extends InputStream
{

    InputStream a;
    byte b[];
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;

    x(String s)
        throws IOException
    {
        b = new byte[1024];
        if (a.n != 0)
        {
            h = 23;
            g = 23;
        }
        c = (int)(new File(s)).length();
        a = new FileInputStream(s);
    }

    void a()
        throws IOException
    {
        for (e = 0; e == 0; e = a.read(b, 0, 1024)) { }
        for (int i = 0; i < e; i++)
        {
            b[i] = (byte)(b[i] ^ g);
            g = g + h;
        }

        f = 0;
    }

    public int available()
        throws IOException
    {
        return (e - f) + a.available();
    }

    public void close()
        throws IOException
    {
        a.close();
    }

    public void mark(int i)
    {
    }

    public boolean markSupported()
    {
        return false;
    }

    public int read()
        throws IOException
    {
        if (d == c)
        {
            return -1;
        }
        if (f >= e)
        {
            a();
        }
        d = d + 1;
        byte abyte0[] = b;
        int i = f;
        f = i + 1;
        return abyte0[i];
    }

    public int read(byte abyte0[])
        throws IOException
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        if (d != c) goto _L2; else goto _L1
_L1:
        int l = -1;
_L4:
        return l;
_L2:
        l = c - d;
        int k = j;
        if (j > l)
        {
            k = l;
        }
        l = 0;
        j = k;
        k = i;
        i = l;
        do
        {
            l = i;
            if (j <= 0)
            {
                continue;
            }
            if (f == e)
            {
                a();
            }
            int i1;
            if (j < e)
            {
                l = j;
            } else
            {
                l = e;
            }
            for (i1 = 0; i1 < l;)
            {
                byte abyte1[] = b;
                int j1 = f;
                f = j1 + 1;
                abyte0[k] = abyte1[j1];
                i1++;
                k++;
            }

            j -= l;
            i += l;
            d = l + d;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void reset()
        throws IOException
    {
        throw new IOException("ADCStreamReader does not support reset().");
    }

    public long skip(long l)
        throws IOException
    {
        throw new IOException("ADCStreamReader does not support skip().");
    }
}
