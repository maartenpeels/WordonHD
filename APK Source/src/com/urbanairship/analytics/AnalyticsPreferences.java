// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Preferences;
import com.urbanairship.UAirship;

class AnalyticsPreferences extends Preferences
{

    AnalyticsPreferences()
    {
        super(UAirship.a().g());
        a("com.urbanairship.analytics");
    }

    private static int a(int i, int j, int k)
    {
        if (i > j)
        {
            return j;
        }
        if (i < k)
        {
            return k;
        } else
        {
            return i;
        }
    }

    final int a()
    {
        return a("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", 0x500000);
    }

    final void a(int i)
    {
        a("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", Integer.valueOf(a(i, 0x500000, 10240)));
    }

    final void a(long l)
    {
        a("com.urbanairship.analytics.LAST_SEND", Long.valueOf(l));
    }

    final int b()
    {
        return a("com.urbanairship.analytics.MAX_BATCH_SIZE", 0x7d000);
    }

    final void b(int i)
    {
        a("com.urbanairship.analytics.MAX_BATCH_SIZE", Integer.valueOf(a(i, 0x7d000, 1024)));
    }

    final int c()
    {
        return a("com.urbanairship.analytics.MAX_WAIT", 0x48190800);
    }

    final void c(int i)
    {
        a("com.urbanairship.analytics.MAX_WAIT", Integer.valueOf(a(i, 0x48190800, 0x240c8400)));
    }

    final int d()
    {
        return a("com.urbanairship.analytics.MIN_BATCH_INTERVAL", 60000);
    }

    final void d(int i)
    {
        a("com.urbanairship.analytics.MIN_BATCH_INTERVAL", Integer.valueOf(a(i, 0x240c8400, 60000)));
    }

    final long e()
    {
        return a("com.urbanairship.analytics.LAST_SEND", 0L);
    }
}
