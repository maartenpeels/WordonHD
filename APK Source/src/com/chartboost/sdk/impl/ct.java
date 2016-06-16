// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Date;

public class ct
    implements Serializable, Comparable
{

    static final boolean a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    final int b = 0;
    final Date c = null;

    public ct()
    {
    }

    public int a()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return (int)(c.getTime() / 1000L);
        }
    }

    public int a(ct ct1)
    {
        if (a() != ct1.a())
        {
            return a() - ct1.a();
        } else
        {
            return b() - ct1.b();
        }
    }

    public int b()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((ct)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof ct)
        {
            obj = (ct)obj;
            return a() == ((ct) (obj)).a() && b() == ((ct) (obj)).b();
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return (b + 31) * 31 + a();
    }

    public String toString()
    {
        return (new StringBuilder()).append("TS time:").append(c).append(" inc:").append(b).toString();
    }

}
