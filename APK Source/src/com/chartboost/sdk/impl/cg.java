// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;

public class cg extends Writer
    implements Serializable
{

    private final StringBuilder a;

    public cg()
    {
        a = new StringBuilder();
    }

    public cg(int i)
    {
        a = new StringBuilder(i);
    }

    public Writer append(char c)
    {
        a.append(c);
        return this;
    }

    public Writer append(CharSequence charsequence)
    {
        a.append(charsequence);
        return this;
    }

    public Writer append(CharSequence charsequence, int i, int j)
    {
        a.append(charsequence, i, j);
        return this;
    }

    public volatile Appendable append(char c)
        throws IOException
    {
        return append(c);
    }

    public volatile Appendable append(CharSequence charsequence)
        throws IOException
    {
        return append(charsequence);
    }

    public volatile Appendable append(CharSequence charsequence, int i, int j)
        throws IOException
    {
        return append(charsequence, i, j);
    }

    public void close()
    {
    }

    public void flush()
    {
    }

    public String toString()
    {
        return a.toString();
    }

    public void write(String s)
    {
        if (s != null)
        {
            a.append(s);
        }
    }

    public void write(char ac[], int i, int j)
    {
        if (ac != null)
        {
            a.append(ac, i, j);
        }
    }
}
