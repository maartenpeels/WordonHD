// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.app.Activity;
import android.content.Context;
import com.chartboost.sdk.b;
import java.lang.ref.WeakReference;

public final class k extends WeakReference
{

    private static k b;
    private int a;

    private k(Activity activity)
    {
        super(activity);
        a = activity.hashCode();
    }

    public static k a(Activity activity)
    {
        if (b == null || b.a != activity.hashCode())
        {
            b = new k(activity);
        }
        return b;
    }

    public int a()
    {
        return a;
    }

    public boolean a(k k1)
    {
        if (k1 == null)
        {
            return false;
        }
        return k1.a() == a;
    }

    public Context b()
    {
        Context context = (Context)get();
        if (context == null)
        {
            return com.chartboost.sdk.b.l();
        } else
        {
            return context;
        }
    }

    public boolean b(Activity activity)
    {
        if (activity == null)
        {
            return false;
        }
        return activity.hashCode() == a;
    }

    public int hashCode()
    {
        return a();
    }
}
