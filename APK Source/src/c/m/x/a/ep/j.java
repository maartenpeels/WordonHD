// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;

// Referenced classes of package c.m.x.a.ep:
//            g, e

final class j
    implements g
{

    j()
    {
    }

    public final Notification a(e e1)
    {
        android.content.Context context = e1.a;
        Notification notification = e1.r;
        CharSequence charsequence = e1.b;
        CharSequence charsequence1 = e1.c;
        CharSequence charsequence2 = e1.h;
        android.widget.RemoteViews remoteviews = e1.f;
        int i = e1.i;
        android.app.PendingIntent pendingintent1 = e1.d;
        android.app.PendingIntent pendingintent = e1.e;
        android.graphics.Bitmap bitmap = e1.g;
        int k = e1.n;
        int l = e1.o;
        boolean flag1 = e1.p;
        e1 = (new android.app.Notification.Builder(context)).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteviews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean flag;
        if ((notification.flags & 2) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e1 = e1.setOngoing(flag);
        if ((notification.flags & 8) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e1 = e1.setOnlyAlertOnce(flag);
        if ((notification.flags & 0x10) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e1 = e1.setAutoCancel(flag).setDefaults(notification.defaults).setContentTitle(charsequence).setContentText(charsequence1).setContentInfo(charsequence2).setContentIntent(pendingintent1).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 0x80) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return e1.setFullScreenIntent(pendingintent, flag).setLargeIcon(bitmap).setNumber(i).setProgress(k, l, flag1).getNotification();
    }
}
