// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushInbox

class a
    implements Runnable
{

    final RichPushInbox a;

    public void run()
    {
        List list = RichPushInbox.b(a);
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = RichPushInbox.b(a).iterator(); iterator.hasNext(); ((stener)iterator.next()).a()) { }
        break MISSING_BLOCK_LABEL_54;
        Exception exception;
        exception;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    stener(RichPushInbox richpushinbox)
    {
        a = richpushinbox;
        super();
    }
}
