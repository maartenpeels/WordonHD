// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import c.m.x.a.iab.d;
import c.m.x.a.iab.p;
import c.m.x.a.iab.r;
import c.m.x.a.iab.x;
import c.m.x.a.iab.y;
import c.m.x.a.iab.z;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            j, m, l, k

public final class i extends x
    implements y
{

    public static String a = "BILLING_CONNECTION_FAILED";
    public static String b = "BILLING_CONNECTION_READY";
    public static String c = "LOAD_INVENTORY_FAILED";
    public static String d = "INVENTORY_LOADED";
    public static String e = "PURCHASE_SUCCEEDED";
    public static String f = "PURCHASE_FAILED";
    public static String g = "CONSUME_SUCCEEDED";
    public static String h = "CONSUME_FAILED";
    public static int i = 0x1d4d5;
    public static String j = "[MmgBilling2]";
    d k;
    Map l;

    public i(Activity activity, z z1)
    {
        super(activity, z1);
        z1.a(this);
        l = new HashMap();
    }

    static void a(i i1, r r1)
    {
        String s = r1.d();
        if (i1.l.containsKey(s))
        {
            Log.d(j, (new StringBuilder("Updating sku:")).append(s).toString());
        }
        i1.l.put(s, r1);
    }

    public final void a(int i1, int j1, Intent intent)
    {
        k.a(i1, j1, intent);
    }

    public final void a(String s)
    {
        k = new d(m.getApplicationContext(), s);
        k.a(new j(this));
    }

    public final void a(String s, int i1)
    {
        if (l.containsKey(s))
        {
            r r1 = (r)l.get(s);
            s = new m(this, i1, s);
            k.a(r1, s);
            return;
        } else
        {
            a(h, (new StringBuilder("The item '")).append(s).append("' was not previously loaded.").toString(), 4040);
            return;
        }
    }

    final void a(String s, p p1)
    {
        a(s, p1.b(), p1.a());
    }

    public final void a(String s, String s1, String s2, int i1)
    {
        l l1 = new l(this, i1);
        try
        {
            k.a(m, s, s1, i, l1, s2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            a(f, "A purchase is already in progress", 9454);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            a(f, (new StringBuilder("Unable to connect:")).append(s.getMessage()).toString(), 500);
        }
    }

    public final void a(boolean flag, List list, int i1)
    {
        k k1 = new k(this, i1);
        Log.d(j, (new StringBuilder("Query inventory internal on '")).append(list.size()).append("' items, extra:").append(flag).toString());
        k.a(flag, list, k1);
    }

    public final boolean a()
    {
        return k.b();
    }

    public final void b()
    {
        k.a(j);
    }

    public final void c()
    {
        if (k != null)
        {
            k.a();
        }
    }

}
