// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            l

class c
    implements Runnable
{

    final l a;
    private final String b;
    private final long c;

    public void run()
    {
        l.b(a).a(b, c);
        l.b(a).a(toString());
    }

    (l l1, String s, long l2)
    {
        a = l1;
        b = s;
        c = l2;
        super();
    }
}
