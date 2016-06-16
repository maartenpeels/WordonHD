// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.js;

import com.urbanairship.actions.ActionCompletionCallback;
import com.urbanairship.actions.ActionResult;

// Referenced classes of package com.urbanairship.js:
//            UAJavascriptInterface

class lback
    implements ActionCompletionCallback
{

    final String a;
    final String b;
    final UAJavascriptInterface c;

    public final void a(ActionResult actionresult)
    {
        Object obj = c;
        obj = UAJavascriptInterface.a(a, actionresult);
        UAJavascriptInterface.a(c, ((String) (obj)), actionresult.b(), b);
    }
}
