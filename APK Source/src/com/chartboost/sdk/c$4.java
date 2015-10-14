// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


// Referenced classes of package com.chartboost.sdk:
//            c

static class ror
{

    static final int a[];

    static 
    {
        a = new int[com.chartboost.sdk.Model.values().length];
        try
        {
            a[com.chartboost.sdk.Model.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.chartboost.sdk.Model.d.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.chartboost.sdk.Model.b.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.chartboost.sdk.Model.c.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
