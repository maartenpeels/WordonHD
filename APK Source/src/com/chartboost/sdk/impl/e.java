// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import java.util.concurrent.Executor;

// Referenced classes of package com.chartboost.sdk.impl:
//            o, l, n, s

public class e
    implements o
{
    private class a
        implements Runnable
    {

        final e a;
        private final l b;
        private final n c;
        private final Runnable d;

        public void run()
        {
            if (b.h())
            {
                b.b("canceled-at-delivery");
            } else
            {
                if (c.a())
                {
                    b.b(c.a);
                } else
                {
                    b.b(c.c);
                }
                if (c.d)
                {
                    b.a("intermediate-response");
                } else
                {
                    b.b("done");
                }
                if (d != null)
                {
                    d.run();
                    return;
                }
            }
        }

        public a(l l1, n n1, Runnable runnable)
        {
            a = e.this;
            super();
            b = l1;
            c = n1;
            d = runnable;
        }
    }


    private final Executor a;

    public e(Handler handler)
    {
        a = new Executor(handler) {

            final e a;
            private final Handler b;

            public void execute(Runnable runnable)
            {
                b.post(runnable);
            }

            
            {
                a = e.this;
                b = handler;
                super();
            }
        };
    }

    public void a(l l1, n n1)
    {
        a(l1, n1, null);
    }

    public void a(l l1, n n1, Runnable runnable)
    {
        l1.v();
        l1.a("post-response");
        a.execute(new a(l1, n1, runnable));
    }

    public void a(l l1, s s)
    {
        l1.a("post-error");
        s = n.a(s);
        a.execute(new a(l1, s, null));
    }
}
