// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class val.timeOutMessage
    implements Runnable
{

    final RemoteDebuggerListenerDialog this$0;
    final String val$dialogMessage;
    final String val$timeOutMessage;

    public void run()
    {
        if (RemoteDebuggerListenerDialog.access$600(RemoteDebuggerListenerDialog.this) < 60)
        {
            String s = String.format(val$dialogMessage, new Object[] {
                Integer.valueOf(60 - RemoteDebuggerListenerDialog.access$600(RemoteDebuggerListenerDialog.this))
            });
            int _tmp = RemoteDebuggerListenerDialog.access$608(RemoteDebuggerListenerDialog.this);
            RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).setMessage(s);
            RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).postDelayed(this, 1000L);
            return;
        }
        RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).removeCallbacks(this);
        RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).cancel();
        if (RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this) != null)
        {
            unregisterReceiver(RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this));
            RemoteDebuggerListenerDialog.access$502(RemoteDebuggerListenerDialog.this, null);
        }
        final android.content. dialogButtonHandler = new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerListenerDialog._cls4 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                RemoteDebuggerListenerDialog.access$400(this$0);
                dialoginterface.cancel();
                finish();
            }

            
            {
                this$1 = RemoteDebuggerListenerDialog._cls4.this;
                super();
            }
        };
        RemoteDebuggerListenerDialog.access$702(RemoteDebuggerListenerDialog.this, RemoteDebuggerListenerDialog.access$800(RemoteDebuggerListenerDialog.this, "Adobe AIR", val$timeOutMessage, getString(0x7f0a0062), dialogButtonHandler, new android.content.DialogInterface.OnKeyListener() {

            final RemoteDebuggerListenerDialog._cls4 this$1;
            final android.content.DialogInterface.OnClickListener val$dialogButtonHandler;

            public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                if (i == 4)
                {
                    dialogButtonHandler.onClick(dialoginterface, -1);
                }
                return false;
            }

            
            {
                this$1 = RemoteDebuggerListenerDialog._cls4.this;
                dialogButtonHandler = onclicklistener;
                super();
            }
        }));
        RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).show();
    }

    _cls2.val.dialogButtonHandler()
    {
        this$0 = final_remotedebuggerlistenerdialog;
        val$dialogMessage = s;
        val$timeOutMessage = String.this;
        super();
    }
}
