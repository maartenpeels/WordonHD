// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.facebook.internal:
//            FileLruCache

private static final class output extends InputStream
{

    final InputStream input;
    final OutputStream output;

    public final int available()
    {
        return input.available();
    }

    public final void close()
    {
        input.close();
        output.close();
        return;
        Exception exception;
        exception;
        output.close();
        throw exception;
    }

    public final void mark(int i)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean markSupported()
    {
        return false;
    }

    public final int read()
    {
        int i = input.read();
        if (i >= 0)
        {
            output.write(i);
        }
        return i;
    }

    public final int read(byte abyte0[])
    {
        int i = input.read(abyte0);
        if (i > 0)
        {
            output.write(abyte0, 0, i);
        }
        return i;
    }

    public final int read(byte abyte0[], int i, int j)
    {
        j = input.read(abyte0, i, j);
        if (j > 0)
        {
            output.write(abyte0, i, j);
        }
        return j;
    }

    public final void reset()
    {
        this;
        JVM INSTR monitorenter ;
        throw new UnsupportedOperationException();
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final long skip(long l)
    {
        byte abyte0[] = new byte[1024];
        int i;
        long l1;
        for (l1 = 0L; l1 < l; l1 += i)
        {
            i = read(abyte0, 0, (int)Math.min(l - l1, abyte0.length));
            if (i < 0)
            {
                return l1;
            }
        }

        return l1;
    }

    (InputStream inputstream, OutputStream outputstream)
    {
        input = inputstream;
        output = outputstream;
    }
}
