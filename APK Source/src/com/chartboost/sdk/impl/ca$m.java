// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("[ ");
        for (int i = 0; i < Array.getLength(obj); i++)
        {
            if (i > 0)
            {
                stringbuilder.append(" , ");
            }
            a.a(Array.get(obj, i), stringbuilder);
        }

        stringbuilder.append("]");
    }

    (cc cc1)
    {
        super(cc1);
    }
}
