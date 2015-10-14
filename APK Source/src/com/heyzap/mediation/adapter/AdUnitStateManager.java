// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.heyzap.mediation.adapter:
//            AdUnitAliasMap

public class AdUnitStateManager
{

    private AdUnitAliasMap aliasMap;
    private Set startedUnits;

    public AdUnitStateManager()
    {
        aliasMap = new AdUnitAliasMap();
        startedUnits = Collections.synchronizedSet(EnumSet.noneOf(com/heyzap/internal/Constants$AdUnit));
    }

    public boolean allStarted(Collection collection)
    {
        for (collection = collection.iterator(); collection.hasNext();)
        {
            com.heyzap.internal.Constants.AdUnit adunit = (com.heyzap.internal.Constants.AdUnit)collection.next();
            if (!isStarted(aliasMap.translate(adunit)))
            {
                return false;
            }
        }

        return true;
    }

    public boolean isStarted(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return startedUnits.contains(aliasMap.translate(adunit));
    }

    public void setAliasMap(AdUnitAliasMap adunitaliasmap)
    {
        aliasMap = adunitaliasmap;
    }

    public Set start(Collection collection)
    {
        HashSet hashset = new HashSet();
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                break;
            }
            com.heyzap.internal.Constants.AdUnit adunit = (com.heyzap.internal.Constants.AdUnit)collection.next();
            adunit = aliasMap.translate(adunit);
            if (startedUnits.add(adunit))
            {
                hashset.add(adunit);
            }
        } while (true);
        return hashset;
    }
}
