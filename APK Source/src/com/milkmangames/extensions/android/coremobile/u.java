// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.app.Activity;
import android.app.AlertDialog;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b, y

final class u
    implements android.widget.TextView.OnEditorActionListener
{

    final y a;
    final AlertDialog b;
    final b c;

    u(b b1, y y1, AlertDialog alertdialog)
    {
        c = b1;
        a = y1;
        b = alertdialog;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        Log.d(b.a, "Editor action finish");
        a.a(true);
        if (a.a != null)
        {
            ((InputMethodManager)c.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(a.a.getWindowToken(), 0);
        }
        b.dismiss();
        return true;
    }
}
