// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.chartboost.sdk.impl:
//            e, g, l, t, 
//            c, b, f, o

public class m
{
    public static interface a
    {

        public abstract boolean a(l l1);
    }


    private AtomicInteger a;
    private final Map b;
    private final Set c;
    private final PriorityBlockingQueue d;
    private final PriorityBlockingQueue e;
    private final b f;
    private final f g;
    private final o h;
    private g i[];
    private c j;
    private boolean k;

    public m(b b1, f f1)
    {
        this(b1, f1, 4);
    }

    public m(b b1, f f1, int i1)
    {
        this(b1, f1, i1, ((o) (new e(new Handler(Looper.getMainLooper())))));
    }

    public m(b b1, f f1, int i1, o o)
    {
        a = new AtomicInteger();
        b = new HashMap();
        c = new HashSet();
        d = new PriorityBlockingQueue();
        e = new PriorityBlockingQueue();
        k = false;
        f = b1;
        g = f1;
        i = new g[i1];
        h = o;
    }

    public l a(l l1)
    {
        l1.a(this);
        synchronized (c)
        {
            c.add(l1);
        }
        l1.a(c());
        l1.a("add-to-queue");
        if (!l1.r())
        {
            e.add(l1);
            return l1;
        }
        break MISSING_BLOCK_LABEL_64;
        l1;
        set;
        JVM INSTR monitorexit ;
        throw l1;
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        Queue queue;
        String s;
        s = l1.e();
        if (!b.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_168;
        }
        queue = (Queue)b.get(s);
        Object obj;
        obj = queue;
        if (queue != null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        obj = new LinkedList();
        ((Queue) (obj)).add(l1);
        b.put(s, obj);
        if (t.b)
        {
            t.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[] {
                s
            });
        }
_L1:
        map;
        JVM INSTR monitorexit ;
        return l1;
        b.put(s, null);
        d.add(l1);
          goto _L1
        l1;
        map;
        JVM INSTR monitorexit ;
        throw l1;
    }

    public void a()
    {
        b();
        j = new c(d, e, f, h);
        j.start();
        a(true);
        int i1 = 0;
        do
        {
            if (i1 >= i.length)
            {
                return;
            }
            g g1 = new g(e, g, f, h);
            i[i1] = g1;
            g1.start();
            i1++;
        } while (true);
    }

    public void a(a a1)
    {
        Set set = c;
        set;
        JVM INSTR monitorenter ;
        Iterator iterator = c.iterator();
_L2:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_29;
        }
        return;
        l l1 = (l)iterator.next();
        if (a1.a(l1))
        {
            l1.g();
        }
        if (true) goto _L2; else goto _L1
_L1:
        a1;
        set;
        JVM INSTR monitorexit ;
        throw a1;
    }

    public void a(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        } else
        {
            a(new a(obj) {

                final m a;
                private final Object b;

                public boolean a(l l1)
                {
                    return l1.b() == b;
                }

            
            {
                a = m.this;
                b = obj;
                super();
            }
            });
            return;
        }
    }

    public boolean a(boolean flag)
    {
        k = flag;
        return flag;
    }

    public void b()
    {
        a(false);
        if (j != null)
        {
            j.a();
        }
        int i1 = 0;
        do
        {
            if (i1 >= i.length)
            {
                return;
            }
            if (i[i1] != null)
            {
                i[i1].a();
            }
            i1++;
        } while (true);
    }

    void b(l l1)
    {
        synchronized (c)
        {
            c.remove(l1);
        }
        if (!l1.r()) goto _L2; else goto _L1
_L1:
        obj = b;
        obj;
        JVM INSTR monitorenter ;
        Queue queue;
        l1 = l1.e();
        queue = (Queue)b.remove(l1);
        if (queue == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (t.b)
        {
            t.a("Releasing %d waiting requests for cacheKey=%s.", new Object[] {
                Integer.valueOf(queue.size()), l1
            });
        }
        d.addAll(queue);
        obj;
        JVM INSTR monitorexit ;
_L2:
        return;
        l1;
        obj;
        JVM INSTR monitorexit ;
        throw l1;
        l1;
        obj;
        JVM INSTR monitorexit ;
        throw l1;
    }

    public int c()
    {
        return a.incrementAndGet();
    }
}
