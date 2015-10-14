// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.heyzap.house.handler:
//            ClickHandler

class val.adUrl
    implements Runnable
{

    final ClickHandler this$0;
    final String val$adUrl;
    final Context val$context;

    public void run()
    {
        if (!ClickHandler.access$200(ClickHandler.this).get())
        {
            ClickHandler.access$300(ClickHandler.this, val$context, val$adUrl);
        }
    }

    n()
    {
        this$0 = final_clickhandler;
        val$context = context1;
        val$adUrl = String.this;
        super();
    }
}
