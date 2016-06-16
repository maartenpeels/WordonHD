// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.push;

import android.content.Context;
import android.content.Intent;
import c.m.x.a.ep.p;
import com.google.android.gcm.GCMBaseIntentService;

public class GCMIntentService extends GCMBaseIntentService
{

    public GCMIntentService()
    {
    }

    protected final void a()
    {
        p.f();
    }

    protected final void a(Context context, Intent intent)
    {
        p.b(context, intent);
    }

    protected final void a(String s)
    {
        p.b(s);
    }

    protected final String[] a(Context context)
    {
        return p.a(context);
    }

    protected final void b(String s)
    {
        p.c(s);
    }
}
