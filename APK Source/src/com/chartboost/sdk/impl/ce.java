// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

// Referenced classes of package com.chartboost.sdk.impl:
//            cg, cf

public class ce
{

    public static final char a;
    public static final String b;

    public static int a(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        long l = b(inputstream, outputstream);
        if (l > 0x7fffffffL)
        {
            return -1;
        } else
        {
            return (int)l;
        }
    }

    public static long a(InputStream inputstream, OutputStream outputstream, byte abyte0[])
        throws IOException
    {
        long l = 0L;
        do
        {
            int i = inputstream.read(abyte0);
            if (-1 != i)
            {
                outputstream.write(abyte0, 0, i);
                l += i;
            } else
            {
                return l;
            }
        } while (true);
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    public static void a(InputStream inputstream)
    {
        a(((Closeable) (inputstream)));
    }

    public static void a(OutputStream outputstream)
    {
        a(((Closeable) (outputstream)));
    }

    public static byte[] a(InputStream inputstream, int i)
        throws IOException
    {
        int j = 0;
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Size must be equal or greater than zero: ").append(i).toString());
        }
        if (i == 0)
        {
            inputstream = new byte[0];
        } else
        {
            byte abyte0[] = new byte[i];
            do
            {
                if (j >= i)
                {
                    break;
                }
                int k = inputstream.read(abyte0, j, i - j);
                if (k == -1)
                {
                    break;
                }
                j += k;
            } while (true);
            inputstream = abyte0;
            if (j != i)
            {
                throw new IOException((new StringBuilder()).append("Unexpected readed size. current: ").append(j).append(", excepted: ").append(i).toString());
            }
        }
        return inputstream;
    }

    public static byte[] a(InputStream inputstream, long l)
        throws IOException
    {
        if (l > 0x7fffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Size cannot be greater than Integer max value: ").append(l).toString());
        } else
        {
            return a(inputstream, (int)l);
        }
    }

    public static long b(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        return a(inputstream, outputstream, new byte[4096]);
    }

    public static byte[] b(InputStream inputstream)
        throws IOException
    {
        cf cf1 = new cf();
        a(inputstream, cf1);
        return cf1.a();
    }

    static 
    {
        a = File.separatorChar;
        cg cg1 = new cg(4);
        PrintWriter printwriter = new PrintWriter(cg1);
        printwriter.println();
        b = cg1.toString();
        printwriter.close();
    }
}
