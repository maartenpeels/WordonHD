// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;


// Referenced classes of package com.urbanairship.richpush:
//            RichPushManager

class dateResultReceiver extends dateResultReceiver
{

    final RichPushManager a;

    public final void a(boolean flag)
    {
        RichPushManager.b(a, flag);
    }

    dateResultReceiver(RichPushManager richpushmanager)
    {
        a = richpushmanager;
        super();
    }
}
