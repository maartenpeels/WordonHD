// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;

public class da
    implements Serializable
{

    private final String a;

    public String a()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null)
        {
            return false;
        }
        if (obj instanceof da)
        {
            obj = ((da)obj).a;
        } else
        if (obj instanceof String)
        {
            obj = (String)obj;
        } else
        {
            return false;
        }
        return a == null ? obj != null : !a.equals(obj);
    }

    public int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return 0;
        }
    }

    public String toString()
    {
        return a;
    }
}
