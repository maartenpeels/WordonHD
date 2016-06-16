// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.Model.a;

// Referenced classes of package com.chartboost.sdk:
//            c, Chartboost

class 
    implements 
{

    final a a;
    final String b;
    final l.a c;
    final c d;

    public void a(boolean flag)
    {
        com.chartboost.sdk.Chartboost.a(new Runnable(flag) {

            final boolean a;
            final c._cls1 b;

            public void run()
            {
                if (a)
                {
                    b.d.a(b.a, b.b, b.c);
                    return;
                } else
                {
                    b.d.b.a(b.a, false, b.b, com.chartboost.sdk.Model.CBError.CBClickError.AGE_GATE_FAILURE, b.c);
                    return;
                }
            }

            
            {
                b = c._cls1.this;
                a = flag;
                super();
            }
        });
    }

    l.a(c c1, a a1, String s, l.a a2)
    {
        d = c1;
        a = a1;
        b = s;
        c = a2;
        super();
    }
}
