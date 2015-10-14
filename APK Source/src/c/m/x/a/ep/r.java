// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.content.DialogInterface;

// Referenced classes of package c.m.x.a.ep:
//            q, p

final class r
    implements android.content.DialogInterface.OnClickListener
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.d.dispatchStatusEventAsync("ALERT_DISMISSED", a.c);
    }
}
