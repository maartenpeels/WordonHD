// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions.tags;

import com.urbanairship.Logger;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionResult;
import com.urbanairship.push.PushManager;
import java.util.Set;

// Referenced classes of package com.urbanairship.actions.tags:
//            BaseTagsAction

public class AddTagsAction extends BaseTagsAction
{

    public AddTagsAction()
    {
    }

    public final ActionResult c(ActionArguments actionarguments)
    {
        actionarguments = d(actionarguments);
        Logger.d((new StringBuilder("Adding tags: ")).append(actionarguments).toString());
        actionarguments.addAll(a().k());
        a().a(actionarguments);
        return ActionResult.a();
    }
}
