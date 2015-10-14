// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.Activity;
import android.os.Handler;
import android.util.SparseArray;

// Referenced classes of package com.urbanairship.analytics:
//            ActivityState

class ActivityMonitor
{

    private SparseArray a;
    private Listener b;
    private boolean c;
    private int d;
    private int e;
    private boolean f;

    public ActivityMonitor(int i, int j, boolean flag)
    {
        a = new SparseArray();
        c = false;
        d = i;
        e = j;
        f = flag;
    }

    private ActivityState a(Activity activity)
    {
        ActivityState activitystate1 = (ActivityState)a.get(activity.hashCode());
        ActivityState activitystate = activitystate1;
        if (activitystate1 == null)
        {
            activitystate = new ActivityState(activity.toString(), d, e, f);
            a.put(activity.hashCode(), activitystate);
        }
        return activitystate;
    }

    private void a(boolean flag)
    {
        if (c == flag)
        {
            return;
        }
        c = flag;
        this;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        b.a();
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        b.b();
          goto _L1
    }

    final void a()
    {
        for (int i = 0; i < a.size(); i++)
        {
            if (((ActivityState)a.valueAt(i)).a())
            {
                a(true);
                return;
            }
        }

        a(false);
    }

    public final void a(Activity activity, Source source)
    {
        a(activity).a(source);
        a();
    }

    public final void a(Listener listener)
    {
        this;
        JVM INSTR monitorenter ;
        b = listener;
        this;
        JVM INSTR monitorexit ;
        return;
        listener;
        this;
        JVM INSTR monitorexit ;
        throw listener;
    }

    public final void b(Activity activity, Source source)
    {
        a(activity).b(source);
        (new Handler()).postDelayed(new _cls1(), 2000L);
    }

    private class Listener
    {

        public abstract void a();

        public abstract void b();

        public Listener()
        {
        }
    }


    private class _cls1
        implements Runnable
    {

        final ActivityMonitor a;

        public void run()
        {
            a.a();
        }

        _cls1()
        {
            a = ActivityMonitor.this;
            super();
        }
    }

}
