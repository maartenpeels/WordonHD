// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.os.Handler;

// Referenced classes of package com.urbanairship.actions:
//            ActionRunner, ActionArguments, ActionCompletionCallback

class d
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

    nCallback(ActionRunner actionrunner, String s, ActionArguments actionarguments, Handler handler, ActionCompletionCallback actioncompletioncallback)
    {
        e = actionrunner;
        a = s;
        b = actionarguments;
        c = handler;
        d = actioncompletioncallback;
        super();
    }
}
