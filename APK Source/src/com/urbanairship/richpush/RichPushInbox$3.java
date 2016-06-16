// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.List;
import java.util.Set;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushManager, RichPushResolver, RichPushInbox

class a
    implements Runnable
{

    final Set a;
    final RichPushInbox b;

    public void run()
    {
        RichPushManager.a.c(a);
        RichPushInbox.a(b).removeAll(a);
    }

    (RichPushInbox richpushinbox, Set set)
    {
        b = richpushinbox;
        a = set;
        super();
    }
}
