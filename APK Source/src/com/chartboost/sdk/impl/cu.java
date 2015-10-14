// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Arrays;

public class cu
    implements Serializable
{

    final byte a;
    final byte b[];

    public byte a()
    {
        return a;
    }

    public byte[] b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof cu))
        {
            return false;
        }
        obj = (cu)obj;
        if (a != ((cu) (obj)).a)
        {
            return false;
        }
        return Arrays.equals(b, ((cu) (obj)).b);
    }

    public int hashCode()
    {
        byte byte0 = a;
        int i;
        if (b != null)
        {
            i = Arrays.hashCode(b);
        } else
        {
            i = 0;
        }
        return byte0 * 31 + i;
    }
}
