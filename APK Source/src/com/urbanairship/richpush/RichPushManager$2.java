// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushManager

class dateResultReceiver extends dateResultReceiver
{

    final int a;
    final freshMessagesCallback b;
    final RichPushManager c;

    public final void a(boolean flag)
    {
        if (RichPushManager.a(c).compareAndSet(a, 0))
        {
            RichPushManager.a(c, flag);
        }
        if (b != null)
        {
            b.a();
        }
    }

    freshMessagesCallback(RichPushManager richpushmanager, int i, freshMessagesCallback freshmessagescallback)
    {
        c = richpushmanager;
        a = i;
        b = freshmessagescallback;
        super();
    }
}
