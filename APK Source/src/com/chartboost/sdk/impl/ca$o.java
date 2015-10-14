// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, bt, bv, bu, 
//            cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        bt bt1 = new bt();
        bt1.a("$regex", obj.toString());
        if (((Pattern)obj).flags() != 0)
        {
            bt1.a("$options", bu.a(((Pattern)obj).flags()));
        }
        a.a(bt1, stringbuilder);
    }

    (cc cc1)
    {
        super(cc1);
    }
}
