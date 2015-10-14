// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;


// Referenced classes of package com.heyzap.mediation.filters:
//            Matcher, FilterPolicy

class Filter
{

    public final Matcher matcher;
    public final FilterPolicy policy;

    public Filter(Matcher matcher1, FilterPolicy filterpolicy)
    {
        matcher = matcher1;
        policy = filterpolicy;
    }
}
