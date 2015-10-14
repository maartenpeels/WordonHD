// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.chartboost.sdk.impl:
//            cq

public class cp extends cq
{

    private int a;
    private int b;
    private byte c[];

    public cp()
    {
        c = new byte[512];
    }

    public int a()
    {
        return a;
    }

    public int a(OutputStream outputstream)
        throws IOException
    {
        outputstream.write(c, 0, b);
        return b;
    }

    public void a(int i)
    {
        a = i;
    }

    public int b()
    {
        return b;
    }

    void b(int i)
    {
        int j = a + i;
        if (j < c.length)
        {
            return;
        }
        i = c.length * 2;
        if (i <= j)
        {
            i = j + 128;
        }
        byte abyte0[] = new byte[i];
        System.arraycopy(c, 0, abyte0, 0, b);
        c = abyte0;
    }

    public void write(int i)
    {
        b(1);
        byte abyte0[] = c;
        int j = a;
        a = j + 1;
        abyte0[j] = (byte)(i & 0xff);
        b = Math.max(a, b);
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        b(j);
        System.arraycopy(abyte0, i, c, a, j);
        a = a + j;
        b = Math.max(a, b);
    }
}
