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

class 
    implements android.content.l.dialogButtonHandler
{

    final .onClick this$1;
    final android.content.nClick val$dialogButtonHandler;

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            val$dialogButtonHandler.nClick(dialoginterface, -1);
        }
        return false;
    }

    ()
    {
        this$1 = final_;
        val$dialogButtonHandler = android.content.l.dialogButtonHandler.this;
        super();
    }

    // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4

/* anonymous class */
    class RemoteDebuggerListenerDialog._cls4
        implements Runnable
    {

        final RemoteDebuggerListenerDialog this$0;
        final String val$dialogMessage;
        final String val$timeOutMessage;

        public void run()
        {
            if (RemoteDebuggerListenerDialog.access$600(RemoteDebuggerListenerDialog.this) < 60)
            {
                String s = String.format(dialogMessage, new Object[] {
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
            android.content.DialogInterface.OnClickListener onclicklistener = new RemoteDebuggerListenerDialog._cls4._cls1();
            RemoteDebuggerListenerDialog.access$702(RemoteDebuggerListenerDialog.this, RemoteDebuggerListenerDialog.access$800(RemoteDebuggerListenerDialog.this, "Adobe AIR", timeOutMessage, getString(0x7f0a0062), onclicklistener, onclicklistener. new RemoteDebuggerListenerDialog._cls4._cls2()));
            RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).show();
        }

            
            {
                this$0 = final_remotedebuggerlistenerdialog;
                dialogMessage = s;
                timeOutMessage = String.this;
                super();
            }

        // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4$1

/* anonymous class */
        class RemoteDebuggerListenerDialog._cls4._cls1
            implements android.content.DialogInterface.OnClickListener
        {

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
        }

    }

}