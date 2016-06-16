// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.tapjoy:
//            TJEvent

public class TJEventManager
{

    private static Map eventsTable = new LinkedHashMap() {

        private static final long serialVersionUID = 0x506aca8d43dcbea9L;

        protected boolean removeEldestEntry(java.util.Map.Entry entry)
        {
            return size() > 20;
        }

    };

    public TJEventManager()
    {
    }

    public static TJEvent get(String s)
    {
        return (TJEvent)eventsTable.get(s);
    }

    public static void put(String s, TJEvent tjevent)
    {
        eventsTable.put(s, tjevent);
    }

    public static void remove(String s)
    {
        eventsTable.remove(s);
    }

}
