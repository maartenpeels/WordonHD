// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import c.m.x.a.iab.k;
import c.m.x.a.iab.p;
import c.m.x.a.iab.r;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            i, n

final class m
    implements k
{

    final int a;
    final String b;
    final i c;

    m(i j, int l, String s)
    {
        c = j;
        a = l;
        b = s;
        super();
    }

    public final void a(r r, p p1)
    {
        if (p1.d())
        {
            c.a(i.h, p1);
            return;
        } else
        {
            p1 = new JSONObject();
            r = n.a(r);
            n.a(p1, "requestId", Integer.valueOf(a));
            n.a(p1, "sku", b);
            n.a(p1, "purchase", r);
            c.a(i.g, p1.toString());
            return;
        }
    }
}
