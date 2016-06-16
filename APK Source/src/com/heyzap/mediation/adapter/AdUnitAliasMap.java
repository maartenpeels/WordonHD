// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class AdUnitAliasMap
{

    private final Map aliasMap = new ConcurrentHashMap();

    public AdUnitAliasMap()
    {
    }

    public void add(com.heyzap.internal.Constants.AdUnit adunit, com.heyzap.internal.Constants.AdUnit adunit1)
    {
        aliasMap.put(adunit, adunit1);
    }

    public Set getAliases(com.heyzap.internal.Constants.AdUnit adunit)
    {
        HashSet hashset = new HashSet();
        hashset.add(adunit);
        Iterator iterator = aliasMap.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((com.heyzap.internal.Constants.AdUnit)entry.getValue()).equals(adunit))
            {
                hashset.add(entry.getKey());
            }
        } while (true);
        return hashset;
    }

    public com.heyzap.internal.Constants.AdUnit translate(com.heyzap.internal.Constants.AdUnit adunit)
    {
        com.heyzap.internal.Constants.AdUnit adunit1 = (com.heyzap.internal.Constants.AdUnit)aliasMap.get(adunit);
        if (adunit1 == null)
        {
            return adunit;
        } else
        {
            return adunit1;
        }
    }

    public Set translate(Collection collection)
    {
        HashSet hashset = new HashSet();
        for (collection = collection.iterator(); collection.hasNext(); hashset.add(translate((com.heyzap.internal.Constants.AdUnit)collection.next()))) { }
        return hashset;
    }
}
