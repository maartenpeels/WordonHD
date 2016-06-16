// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.actions:
//            ActionResult, ActionArguments

public abstract class Action
{

    public Action()
    {
    }

    final ActionResult a(ActionArguments actionarguments)
    {
        if (actionarguments == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        if (b(actionarguments))
        {
            break MISSING_BLOCK_LABEL_47;
        }
        Logger.d((new StringBuilder("Action ")).append(this).append(" is unable to accept arguments: ").append(actionarguments).toString());
        return ActionResult.a(ActionResult.Status.b);
        ActionResult actionresult = c(actionarguments);
        actionarguments = actionresult;
        if (actionresult != null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        actionarguments = ActionResult.a();
        return actionarguments;
        actionarguments;
        Logger.c((new StringBuilder("Action failed to run ")).append(this).toString(), actionarguments);
        actionarguments = ActionResult.a(actionarguments);
        return actionarguments;
    }

    public boolean b(ActionArguments actionarguments)
    {
        return actionarguments != null && actionarguments.b() != null;
    }

    public abstract ActionResult c(ActionArguments actionarguments);
}
