// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            t

static class c
{
    private static class a
    {

        public final String a;
        public final long b;
        public final long c;

        public a(String s, long l, long l1)
        {
            a = s;
            b = l;
            c = l1;
        }
    }


    public static final boolean a;
    private final List b = new ArrayList();
    private boolean c;

    private long a()
    {
        if (b.size() == 0)
        {
            return 0L;
        } else
        {
            long l = ((a)b.get(0)).c;
            return ((a)b.get(b.size() - 1)).c - l;
        }
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        c = true;
        l1 = a();
        if (l1 > 0L) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        long l;
        l = ((a)b.get(0)).c;
        t.b("(%-4d ms) %s", new Object[] {
            Long.valueOf(l1), s
        });
        s = b.iterator();
_L4:
        if (!s.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        a a1 = (a)s.next();
        l1 = a1.c;
        t.b("(+%-4d) [%2d] %s", new Object[] {
            Long.valueOf(l1 - l), Long.valueOf(a1.b), a1.a
        });
        l = l1;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        s;
        throw s;
    }

    public void a(String s, long l)
    {
        this;
        JVM INSTR monitorenter ;
        if (c)
        {
            throw new IllegalStateException("Marker added to finished log");
        }
        break MISSING_BLOCK_LABEL_24;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
        b.add(new a(s, l, SystemClock.elapsedRealtime()));
        this;
        JVM INSTR monitorexit ;
    }

    protected void finalize()
        throws Throwable
    {
        if (!c)
        {
            a("Request on the loose");
            t.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    static 
    {
        a = t.b;
    }

    a.c()
    {
        c = false;
    }
}
