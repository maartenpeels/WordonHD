// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.util.Log;

// Referenced classes of package c.m.x.a.ep:
//            am, p

final class t
    implements am
{

    final p a;

    t(p p1)
    {
        a = p1;
        super();
    }

    public final void a()
    {
        p.e = false;
    }

    public final void b()
    {
        p.e = true;
    }

    public final void c()
    {
        p.e = true;
    }

    public final void d()
    {
        Log.d("[PushNotifyEx]", "Pause.");
    }

    public final void e()
    {
        Log.d("[PushNotifyEx]", "Destroy.");
    }
}
