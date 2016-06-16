// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            af, bm

class nit> extends nit>
{

    final Logging.c a;

    public void a(bm bm, int i)
    {
        CBLogging.c(af.i(), "post-popup dismissed");
    }

    a(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/impl/af$2

/* anonymous class */
    class af._cls2
        implements Runnable
    {

        final com.chartboost.sdk.Libraries.e.a a;
        final af b;

        public void run()
        {
            bm.a a1 = new bm.a();
            a1.a(a.e("title")).b(a.e("text")).c(a.e("confirm"));
            a1.a(af.b(b), new af._cls2._cls1(this));
        }

            
            {
                b = af1;
                a = a1;
                super();
            }
    }

}
