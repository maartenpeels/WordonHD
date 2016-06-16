// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.view.Window;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class s
    implements android.view.View.OnFocusChangeListener
{

    final AlertDialog a;
    final b b;

    s(b b1, AlertDialog alertdialog)
    {
        b = b1;
        a = alertdialog;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            Log.d(b.a, "Input gained focus.");
            a.getWindow().setSoftInputMode(5);
        }
    }
}
