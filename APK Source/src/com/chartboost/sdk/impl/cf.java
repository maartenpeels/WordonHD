// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cf extends OutputStream
{

    private static final byte a[] = new byte[0];
    private final List b;
    private int c;
    private int d;
    private byte e[];
    private int f;

    public cf()
    {
        this(1024);
    }

    public cf(int i)
    {
        b = new ArrayList();
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Negative initial size: ").append(i).toString());
        }
        this;
        JVM INSTR monitorenter ;
        a(i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i)
    {
        if (c < b.size() - 1)
        {
            d = d + e.length;
            c = c + 1;
            e = (byte[])b.get(c);
            return;
        }
        if (e == null)
        {
            d = 0;
        } else
        {
            i = Math.max(e.length << 1, i - d);
            d = d + e.length;
        }
        c = c + 1;
        e = new byte[i];
        b.add(e);
    }

    public byte[] a()
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        int j = f;
        if (j != 0) goto _L2; else goto _L1
_L1:
        byte abyte0[] = a;
_L4:
        this;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        Iterator iterator;
        abyte0 = new byte[j];
        iterator = b.iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        int k;
        byte abyte1[] = (byte[])iterator.next();
        k = Math.min(abyte1.length, j);
        System.arraycopy(abyte1, 0, abyte0, i, k);
        j -= k;
        if (j != 0) goto _L5; else goto _L4
_L5:
        i += k;
          goto _L6
        Exception exception;
        exception;
        throw exception;
    }

    public void close()
        throws IOException
    {
    }

    public String toString()
    {
        return new String(a());
    }

    public void write(int i)
    {
        this;
        JVM INSTR monitorenter ;
        int k = f - d;
        int j = k;
        if (k != e.length)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        a(f + 1);
        j = 0;
        e[j] = (byte)i;
        f = f + 1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (i < 0 || i > abyte0.length || j < 0 || i + j > abyte0.length || i + j < 0)
        {
            throw new IndexOutOfBoundsException();
        }
        if (j == 0)
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        int l;
        int j1;
        j1 = f + j;
        l = f - d;
        int k = j;
_L2:
        if (k <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        int i1;
        i1 = Math.min(k, e.length - l);
        System.arraycopy(abyte0, (i + j) - k, e, l, i1);
        i1 = k - i1;
        k = i1;
        if (i1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(j1);
        l = 0;
        k = i1;
        if (true) goto _L2; else goto _L1
_L1:
        f = j1;
        this;
        JVM INSTR monitorexit ;
        return;
        abyte0;
        this;
        JVM INSTR monitorexit ;
        throw abyte0;
    }

}
