// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidLocale, AndroidActivityWrapper

public final class ListenErrorDialog
{

    private final int ICON_ERROR = 0x7f020001;
    private final int PADDING_LENGTH = 20;
    private final Activity mActivity;
    private final String mDebuggerPort;

    ListenErrorDialog(Activity activity, int i)
    {
        mActivity = activity;
        mDebuggerPort = Integer.toString(i);
    }

    private void exitGracefully()
    {
        System.exit(0);
    }

    public void createAndShowDialog()
    {
        LinearLayout linearlayout = new LinearLayout(mActivity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        Object obj = new TextView(mActivity);
        ((TextView) (obj)).setText(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_MESSAGE).replaceFirst("%1", mDebuggerPort));
        ((TextView) (obj)).setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -1));
        ((TextView) (obj)).setPadding(20, 20, 20, 20);
        linearlayout.addView(((android.view.View) (obj)));
        obj = new android.app.AlertDialog.Builder(mActivity);
        ((android.app.AlertDialog.Builder) (obj)).setIcon(0x7f020001);
        ((android.app.AlertDialog.Builder) (obj)).setView(linearlayout);
        ((android.app.AlertDialog.Builder) (obj)).setTitle(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_TITLE));
        ((android.app.AlertDialog.Builder) (obj)).setPositiveButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), new android.content.DialogInterface.OnClickListener() {

            final ListenErrorDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(false);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).setNegativeButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTINUE), new android.content.DialogInterface.OnClickListener() {

            final ListenErrorDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(true);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final ListenErrorDialog this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                gotResultFromDialog(false);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).show();
    }

    public void gotResultFromDialog(boolean flag)
    {
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (flag)
        {
            androidactivitywrapper.gotResultFromDialog(false, "");
            return;
        } else
        {
            exitGracefully();
            return;
        }
    }
}
