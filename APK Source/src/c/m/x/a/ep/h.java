// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;

// Referenced classes of package c.m.x.a.ep:
//            g, e

final class h
    implements g
{

    h()
    {
    }

    public final Notification a(e e1)
    {
        Notification notification = e1.r;
        notification.setLatestEventInfo(e1.a, e1.b, e1.c, e1.d);
        if (e1.j > 0)
        {
            notification.flags = notification.flags | 0x80;
        }
        return notification;
    }
}
