// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        boolean flag = true;
        stringbuilder.append("[ ");
        obj = ((Iterable)obj).iterator();
        while (((Iterator) (obj)).hasNext()) 
        {
            Object obj1 = ((Iterator) (obj)).next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            a.a(obj1, stringbuilder);
        }
        stringbuilder.append("]");
    }

    (cc cc1)
    {
        super(cc1);
    }
}
