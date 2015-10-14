// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;


// Referenced classes of package com.urbanairship.analytics:
//            Analytics, AppForegroundEvent, AppBackgroundEvent

class tor.Listener extends tor.Listener
{

    final Analytics a;

    public final void a()
    {
        Analytics.a(a);
        Analytics.a(a, false);
        Analytics.b(a);
        a.a(new AppForegroundEvent());
    }

    public final void b()
    {
        Analytics.a(a, true);
        a.a(new AppBackgroundEvent());
        Analytics.c(a);
        Analytics.d(a);
    }

    dEvent(Analytics analytics)
    {
        a = analytics;
        super();
    }
}
