// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, bv, bz, cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("{ ");
        obj = (bv)obj;
        Iterator iterator = ((bv) (obj)).keySet().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            bz.a(stringbuilder, s);
            stringbuilder.append(" : ");
            a.a(((bv) (obj)).a(s), stringbuilder);
        }
        stringbuilder.append("}");
    }

    (cc cc1)
    {
        super(cc1);
    }
}
