// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

final class m
{

    private android.app.Notification.Builder a;

    public m(Context context, Notification notification, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, RemoteViews remoteviews, int i, 
            PendingIntent pendingintent, PendingIntent pendingintent1, Bitmap bitmap, int j, int k, boolean flag, boolean flag1, 
            int l, CharSequence charsequence3)
    {
        context = (new android.app.Notification.Builder(context)).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteviews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean flag2;
        if ((notification.flags & 2) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        context = context.setOngoing(flag2);
        if ((notification.flags & 8) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        context = context.setOnlyAlertOnce(flag2);
        if ((notification.flags & 0x10) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        context = context.setAutoCancel(flag2).setDefaults(notification.defaults).setContentTitle(charsequence).setContentText(charsequence1).setSubText(charsequence3).setContentInfo(charsequence2).setContentIntent(pendingintent).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 0x80) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        a = context.setFullScreenIntent(pendingintent1, flag2).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(flag1).setPriority(l).setProgress(j, k, flag);
    }

    public final Notification a()
    {
        return a.build();
    }

    public final void a(int i, CharSequence charsequence, PendingIntent pendingintent)
    {
        a.addAction(i, charsequence, pendingintent);
    }

    public final void a(CharSequence charsequence, boolean flag, CharSequence charsequence1, Bitmap bitmap, Bitmap bitmap1, boolean flag1)
    {
        charsequence = (new android.app.Notification.BigPictureStyle(a)).setBigContentTitle(charsequence).bigPicture(bitmap);
        if (flag1)
        {
            charsequence.bigLargeIcon(bitmap1);
        }
        if (flag)
        {
            charsequence.setSummaryText(charsequence1);
        }
    }

    public final void a(CharSequence charsequence, boolean flag, CharSequence charsequence1, CharSequence charsequence2)
    {
        charsequence = (new android.app.Notification.BigTextStyle(a)).setBigContentTitle(charsequence).bigText(charsequence2);
        if (flag)
        {
            charsequence.setSummaryText(charsequence1);
        }
    }

    public final void a(CharSequence charsequence, boolean flag, CharSequence charsequence1, ArrayList arraylist)
    {
        charsequence = (new android.app.Notification.InboxStyle(a)).setBigContentTitle(charsequence);
        if (flag)
        {
            charsequence.setSummaryText(charsequence1);
        }
        for (charsequence1 = arraylist.iterator(); charsequence1.hasNext(); charsequence.addLine((CharSequence)charsequence1.next())) { }
    }
}
