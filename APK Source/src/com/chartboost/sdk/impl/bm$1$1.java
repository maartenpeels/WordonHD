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

class a
    implements android.view.ClickListener
{

    final int a;
    final  b;

    public void onClick(View view)
    {
        if (bm.a(b.b) != null)
        {
            bm.a(b.b).b(b.b, a);
        }
        b.b.dismiss();
    }

    ( , int i)
    {
        b = ;
        a = i;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/impl/bm$1

/* anonymous class */
    class bm._cls1
        implements android.content.DialogInterface.OnShowListener
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
                button.setOnClickListener(new bm._cls1._cls1(this, i));
            }

        }

            
            {
                e = bm1;
                a = alertdialog;
                b = i;
                c = arraylist;
                d = j;
                super();
            }
    }

}
