// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushMessage

class RichPushMessageCache
{

    private final Map a = new ConcurrentHashMap();
    private final Map b = new ConcurrentHashMap();

    RichPushMessageCache()
    {
    }

    final RichPushMessage a(String s)
    {
        if (a.containsKey(s))
        {
            return (RichPushMessage)a.get(s);
        } else
        {
            return (RichPushMessage)b.get(s);
        }
    }

    final void a(RichPushMessage richpushmessage)
    {
        b(richpushmessage);
        if (richpushmessage.b())
        {
            b.put(richpushmessage.a(), richpushmessage);
            return;
        } else
        {
            a.put(richpushmessage.a(), richpushmessage);
            return;
        }
    }

    final void b(RichPushMessage richpushmessage)
    {
        b.remove(richpushmessage.a());
        a.remove(richpushmessage.a());
    }
}
