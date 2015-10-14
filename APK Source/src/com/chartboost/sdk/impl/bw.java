// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


public class bw
{

    final Object a;
    final String b;

    public Object a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        obj = (bw)obj;
        if (a == null ? ((bw) (obj)).a != null : !a.equals(((bw) (obj)).a))
        {
            return false;
        }
        return b == null ? ((bw) (obj)).b != null : !b.equals(((bw) (obj)).b);
    }

    public int hashCode()
    {
        int i;
        int j;
        if (a != null)
        {
            i = a.hashCode();
        } else
        {
            i = 0;
        }
        if (b != null)
        {
            j = b.hashCode();
        } else
        {
            j = 0;
        }
        return i * 31 + j;
    }

    public String toString()
    {
        return (new StringBuilder()).append("{ \"$ref\" : \"").append(b).append("\", \"$id\" : \"").append(a).append("\" }").toString();
    }
}
