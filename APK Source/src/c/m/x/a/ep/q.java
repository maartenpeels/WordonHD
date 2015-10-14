// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.AlertDialog;

// Referenced classes of package c.m.x.a.ep:
//            p, r

final class q
    implements Runnable
{

    final String a;
    final String b;
    final String c;
    final p d;

    q(p p1, String s, String s1, String s2)
    {
        d = p1;
        a = s;
        b = s1;
        c = s2;
        super();
    }

    public final void run()
    {
        Object obj = new android.app.AlertDialog.Builder(d.getActivity());
        ((android.app.AlertDialog.Builder) (obj)).setMessage(a);
        ((android.app.AlertDialog.Builder) (obj)).setTitle(b);
        obj = ((android.app.AlertDialog.Builder) (obj)).create();
        ((AlertDialog) (obj)).setButton("OK", new r(this));
        ((AlertDialog) (obj)).show();
    }
}
