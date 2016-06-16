// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.Set;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushManager, RichPushResolver

class 
    implements Runnable
{

    final Set a;

    public void run()
    {
        RichPushManager.a.a(a);
    }
}
