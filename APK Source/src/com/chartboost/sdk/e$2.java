// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.os.Handler;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.impl.bi;

// Referenced classes of package com.chartboost.sdk:
//            e, b

class 
    implements Runnable
{

    final a a;
    final e b;

    public void run()
    {
        a.b = com.chartboost.sdk.Model.e;
        com.chartboost.sdk.impl.  = com.chartboost.sdk.impl..a;
        if (a.c == com.chartboost.sdk.Model.b)
        {
             = com.chartboost.sdk.impl..c;
        }
        com.chartboost.sdk.impl. 1 = com.chartboost.sdk.impl..a(a.w().f("animation"));
        if (1 != null)
        {
             = 1;
        }
        if (com.chartboost.sdk.b.f())
        {
             = com.chartboost.sdk.impl..g;
        }
        bi.b(, a, new com.chartboost.sdk.impl.bi.a() {

            final e._cls2 a;

            public void a(a a1)
            {
                CBUtility.e().post(new Runnable(this, a1) {

                    final a a;
                    final _cls1 b;

                    public void run()
                    {
                        b.a.b.d(a);
                    }

            
            {
                b = _pcls1;
                a = a1;
                super();
            }
                });
                a1.m();
            }

            
            {
                a = e._cls2.this;
                super();
            }
        });
    }

    l.a(e e1, a a1)
    {
        b = e1;
        a = a1;
        super();
    }
}
