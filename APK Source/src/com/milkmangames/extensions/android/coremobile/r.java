// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.app.Activity;
import android.content.DialogInterface;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b, y

final class r
    implements android.content.DialogInterface.OnClickListener
{

    final y a;
    final b b;

    r(b b1, y y1)
    {
        b = b1;
        a = y1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        Log.d(b.a, "On Click");
        y y1 = a;
        boolean flag;
        if (i == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        y1.a(flag);
        if (a.a != null)
        {
            ((InputMethodManager)b.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(a.a.getWindowToken(), 0);
        }
        dialoginterface.dismiss();
    }
}
