// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.ArrayList;

public class bm
{
    public static class a
    {

        private final Bundle a = new Bundle();

        public a a(String s)
        {
            a.putString("arg:title", s);
            return this;
        }

        public bm a(Context context, b b1)
        {
            return new bm(context, a, b1);
        }

        public a b(String s)
        {
            a.putString("arg:message", s);
            return this;
        }

        public a c(String s)
        {
            a.putString("arg:left", s);
            return this;
        }

        public a d(String s)
        {
            a.putString("arg:right", s);
            return this;
        }

        public a()
        {
        }
    }

    public static abstract class b
    {

        public void a(bm bm1)
        {
        }

        public abstract void a(bm bm1, int i);

        public b()
        {
        }
    }


    private static final String a[] = {
        "arg:left", "arg:center", "arg:right"
    };
    private b b;

    public bm(Context context, Bundle bundle, b b1)
    {
        int j;
        int k;
        b = b1;
        String s = bundle.getString("arg:title");
        String s1 = bundle.getString("arg:message");
        k = bundle.getInt("arg:default", -1);
        b1 = new ArrayList();
        for (int i = 0; i < 3; i++)
        {
            String s2 = bundle.getString(a[i]);
            if (!TextUtils.isEmpty(s2))
            {
                b1.add(s2);
            }
        }

        context = (new android.app.AlertDialog.Builder(context)).setTitle(s).setMessage(s1);
        j = b1.size();
        j;
        JVM INSTR tableswitch 1 3: default 140
    //                   1 208
    //                   2 194
    //                   3 180;
           goto _L1 _L2 _L3 _L4
_L1:
        context = context.create();
        context.setOnShowListener(new android.content.DialogInterface.OnShowListener(context, j, b1, k) {

            final AlertDialog a;
            final int b;
            final ArrayList c;
            final int d;
            final bm e;

            public void onShow(DialogInterface dialoginterface)
            {
                dialoginterface = bm.a(a);
                for (int l = 0; l < b; l++)
                {
                    CharSequence charsequence = (CharSequence)c.get(l);
                    Button button = dialoginterface[l];
                    if (d == l)
                    {
                        button.setTypeface(null, 1);
                    }
                    button.setText(charsequence);
                    button.setOnClickListener(new android.view.View.OnClickListener(this, l) {

                        final int a;
                        final _cls1 b;

                        public void onClick(View view)
                        {
                            if (bm.a(b.e) != null)
                            {
                                bm.a(b.e).a(b.e, a);
                            }
                            b.a.dismiss();
                        }

            
            {
                b = _pcls1;
                a = i;
                super();
            }
                    });
                }

            }

            
            {
                e = bm.this;
                a = alertdialog;
                b = i;
                c = arraylist;
                d = j;
                super();
            }
        });
        context.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final bm a;

            public void onCancel(DialogInterface dialoginterface)
            {
                bm.a(a).a(a);
            }

            
            {
                a = bm.this;
                super();
            }
        });
        context.show();
        return;
_L4:
        context.setNegativeButton((CharSequence)b1.get(2), null);
_L3:
        context.setNeutralButton((CharSequence)b1.get(1), null);
_L2:
        context.setPositiveButton((CharSequence)b1.get(0), null);
        if (true) goto _L1; else goto _L5
_L5:
    }

    static b a(bm bm1)
    {
        return bm1.b;
    }

    static Button[] a(AlertDialog alertdialog)
    {
        return b(alertdialog);
    }

    private static final Button[] b(AlertDialog alertdialog)
    {
        ViewGroup viewgroup = (ViewGroup)alertdialog.getButton(-1).getParent();
        int j = viewgroup.getChildCount();
        alertdialog = new ArrayList();
        int i = 0;
        do
        {
            if (i >= j)
            {
                break;
            }
            View view = viewgroup.getChildAt(i);
            if (view.getVisibility() == 0 && (view instanceof Button))
            {
                alertdialog.add((Button)view);
            }
            i++;
        } while (true);
        Button abutton[] = new Button[alertdialog.size()];
        alertdialog.toArray(abutton);
        return abutton;
    }

}
