// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        Chartboost.c(a);
    }

    (Activity activity)
    {
        a = activity;
        super();
    }
}
