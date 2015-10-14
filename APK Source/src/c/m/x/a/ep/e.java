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

// Referenced classes of package c.m.x.a.ep:
//            l, a, g

public final class e
{

    Context a;
    CharSequence b;
    CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    Bitmap g;
    CharSequence h;
    int i;
    int j;
    boolean k;
    l l;
    CharSequence m;
    int n;
    int o;
    boolean p;
    ArrayList q;
    Notification r;

    public e(Context context)
    {
        q = new ArrayList();
        r = new Notification();
        a = context;
        r.when = System.currentTimeMillis();
        r.audioStreamType = -1;
        j = 0;
    }

    private void c(int i1)
    {
        Notification notification = r;
        notification.flags = notification.flags | i1;
    }

    public final e a()
    {
        r.ledARGB = -1;
        r.ledOnMS = 1000;
        r.ledOffMS = 1000;
        Notification notification;
        boolean flag;
        int i1;
        if (r.ledOnMS != 0 && r.ledOffMS != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        notification = r;
        i1 = r.flags;
        if (flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        notification.flags = flag | i1 & -2;
        return this;
    }

    public final e a(int i1)
    {
        r.icon = i1;
        return this;
    }

    public final e a(PendingIntent pendingintent)
    {
        d = pendingintent;
        return this;
    }

    public final e a(Bitmap bitmap)
    {
        g = bitmap;
        return this;
    }

    public final e a(l l1)
    {
        if (l != l1)
        {
            l = l1;
            if (l != null)
            {
                l1 = l;
                if (l1.d != this)
                {
                    l1.d = this;
                    if (l1.d != null)
                    {
                        l1.d.a(l1);
                    }
                }
            }
        }
        return this;
    }

    public final e a(CharSequence charsequence)
    {
        b = charsequence;
        return this;
    }

    public final e b()
    {
        c(8);
        return this;
    }

    public final e b(int i1)
    {
        r.defaults = i1;
        if ((i1 & 4) != 0)
        {
            Notification notification = r;
            notification.flags = notification.flags | 1;
        }
        return this;
    }

    public final e b(CharSequence charsequence)
    {
        c = charsequence;
        return this;
    }

    public final e c()
    {
        c(16);
        return this;
    }

    public final e c(CharSequence charsequence)
    {
        r.tickerText = charsequence;
        return this;
    }

    public final Notification d()
    {
        return c.m.x.a.ep.a.a().a(this);
    }
}
