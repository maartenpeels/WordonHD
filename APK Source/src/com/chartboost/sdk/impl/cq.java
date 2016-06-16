// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class cq extends OutputStream
{

    public cq()
    {
    }

    public abstract int a();

    public abstract int a(OutputStream outputstream)
        throws IOException;

    public void a(double d1)
    {
        a(Double.doubleToRawLongBits(d1));
    }

    public abstract void a(int i);

    public void a(int i, int j)
    {
        int k = a();
        a(i);
        c(j);
        a(k);
    }

    public void a(long l)
    {
        write((byte)(int)(l >> 0 & 255L));
        write((byte)(int)(l >> 8 & 255L));
        write((byte)(int)(l >> 16 & 255L));
        write((byte)(int)(l >> 24 & 255L));
        write((byte)(int)(l >> 32 & 255L));
        write((byte)(int)(l >> 40 & 255L));
        write((byte)(int)(l >> 48 & 255L));
        write((byte)(int)(l >> 56 & 255L));
    }

    public abstract int b();

    public void c(int i)
    {
        write(i >> 0);
        write(i >> 8);
        write(i >> 16);
        write(i >> 24);
    }

    public byte[] c()
    {
        byte abyte0[];
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(b());
            a(bytearrayoutputstream);
            abyte0 = bytearrayoutputstream.toByteArray();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("should be impossible", ioexception);
        }
        return abyte0;
    }

    public void d(int i)
    {
        write(i >> 24);
        write(i >> 16);
        write(i >> 8);
        write(i);
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append(" size: ").append(b()).append(" pos: ").append(a()).toString();
    }

    public abstract void write(int i);

    public abstract void write(byte abyte0[]);
}
