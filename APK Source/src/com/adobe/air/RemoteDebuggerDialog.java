// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidLocale, AndroidActivityWrapper

public final class RemoteDebuggerDialog
{

    private final Activity mActivity;

    RemoteDebuggerDialog(Activity activity)
    {
        mActivity = activity;
    }

    public void createAndShowDialog(final String pTextinput)
    {
        LinearLayout linearlayout = new LinearLayout(mActivity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        linearlayout.setOrientation(1);
        TextView textview = new TextView(mActivity);
        Object obj = "";
        if (pTextinput.length() > 0)
        {
            obj = (new StringBuilder()).append(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ERROR_MESSAGE).replaceFirst("%1", pTextinput)).append("\n").toString();
        }
        textview.setText((new StringBuilder()).append(((String) (obj))).append(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ENTERIP_MESSAGE)).toString());
        textview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        textview.setPadding(20, 20, 20, 20);
        pTextinput = new EditText(mActivity);
        pTextinput.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        pTextinput.setHeight(30);
        pTextinput.setWidth(25);
        linearlayout.addView(textview);
        linearlayout.addView(pTextinput);
        obj = new android.app.AlertDialog.Builder(mActivity);
        ((android.app.AlertDialog.Builder) (obj)).setView(linearlayout);
        ((android.app.AlertDialog.Builder) (obj)).setTitle("Adobe AIR");
        ((android.app.AlertDialog.Builder) (obj)).setPositiveButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_OK), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerDialog this$0;
            final EditText val$pTextinput;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface = pTextinput.getText().toString();
                gotResultFromDialog(true, dialoginterface);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                pTextinput = edittext;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).setNegativeButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(false, null);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final RemoteDebuggerDialog this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                gotResultFromDialog(false, null);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                super();
            }
        });
        ((android.app.AlertDialog.Builder) (obj)).show();
    }

    public void gotResultFromDialog(boolean flag, String s)
    {
        AndroidActivityWrapper.GetAndroidActivityWrapper().gotResultFromDialog(flag, s);
    }
}
