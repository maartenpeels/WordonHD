// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;

public class cv
    implements Serializable
{

    final String a;

    public String a()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof cv))
        {
            return false;
        } else
        {
            obj = (cv)obj;
            return a.equals(((cv) (obj)).a);
        }
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public String toString()
    {
        return a();
    }
}
