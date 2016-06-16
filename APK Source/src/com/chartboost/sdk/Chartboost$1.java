// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static final class c
    implements Runnable
{

    final Activity a;
    final String b;
    final String c;

    public void run()
    {
        Chartboost.a(new Chartboost(a, b, c, null));
    }

    (Activity activity, String s, String s1)
    {
        a = activity;
        b = s;
        c = s1;
        super();
    }
}
