// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

// Referenced classes of package c.m.x.a.gv:
//            ai, am, an, ap, 
//            ak, ah, ao

public final class aj
{
    private static final class a
        implements Executor
    {

        private ThreadLocal a;

        private int a()
        {
            Integer integer1 = (Integer)a.get();
            Integer integer = integer1;
            if (integer1 == null)
            {
                integer = Integer.valueOf(0);
            }
            int j = integer.intValue() - 1;
            if (j == 0)
            {
                a.remove();
                return j;
            } else
            {
                a.set(Integer.valueOf(j));
                return j;
            }
        }

        public final void execute(Runnable runnable)
        {
            int j;
            Integer integer1 = (Integer)a.get();
            Integer integer = integer1;
            if (integer1 == null)
            {
                integer = Integer.valueOf(0);
            }
            j = integer.intValue() + 1;
            a.set(Integer.valueOf(j));
            if (j > 15) goto _L2; else goto _L1
_L1:
            runnable.run();
_L4:
            a();
            return;
_L2:
            aj.a.execute(runnable);
            if (true) goto _L4; else goto _L3
_L3:
            runnable;
            a();
            throw runnable;
        }

        private a()
        {
            a = new ThreadLocal();
        }

        a(byte byte0)
        {
            this();
        }
    }

    public final class b
    {

        final aj a;

        private boolean b(Exception exception)
        {
label0:
            {
                synchronized (aj.a(a))
                {
                    if (!aj.b(a))
                    {
                        break label0;
                    }
                }
                return false;
            }
            aj.c(a);
            aj.a(a, exception);
            aj.a(a).notifyAll();
            aj.e(a);
            obj;
            JVM INSTR monitorexit ;
            return true;
            exception;
            throw exception;
        }

        private boolean b(Object obj)
        {
label0:
            {
                synchronized (aj.a(a))
                {
                    if (!aj.b(a))
                    {
                        break label0;
                    }
                }
                return false;
            }
            aj.c(a);
            aj.a(a, obj);
            aj.a(a).notifyAll();
            aj.e(a);
            obj1;
            JVM INSTR monitorexit ;
            return true;
            obj;
            throw obj;
        }

        private boolean c()
        {
label0:
            {
                synchronized (aj.a(a))
                {
                    if (!aj.b(a))
                    {
                        break label0;
                    }
                }
                return false;
            }
            aj.c(a);
            aj.d(a);
            aj.a(a).notifyAll();
            aj.e(a);
            obj;
            JVM INSTR monitorexit ;
            return true;
            exception;
            throw exception;
        }

        public final aj a()
        {
            return a;
        }

        public final void a(Exception exception)
        {
            if (!b(exception))
            {
                throw new IllegalStateException("Cannot set the error on a completed task.");
            } else
            {
                return;
            }
        }

        public final void a(Object obj)
        {
            if (!b(obj))
            {
                throw new IllegalStateException("Cannot set the result of a completed task.");
            } else
            {
                return;
            }
        }

        public final void b()
        {
            if (!c())
            {
                throw new IllegalStateException("Cannot cancel a completed task.");
            } else
            {
                return;
            }
        }

        private b()
        {
            a = aj.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }

    private static final class c
        implements Executor
    {

        public final void execute(Runnable runnable)
        {
            (new Handler(Looper.getMainLooper())).post(runnable);
        }

        private c()
        {
        }

        c(byte byte0)
        {
            this();
        }
    }


    public static final ExecutorService a = ai.a();
    public static final Executor b = new c((byte)0);
    private static final Executor c = new a((byte)0);
    private final Object d = new Object();
    private boolean e;
    private boolean f;
    private Object g;
    private Exception h;
    private List i;

    private aj()
    {
        i = new ArrayList();
    }

    public static b a()
    {
        aj aj1 = new aj();
        aj1.getClass();
        return aj1. new b((byte)0);
    }

    private aj a(ah ah1, Executor executor)
    {
        b b1 = a();
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = g();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        i.add(new am(this, b1, ah1, executor));
        obj;
        JVM INSTR monitorexit ;
        if (flag)
        {
            c(b1, ah1, this, executor);
        }
        return b1.a;
        ah1;
        throw ah1;
    }

    public static aj a(Exception exception)
    {
        b b1 = a();
        b1.a(exception);
        return b1.a;
    }

    public static aj a(Object obj)
    {
        b b1 = a();
        b1.a(obj);
        return b1.a;
    }

    static Exception a(aj aj1, Exception exception)
    {
        aj1.h = exception;
        return exception;
    }

    static Object a(aj aj1)
    {
        return aj1.d;
    }

    static Object a(aj aj1, Object obj)
    {
        aj1.g = obj;
        return obj;
    }

    static void a(b b1, ah ah1, aj aj1, Executor executor)
    {
        c(b1, ah1, aj1, executor);
    }

    private aj b(ah ah1, Executor executor)
    {
        b b1 = a();
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = g();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        i.add(new an(this, b1, ah1, executor));
        obj;
        JVM INSTR monitorexit ;
        if (flag)
        {
            d(b1, ah1, this, executor);
        }
        return b1.a;
        ah1;
        throw ah1;
    }

    static void b(b b1, ah ah1, aj aj1, Executor executor)
    {
        d(b1, ah1, aj1, executor);
    }

    static boolean b(aj aj1)
    {
        return aj1.e;
    }

    private static void c(b b1, ah ah1, aj aj1, Executor executor)
    {
        executor.execute(new ap(ah1, aj1, b1));
    }

    static boolean c(aj aj1)
    {
        aj1.e = true;
        return true;
    }

    private static void d(b b1, ah ah1, aj aj1, Executor executor)
    {
        executor.execute(new ak(ah1, aj1, b1));
    }

    static boolean d(aj aj1)
    {
        aj1.f = true;
        return true;
    }

    static void e(aj aj1)
    {
        Object obj = aj1.d;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = aj1.i.iterator();
_L1:
        ah ah1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_65;
        }
        ah1 = (ah)iterator.next();
        ah1.then(aj1);
          goto _L1
        aj1;
        throw aj1;
        aj1;
        obj;
        JVM INSTR monitorexit ;
        throw aj1;
        aj1;
        throw new RuntimeException(aj1);
        aj1.i = null;
        obj;
        JVM INSTR monitorexit ;
    }

    public static aj f()
    {
        b b1 = a();
        b1.b();
        return b1.a;
    }

    private boolean g()
    {
        boolean flag;
        synchronized (d)
        {
            flag = e;
        }
        return flag;
    }

    public final aj a(ah ah1)
    {
        return a(ah1, c);
    }

    public final aj b(ah ah1)
    {
        Executor executor = c;
        return b(((ah) (new ao(this, ah1))), executor);
    }

    public final boolean b()
    {
        boolean flag;
        synchronized (d)
        {
            flag = f;
        }
        return flag;
    }

    public final boolean c()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (h != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object d()
    {
        Object obj1;
        synchronized (d)
        {
            obj1 = g;
        }
        return obj1;
    }

    public final Exception e()
    {
        Exception exception;
        synchronized (d)
        {
            exception = h;
        }
        return exception;
    }

}
