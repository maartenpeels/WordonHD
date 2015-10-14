// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class this._cls0 extends BroadcastReceiver
{

    final RemoteDebuggerListenerDialog this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (!isInitialStickyBroadcast())
        {
            context = getIntent().getExtras();
            int i;
            if (context != null)
            {
                i = context.getInt("debuggerPort");
            } else
            {
                i = 7936;
            }
            if (i == RemoteDebuggerListenerDialog.access$000(RemoteDebuggerListenerDialog.this))
            {
                RemoteDebuggerListenerDialog.access$100(RemoteDebuggerListenerDialog.this);
            }
        }
    }

    ()
    {
        this$0 = RemoteDebuggerListenerDialog.this;
        super();
    }
}
