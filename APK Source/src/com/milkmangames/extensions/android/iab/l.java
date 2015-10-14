// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import c.m.x.a.iab.m;
import c.m.x.a.iab.p;
import c.m.x.a.iab.r;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            i, n

final class l
    implements m
{

    final int a;
    final i b;

    l(i j, int k)
    {
        b = j;
        a = k;
        super();
    }

    public final void a(p p1, r r)
    {
        if (p1.d())
        {
            r = i.f;
            b.a(r, p1);
            return;
        } else
        {
            i.a(b, r);
            p1 = new JSONObject();
            r = n.a(r);
            n.a(p1, "requestId", Integer.valueOf(a));
            n.a(p1, "purchase", r);
            b.a(i.e, p1.toString());
            return;
        }
    }
}
