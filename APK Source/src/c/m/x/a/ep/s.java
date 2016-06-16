// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.content.DialogInterface;

// Referenced classes of package c.m.x.a.ep:
//            p

final class s
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final p b;

    s(p p1, String s1)
    {
        b = p1;
        a = s1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        b.dispatchStatusEventAsync("ALERT_DISMISSED", a);
    }
}
