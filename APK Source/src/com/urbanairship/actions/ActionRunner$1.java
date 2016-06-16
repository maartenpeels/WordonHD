// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.os.Handler;

// Referenced classes of package com.urbanairship.actions:
//            Action, ActionRunner, ActionArguments, ActionCompletionCallback

class nCallback
    implements Runnable
{

    final Action a;
    final ActionArguments b;
    final Handler c;
    final ActionCompletionCallback d;
    final ActionRunner e;

    public void run()
    {
        ActionResult actionresult = a.a(b);
        ActionRunner.a(e, c, d, actionresult);
    }
}
