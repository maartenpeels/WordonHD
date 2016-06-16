// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, bz, cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("{ ");
        obj = ((Map)obj).entrySet().iterator();
        boolean flag = true;
        while (((Iterator) (obj)).hasNext()) 
        {
            java.util.ntry ntry = (java.util.ntry)((Iterator) (obj)).next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            bz.a(stringbuilder, ntry.getKey().toString());
            stringbuilder.append(" : ");
            a.a(ntry.getValue(), stringbuilder);
        }
        stringbuilder.append("}");
    }

    (cc cc1)
    {
        super(cc1);
    }
}
