// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import android.widget.TextView;

// Referenced classes of package com.chartboost.sdk.impl:
//            ap, bh, ai, al, 
//            bl

class b
    implements Runnable
{

    final ap a;
    private int b;

    public void run()
    {
        if (ap.f(a).b().e())
        {
            int i = ap.f(a).b().d();
            if (i > 0)
            {
                ap.a(a).n = i;
                float f = ap.a(a).n;
                if (ap.f(a).b().e() && f / 1000F > 0.0F && !ap.a(a).s())
                {
                    ap.a(a).q();
                    ap.a(a).a(true);
                }
            }
            float f1 = (float)i / (float)ap.f(a).b().c();
            ap.c(a).a(f1);
            i /= 1000;
            if (b != i)
            {
                b = i;
                int j = i / 60;
                ap.g(a).setText(String.format("%02d:%02d", new Object[] {
                    Integer.valueOf(j), Integer.valueOf(i % 60)
                }));
            }
        }
        Object obj = ap.a(a).p();
        if (((a) (obj)).f())
        {
            obj = ((f) (obj)).b(true);
            if (((bl) (obj)).getVisibility() == 8)
            {
                ap.a(a).a(true, ((android.view.View) (obj)));
                ((bl) (obj)).setEnabled(true);
            }
        }
        ap.j().removeCallbacks(ap.h(a));
        ap.j().postDelayed(ap.h(a), 16L);
    }

    (ap ap1)
    {
        a = ap1;
        super();
        b = 0;
    }
}
