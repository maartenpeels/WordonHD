// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;


// Referenced classes of package com.urbanairship.actions:
//            ActionCompletionCallback, ActionResult, ActionRunner

class b
    implements Runnable
{

    final ActionCompletionCallback a;
    final ActionResult b;
    final ActionRunner c;

    public void run()
    {
        a.a(b);
    }

    nCallback(ActionRunner actionrunner, ActionCompletionCallback actioncompletioncallback, ActionResult actionresult)
    {
        c = actionrunner;
        a = actioncompletioncallback;
        b = actionresult;
        super();
    }
}
