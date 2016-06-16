// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.os.Handler;
import com.android.internal.util.Predicate;
import com.urbanairship.Logger;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// Referenced classes of package com.urbanairship.actions:
//            ActionRegistry, ActionCompletionCallback, ActionResult, Action, 
//            ActionArguments

public class ActionRunner
{

    private static ActionRunner a = new ActionRunner(ActionRegistry.a(), Executors.newCachedThreadPool());
    private ActionRegistry b;
    private Executor c;

    private ActionRunner(ActionRegistry actionregistry, Executor executor)
    {
        b = actionregistry;
        c = executor;
    }

    public static ActionRunner a()
    {
        return a;
    }

    static void a(ActionRunner actionrunner, Handler handler, ActionCompletionCallback actioncompletioncallback, ActionResult actionresult)
    {
label0:
        {
            if (actioncompletioncallback != null)
            {
                if (handler == null)
                {
                    break label0;
                }
                handler.post(actionrunner. new _cls3(actioncompletioncallback, actionresult));
            }
            return;
        }
        actioncompletioncallback.a(actionresult);
    }

    private static Handler b()
    {
        Handler handler;
        try
        {
            handler = new Handler();
        }
        catch (Exception exception)
        {
            return null;
        }
        return handler;
    }

    public final void a(String s, ActionArguments actionarguments)
    {
        a(s, actionarguments, null);
    }

    public final void a(String s, ActionArguments actionarguments, ActionCompletionCallback actioncompletioncallback)
    {
        Handler handler = b();
        c.execute(new _cls2(s, actionarguments, handler, actioncompletioncallback));
    }

    public final ActionResult b(String s, ActionArguments actionarguments)
    {
        ActionRegistry.Entry entry = b.a(s);
        if (entry == null)
        {
            return ActionResult.a(ActionResult.Status.c);
        }
        if (entry.a() != null && !entry.a().apply(actionarguments))
        {
            Logger.d("Action will not be run. Registry predicate returned false.");
            return ActionResult.a(ActionResult.Status.b);
        }
        if (actionarguments == null)
        {
            s = null;
        } else
        {
            s = actionarguments.b();
        }
        return entry.a(s).a(actionarguments);
    }


    private class _cls3
        implements Runnable
    {

        final ActionCompletionCallback a;
        final ActionResult b;
        final ActionRunner c;

        public void run()
        {
            a.a(b);
        }

        _cls3(ActionCompletionCallback actioncompletioncallback, ActionResult actionresult)
        {
            c = ActionRunner.this;
            a = actioncompletioncallback;
            b = actionresult;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final String a;
        final ActionArguments b;
        final Handler c;
        final ActionCompletionCallback d;
        final ActionRunner e;

        public void run()
        {
            ActionResult actionresult = e.b(a, b);
            ActionRunner.a(e, c, d, actionresult);
        }

        _cls2(String s, ActionArguments actionarguments, Handler handler, ActionCompletionCallback actioncompletioncallback)
        {
            e = ActionRunner.this;
            a = s;
            b = actionarguments;
            c = handler;
            d = actioncompletioncallback;
            super();
        }
    }

}
