// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            af, bm

class a
    implements Runnable
{

    final com.chartboost.sdk.Libraries.ging.c a;
    final af b;

    public void run()
    {
        a a1 = new <init>();
        a1.a(a.("title")).b(a.("text")).c(a.("confirm"));
        a1.a(af.b(b), new bm.b() {

            final af._cls2 a;

            public void a(bm bm, int i)
            {
                CBLogging.c(af.i(), "post-popup dismissed");
            }

            
            {
                a = af._cls2.this;
                super();
            }
        });
    }

    >(af af1, com.chartboost.sdk.Libraries.> >)
    {
        b = af1;
        a = >;
        super();
    }
}
