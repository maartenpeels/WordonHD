// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UriUtils;

// Referenced classes of package com.urbanairship.actions:
//            Action, Situation, ActionArguments, ActionResult

public class OpenExternalUrlAction extends Action
{

    public OpenExternalUrlAction()
    {
    }

    public final boolean b(ActionArguments actionarguments)
    {
        return Situation.b != actionarguments.b() && UriUtils.a(actionarguments.a()) != null;
    }

    public final ActionResult c(ActionArguments actionarguments)
    {
        actionarguments = UriUtils.a(actionarguments.a());
        Logger.d((new StringBuilder("Opening ")).append(actionarguments).toString());
        Intent intent = new Intent("android.intent.action.VIEW", actionarguments);
        intent.addFlags(0x10000000);
        UAirship.a().g().startActivity(intent);
        return ActionResult.a(actionarguments);
    }
}
