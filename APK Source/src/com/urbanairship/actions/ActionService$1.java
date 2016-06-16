// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;


// Referenced classes of package com.urbanairship.actions:
//            ActionCompletionCallback, ActionService, ActionResult

class a
    implements ActionCompletionCallback
{

    final ActionService a;

    public final void a(ActionResult actionresult)
    {
        ActionService.a(a);
        if (ActionService.b(a) == 0)
        {
            a.stopSelf(ActionService.c(a));
        }
    }

    Callback(ActionService actionservice)
    {
        a = actionservice;
        super();
    }
}
