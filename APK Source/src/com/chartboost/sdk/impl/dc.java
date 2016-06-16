// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


public class dc
{
    static class a extends IllegalArgumentException
    {

        a(String s)
        {
            super((new StringBuilder()).append(s).append(" should not be null!").toString());
        }
    }


    public static Object a(String s, Object obj)
        throws IllegalArgumentException
    {
        if (obj == null)
        {
            throw new a(s);
        } else
        {
            return obj;
        }
    }
}
