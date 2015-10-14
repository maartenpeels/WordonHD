// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;


// Referenced classes of package com.heyzap.mediation.filters:
//            Matcher, FilterContext

class AdUnitMatcher
    implements Matcher
{

    private com.heyzap.internal.Constants.AdUnit adUnit;

    public AdUnitMatcher(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adUnit = adunit;
    }

    public boolean match(FilterContext filtercontext)
    {
        return filtercontext.adUnit == adUnit;
    }
}
