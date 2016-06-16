// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

public class cz
    implements Serializable, Comparable
{

    static final Logger a;
    private static AtomicInteger f;
    private static final int g;
    final int b;
    final int c;
    final int d;
    boolean e;

    public cz()
    {
        b = (int)(System.currentTimeMillis() / 1000L);
        c = g;
        d = f.getAndIncrement();
        e = true;
    }

    public cz(int i, int j, int k)
    {
        b = i;
        c = j;
        d = k;
        e = false;
    }

    public cz(String s)
    {
        this(s, false);
    }

    public cz(String s, boolean flag)
    {
        if (!a(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid ObjectId [").append(s).append("]").toString());
        }
        if (flag)
        {
            s = b(s);
        }
        byte abyte0[] = new byte[12];
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte0[i] = (byte)Integer.parseInt(s.substring(i * 2, i * 2 + 2), 16);
        }

        s = ByteBuffer.wrap(abyte0);
        b = s.getInt();
        c = s.getInt();
        d = s.getInt();
        e = false;
    }

    public static cz a(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof cz)
        {
            return (cz)obj;
        }
        if (obj instanceof String)
        {
            obj = obj.toString();
            if (a(((String) (obj))))
            {
                return new cz(((String) (obj)));
            }
        }
        return null;
    }

    static String a(String s, int i)
    {
        return s.substring(i * 2, i * 2 + 2);
    }

    public static boolean a(String s)
    {
        int i;
        int j;
        if (s == null)
        {
            return false;
        }
        j = s.length();
        if (j != 24)
        {
            return false;
        }
        i = 0;
_L3:
        char c1;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        c1 = s.charAt(i);
          goto _L1
_L5:
        i++;
        if (true) goto _L3; else goto _L2
_L1:
        if (c1 >= '0' && c1 <= '9' || c1 >= 'a' && c1 <= 'f' || c1 >= 'A' && c1 <= 'F') goto _L5; else goto _L4
_L4:
        return false;
_L2:
        return true;
    }

    public static String b(String s)
    {
        if (!a(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid object id: ").append(s).toString());
        }
        StringBuilder stringbuilder = new StringBuilder(24);
        for (int i = 7; i >= 0; i--)
        {
            stringbuilder.append(a(s, i));
        }

        for (int j = 11; j >= 8; j--)
        {
            stringbuilder.append(a(s, j));
        }

        return stringbuilder.toString();
    }

    int a(int i, int j)
    {
        long l = ((long)i & 0xffffffffL) - ((long)j & 0xffffffffL);
        if (l < 0xffffffff80000000L)
        {
            return 0x80000000;
        }
        if (l > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)l;
        }
    }

    public int a(cz cz1)
    {
        int i;
        if (cz1 == null)
        {
            i = -1;
        } else
        {
            int j = a(b, cz1.b);
            i = j;
            if (j == 0)
            {
                int k = a(c, cz1.c);
                i = k;
                if (k == 0)
                {
                    return a(d, cz1.d);
                }
            }
        }
        return i;
    }

    public String a()
    {
        byte abyte0[] = b();
        StringBuilder stringbuilder = new StringBuilder(24);
        for (int i = 0; i < abyte0.length; i++)
        {
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuilder.append("0");
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }

    public byte[] b()
    {
        byte abyte0[] = new byte[12];
        ByteBuffer bytebuffer = ByteBuffer.wrap(abyte0);
        bytebuffer.putInt(b);
        bytebuffer.putInt(c);
        bytebuffer.putInt(d);
        return abyte0;
    }

    public int c()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((cz)obj);
    }

    public int d()
    {
        return c;
    }

    public int e()
    {
        return d;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        obj = a(obj);
        if (obj == null)
        {
            return false;
        }
        return b == ((cz) (obj)).b && c == ((cz) (obj)).c && d == ((cz) (obj)).d;
    }

    public int hashCode()
    {
        return b + c * 111 + d * 17;
    }

    public String toString()
    {
        return a();
    }

    static 
    {
        a = Logger.getLogger("org.bson.ObjectId");
        f = new AtomicInteger((new Random()).nextInt());
        Object obj;
        obj = new StringBuilder();
        for (Enumeration enumeration = NetworkInterface.getNetworkInterfaces(); enumeration.hasMoreElements(); ((StringBuilder) (obj)).append(((NetworkInterface)enumeration.nextElement()).toString())) { }
          goto _L1
        obj;
        int i;
        a.log(Level.WARNING, ((Throwable) (obj)).getMessage(), ((Throwable) (obj)));
        i = (new Random()).nextInt() << 16;
_L4:
        int k;
        a.fine((new StringBuilder()).append("machine piece post: ").append(Integer.toHexString(i)).toString());
        k = (new Random()).nextInt();
        obj = com/chartboost/sdk/impl/cz.getClassLoader();
        if (obj == null) goto _L3; else goto _L2
_L2:
        int j = System.identityHashCode(obj);
_L5:
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append(Integer.toHexString(k));
        ((StringBuilder) (obj)).append(Integer.toHexString(j));
        j = ((StringBuilder) (obj)).toString().hashCode() & 0xffff;
        a.fine((new StringBuilder()).append("process piece: ").append(Integer.toHexString(j)).toString());
        g = i | j;
        a.fine((new StringBuilder()).append("machine : ").append(Integer.toHexString(g)).toString());
        return;
_L1:
        i = ((StringBuilder) (obj)).toString().hashCode();
        i <<= 16;
          goto _L4
_L3:
        j = 0;
          goto _L5
        Exception exception;
        exception;
        throw new RuntimeException(exception);
          goto _L4
    }
}
