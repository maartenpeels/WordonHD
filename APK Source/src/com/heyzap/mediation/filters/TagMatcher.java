// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import java.util.Collection;

// Referenced classes of package com.heyzap.mediation.filters:
//            Matcher, FilterContext

class TagMatcher
    implements Matcher
{

    private final Collection tags;

    public TagMatcher(Collection collection)
    {
        tags = collection;
    }

    public boolean match(FilterContext filtercontext)
    {
        return tags.contains(filtercontext.tag);
    }
}
