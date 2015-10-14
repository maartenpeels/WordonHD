// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;


public class FilterContext
{

    public final com.heyzap.internal.Constants.AdUnit adUnit;
    public final String tag;

    public FilterContext(com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        adUnit = adunit;
        tag = s;
    }
}
