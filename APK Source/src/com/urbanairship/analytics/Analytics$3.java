// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.analytics:
//            EventService, Event, Analytics

class a
    implements Runnable
{

    final Event a;
    final Analytics b;

    public void run()
    {
        Logger.b((new StringBuilder("Adding event: ")).append(a).toString());
        EventService.a(a);
    }

    (Analytics analytics, Event event)
    {
        b = analytics;
        a = event;
        super();
    }
}
