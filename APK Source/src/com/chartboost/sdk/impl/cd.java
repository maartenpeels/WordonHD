// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;

// Referenced classes of package com.chartboost.sdk.impl:
//            ce

public class cd
{

    public static final BigInteger a;
    public static final BigInteger b;
    public static final BigInteger c;
    public static final BigInteger d;
    public static final BigInteger e;
    public static final BigInteger f;
    public static final BigInteger g;
    public static final BigInteger h;
    public static final File i[] = new File[0];
    private static final Charset j = Charset.forName("UTF-8");

    public static FileInputStream a(File file)
        throws IOException
    {
        if (file.exists())
        {
            if (file.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' exists but is a directory").toString());
            }
            if (!file.canRead())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' cannot be read").toString());
            } else
            {
                return new FileInputStream(file);
            }
        } else
        {
            throw new FileNotFoundException((new StringBuilder()).append("File '").append(file).append("' does not exist").toString());
        }
    }

    public static FileOutputStream a(File file, boolean flag)
        throws IOException
    {
        if (file.exists())
        {
            if (file.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' exists but is a directory").toString());
            }
            if (!file.canWrite())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' cannot be written to").toString());
            }
        } else
        {
            File file1 = file.getParentFile();
            if (file1 != null && !file1.mkdirs() && !file1.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("Directory '").append(file1).append("' could not be created").toString());
            }
        }
        return new FileOutputStream(file, flag);
    }

    public static void a(File file, byte abyte0[])
        throws IOException
    {
        a(file, abyte0, false);
    }

    public static void a(File file, byte abyte0[], boolean flag)
        throws IOException
    {
        file = a(file, flag);
        file.write(abyte0);
        file.close();
        ce.a(file);
        return;
        file;
        Object obj;
        obj = null;
        abyte0 = file;
_L2:
        ce.a(((OutputStream) (obj)));
        throw abyte0;
        abyte0;
        obj = file;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] b(File file)
        throws IOException
    {
        Object obj = a(file);
        file = ce.a(((java.io.InputStream) (obj)), file.length());
        ce.a(((java.io.InputStream) (obj)));
        return file;
        file;
        Object obj1;
        obj1 = null;
        obj = file;
_L2:
        ce.a(((java.io.InputStream) (obj1)));
        throw obj;
        Exception exception;
        exception;
        file = ((File) (obj));
        obj = exception;
        exception = file;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        a = BigInteger.valueOf(1024L);
        b = a.multiply(a);
        c = a.multiply(b);
        d = a.multiply(c);
        e = a.multiply(d);
        f = a.multiply(e);
        g = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(0x1000000000000000L));
        h = a.multiply(g);
    }
}
