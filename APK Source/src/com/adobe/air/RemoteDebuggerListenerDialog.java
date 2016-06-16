// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import java.net.InetAddress;
import java.net.Socket;

public class RemoteDebuggerListenerDialog extends Activity
{
    private static final class DialogState extends Enum
    {

        private static final DialogState $VALUES[];
        public static final DialogState StateRuntimeNotReady;
        public static final DialogState StateRuntimeTimedOut;
        public static final DialogState StateRuntimeWaitingForDebugger;

        public static DialogState valueOf(String s)
        {
            return (DialogState)Enum.valueOf(com/adobe/air/RemoteDebuggerListenerDialog$DialogState, s);
        }

        public static DialogState[] values()
        {
            return (DialogState[])$VALUES.clone();
        }

        static 
        {
            StateRuntimeNotReady = new DialogState("StateRuntimeNotReady", 0);
            StateRuntimeWaitingForDebugger = new DialogState("StateRuntimeWaitingForDebugger", 1);
            StateRuntimeTimedOut = new DialogState("StateRuntimeTimedOut", 2);
            $VALUES = (new DialogState[] {
                StateRuntimeNotReady, StateRuntimeWaitingForDebugger, StateRuntimeTimedOut
            });
        }

        private DialogState(String s, int i)
        {
            super(s, i);
        }
    }


    private final String LOG_TAG = getClass().getName();
    private int count;
    private int debuggerPort;
    private Activity mActivity;
    private Runnable mCheckAgain;
    private Handler mHandler;
    private BroadcastReceiver mReceiver;
    private AlertDialog mWaitDialog;

    public RemoteDebuggerListenerDialog()
    {
        debuggerPort = -1;
        count = 0;
        mHandler = new Handler();
        mWaitDialog = null;
        mCheckAgain = null;
        mActivity = null;
    }

    private void closeListeningDebuggerSocket()
    {
        (new AsyncTask() {

            final RemoteDebuggerListenerDialog this$0;

            protected transient Integer doInBackground(Integer ainteger[])
            {
                try
                {
                    (new Socket(InetAddress.getLocalHost(), ainteger[0].intValue())).close();
                }
                // Misplaced declaration of an exception variable
                catch (Integer ainteger[]) { }
                return Integer.valueOf(0);
            }

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Integer[])aobj);
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        }).execute(new Integer[] {
            Integer.valueOf(debuggerPort)
        });
    }

    private AlertDialog createDialog(CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnKeyListener onkeylistener)
    {
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(mActivity)).create();
        alertdialog.setTitle(charsequence);
        alertdialog.setMessage(charsequence1);
        alertdialog.setButton(-1, charsequence2, onclicklistener);
        alertdialog.setOnKeyListener(onkeylistener);
        alertdialog.setCancelable(true);
        return alertdialog;
    }

    private void dismissDialog()
    {
        if (mWaitDialog != null)
        {
            mWaitDialog.cancel();
        }
        if (mReceiver != null)
        {
            unregisterReceiver(mReceiver);
        }
        mReceiver = null;
        mHandler.removeCallbacks(mCheckAgain);
        mActivity.finish();
    }

    public void onCreate(Bundle bundle)
    {
        final String dialogMessage = getString(0x7f0a0077);
        final String timeOutMessage = getString(0x7f0a0078);
        mActivity = this;
        super.onCreate(bundle);
        bundle = getIntent().getExtras();
        IntentFilter intentfilter;
        int i;
        if (bundle != null)
        {
            i = bundle.getInt("debuggerPort");
        } else
        {
            i = 7936;
        }
        debuggerPort = i;
        mWaitDialog = (new android.app.AlertDialog.Builder(this)).create();
        bundle = String.format(dialogMessage, new Object[] {
            Integer.valueOf(60)
        });
        mReceiver = new BroadcastReceiver() {

            final RemoteDebuggerListenerDialog this$0;

            public void onReceive(Context context, Intent intent)
            {
                if (!isInitialStickyBroadcast())
                {
                    context = getIntent().getExtras();
                    int j;
                    if (context != null)
                    {
                        j = context.getInt("debuggerPort");
                    } else
                    {
                        j = 7936;
                    }
                    if (j == debuggerPort)
                    {
                        dismissDialog();
                    }
                }
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        };
        intentfilter = new IntentFilter("android.intent.action.MAIN");
        intentfilter.addCategory("RemoteDebuggerListenerDialogClose");
        registerReceiver(mReceiver, intentfilter);
        mWaitDialog = createDialog(getString(0x7f0a0075), bundle, getString(0x7f0a0061), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerListenerDialog this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                mHandler.removeCallbacks(mCheckAgain);
                closeListeningDebuggerSocket();
                unregisterReceiver(mReceiver);
                mReceiver = null;
                dialoginterface.cancel();
                finish();
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        }, new android.content.DialogInterface.OnKeyListener() {

            final RemoteDebuggerListenerDialog this$0;

            public boolean onKey(DialogInterface dialoginterface, int j, KeyEvent keyevent)
            {
                if (j == 4)
                {
                    mHandler.removeCallbacks(mCheckAgain);
                    closeListeningDebuggerSocket();
                    unregisterReceiver(mReceiver);
                    mReceiver = null;
                    dialoginterface.cancel();
                    finish();
                }
                return false;
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        });
        count = 0;
        mCheckAgain = new Runnable() {

            final RemoteDebuggerListenerDialog this$0;
            final String val$dialogMessage;
            final String val$timeOutMessage;

            public void run()
            {
                if (count < 60)
                {
                    String s = String.format(dialogMessage, new Object[] {
                        Integer.valueOf(60 - count)
                    });
                    int i = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                dialogMessage = s;
                timeOutMessage = s1;
                super();
            }
        };
        mHandler.postDelayed(mCheckAgain, 1000L);
        mWaitDialog.show();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            closeListeningDebuggerSocket();
            dismissDialog();
        }
        return onKeyDown(i, keyevent);
    }

    public void onStop()
    {
        closeListeningDebuggerSocket();
        dismissDialog();
        onStop();
    }








/*
    static BroadcastReceiver access$502(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog, BroadcastReceiver broadcastreceiver)
    {
        remotedebuggerlistenerdialog.mReceiver = broadcastreceiver;
        return broadcastreceiver;
    }

*/



/*
    static int access$608(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog)
    {
        int i = remotedebuggerlistenerdialog.count;
        remotedebuggerlistenerdialog.count = i + 1;
        return i;
    }

*/



/*
    static AlertDialog access$702(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog, AlertDialog alertdialog)
    {
        remotedebuggerlistenerdialog.mWaitDialog = alertdialog;
        return alertdialog;
    }

*/


    // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4$1

/* anonymous class */
    class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final _cls4 this$1;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            closeListeningDebuggerSocket();
            dialoginterface.cancel();
            finish();
        }

            
            {
                this$1 = _cls4.this;
                super();
            }
    }


    // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4$2

/* anonymous class */
    class _cls2
        implements android.content.DialogInterface.OnKeyListener
    {

        final _cls4 this$1;
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
                this$1 = final__pcls4;
                dialogButtonHandler = android.content.DialogInterface.OnClickListener.this;
                super();
            }
    }

}
