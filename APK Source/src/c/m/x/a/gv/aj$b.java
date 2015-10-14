// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;


// Referenced classes of package c.m.x.a.gv:
//            aj

public final class <init>
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

    private (aj aj1)
    {
        a = aj1;
        super();
    }

    (aj aj1, byte byte0)
    {
        this(aj1);
    }
}
