// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.HashMap;
import java.util.Map;

public class FetchRateLimiter
{
    private static class Key
    {

        public final int orientation;
        public final String tag;

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (Key)obj;
            if (orientation != ((Key) (obj)).orientation)
            {
                return false;
            }
            return tag.equals(((Key) (obj)).tag);
        }

        public int hashCode()
        {
            return tag.hashCode() * 31 + orientation;
        }

        private Key(String s, int i)
        {
            tag = s;
            orientation = i;
        }

    }


    Map lastFetchMap;
    final int sleepPeriodMillis;

    public FetchRateLimiter(int i)
    {
        lastFetchMap = new HashMap();
        sleepPeriodMillis = i;
    }

    public void resolve(String s, int i)
    {
        lastFetchMap.remove(new Key(s, i));
    }

    public boolean tryAcquire(String s, int i)
    {
        long l = System.currentTimeMillis();
        s = new Key(s, i);
        Long long1 = (Long)lastFetchMap.get(s);
        if (long1 != null && long1.longValue() + (long)sleepPeriodMillis > l)
        {
            return false;
        } else
        {
            lastFetchMap.put(s, Long.valueOf(l));
            return true;
        }
    }
}
