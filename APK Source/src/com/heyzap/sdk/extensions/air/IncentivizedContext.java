// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;

import com.heyzap.sdk.extensions.air.functions.FetchIncentivizedAdFunction;
import com.heyzap.sdk.extensions.air.functions.IncentivizedAdAvailableFunction;
import com.heyzap.sdk.extensions.air.functions.IncentivizedAdSetUserIdentifierFunction;
import com.heyzap.sdk.extensions.air.functions.ShowIncentivizedAdFunction;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtensionContext

public class IncentivizedContext extends HeyzapExtensionContext
{

    public static final String TYPE = "incentivized";

    public IncentivizedContext(String s)
    {
        super(s);
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("show", new ShowIncentivizedAdFunction());
        hashmap.put("fetch", new FetchIncentivizedAdFunction());
        hashmap.put("available", new IncentivizedAdAvailableFunction());
        hashmap.put("setUserIdentifier", new IncentivizedAdSetUserIdentifierFunction());
        return hashmap;
    }
}
