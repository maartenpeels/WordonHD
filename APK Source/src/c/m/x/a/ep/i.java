// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;

// Referenced classes of package c.m.x.a.ep:
//            g, e

final class i
    implements g
{

    i()
    {
    }

    public final Notification a(e e1)
    {
        Object obj1 = e1.a;
        Notification notification = e1.r;
        Object obj = e1.b;
        CharSequence charsequence = e1.c;
        CharSequence charsequence1 = e1.h;
        android.widget.RemoteViews remoteviews = e1.f;
        int j = e1.i;
        android.app.PendingIntent pendingintent1 = e1.d;
        android.app.PendingIntent pendingintent = e1.e;
        e1 = e1.g;
        obj1 = (new android.app.Notification.Builder(((android.content.Context) (obj1)))).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteviews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean flag;
        if ((notification.flags & 2) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj1 = ((android.app.Notification.Builder) (obj1)).setOngoing(flag);
        if ((notification.flags & 8) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj1 = ((android.app.Notification.Builder) (obj1)).setOnlyAlertOnce(flag);
        if ((notification.flags & 0x10) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = ((android.app.Notification.Builder) (obj1)).setAutoCancel(flag).setDefaults(notification.defaults).setContentTitle(((CharSequence) (obj))).setContentText(charsequence).setContentInfo(charsequence1).setContentIntent(pendingintent1).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 0x80) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return ((android.app.Notification.Builder) (obj)).setFullScreenIntent(pendingintent, flag).setLargeIcon(e1).setNumber(j).getNotification();
    }
}
