// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import java.util.ArrayList;

// Referenced classes of package com.chartboost.sdk.impl:
//            bm

class d
    implements android.content.gInterface.OnShowListener
{

    final AlertDialog a;
    final int b;
    final ArrayList c;
    final int d;
    final bm e;

    public void onShow(DialogInterface dialoginterface)
    {
        dialoginterface = bm.a(a);
        for (int i = 0; i < b; i++)
        {
            CharSequence charsequence = (CharSequence)c.get(i);
            Button button = dialoginterface[i];
            if (d == i)
            {
                button.setTypeface(null, 1);
            }
            button.setText(charsequence);
            button.setOnClickListener(new android.view.View.OnClickListener(i) {

                final int a;
                final bm._cls1 b;

                public void onClick(View view)
                {
                    if (bm.a(b.e) != null)
                    {
                        bm.a(b.e).a(b.e, a);
                    }
                    b.a.dismiss();
                }

            
            {
                b = bm._cls1.this;
                a = i;
                super();
            }
            });
        }

    }

    _cls1.a(bm bm1, AlertDialog alertdialog, int i, ArrayList arraylist, int j)
    {
        e = bm1;
        a = alertdialog;
        b = i;
        c = arraylist;
        d = j;
        super();
    }
}
