// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import android.util.Log;
import c.m.x.a.iab.u;
import com.adobe.fre.FREContext;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            i, d, f, e, 
//            g, h, b, c

public final class a extends FREContext
{

    private i a;

    public a()
    {
    }

    public static void a()
    {
        Log.d("[IABExtension]", "IAB.init");
    }

    public final void a(String s)
    {
        if (a != null)
        {
            Log.d("[IABExtension]", "Billing already initalized.");
            return;
        } else
        {
            Log.d("[IABExtension]", "Start Service Connection..");
            a = new i(getActivity(), new u(this));
            a.a(s);
            a.b();
            return;
        }
    }

    public final void a(String s, int j)
    {
        if (a == null)
        {
            return;
        } else
        {
            a.a(s, j);
            return;
        }
    }

    public final void a(String s, String s1, String s2, int j)
    {
        if (a == null)
        {
            return;
        } else
        {
            a.a(s, s1, s2, j);
            return;
        }
    }

    public final void a(boolean flag, String s, int j)
    {
        if (a == null)
        {
            return;
        } else
        {
            Log.d("[IABExtension]", (new StringBuilder("Inventory Sku request '")).append(s).append("'").toString());
            s = Arrays.asList(s.split(","));
            a.a(flag, s, j);
            return;
        }
    }

    public final void b()
    {
        if (a != null)
        {
            a.c();
            a = null;
        }
    }

    public final boolean c()
    {
        if (a == null)
        {
            return false;
        } else
        {
            return a.a();
        }
    }

    public final void dispose()
    {
        Log.d("[IABExtension]", "context disposal");
        b();
    }

    public final Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("ffiInitIAB", new d(this, (byte)0));
        hashmap.put("ffiPurchaseItem", new f(this, (byte)0));
        hashmap.put("ffiLoadInventory", new e(this, (byte)0));
        hashmap.put("ffiShutdown", new g(this, (byte)0));
        hashmap.put("ffiStartBillingService", new h(this, (byte)0));
        hashmap.put("ffiAreSubscriptionsSupported", new b(this, (byte)0));
        hashmap.put("ffiConsumeItem", new c(this, (byte)0));
        return hashmap;
    }
}
