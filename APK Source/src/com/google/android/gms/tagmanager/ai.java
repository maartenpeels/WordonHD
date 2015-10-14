// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            dh, DataLayer, bh

class ai
{

    private static void a(DataLayer datalayer, com.google.android.gms.internal.c.d d)
    {
        d = d.eS;
        int j = d.length;
        for (int i = 0; i < j; i++)
        {
            datalayer.bv(dh.j(d[i]));
        }

    }

    public static void a(DataLayer datalayer, com.google.android.gms.internal.c.i i)
    {
        if (i.fI == null)
        {
            bh.z("supplemental missing experimentSupplemental");
            return;
        } else
        {
            a(datalayer, i.fI);
            b(datalayer, i.fI);
            c(datalayer, i.fI);
            return;
        }
    }

    private static void b(DataLayer datalayer, com.google.android.gms.internal.c.d d)
    {
        d = d.eR;
        int j = d.length;
        for (int i = 0; i < j; i++)
        {
            Map map = c(d[i]);
            if (map != null)
            {
                datalayer.push(map);
            }
        }

    }

    private static Map c(com.google.android.gms.internal.d.a a1)
    {
        a1 = ((com.google.android.gms.internal.d.a) (dh.o(a1)));
        if (!(a1 instanceof Map))
        {
            bh.z((new StringBuilder()).append("value: ").append(a1).append(" is not a map value, ignored.").toString());
            return null;
        } else
        {
            return (Map)a1;
        }
    }

    private static void c(DataLayer datalayer, com.google.android.gms.internal.c.d d)
    {
        com.google.android.gms.internal.c.c ac[];
        int i;
        int j;
        ac = d.eT;
        j = ac.length;
        i = 0;
_L5:
        if (i >= j) goto _L2; else goto _L1
_L1:
        com.google.android.gms.internal.c.c c1 = ac[i];
        if (c1.eM != null) goto _L4; else goto _L3
_L3:
        bh.z("GaExperimentRandom: No key");
_L8:
        i++;
          goto _L5
_L4:
        Object obj;
        obj = datalayer.get(c1.eM);
        double d1;
        double d2;
        long l;
        long l1;
        if (!(obj instanceof Number))
        {
            d = null;
        } else
        {
            d = Long.valueOf(((Number)obj).longValue());
        }
        l = c1.eN;
        l1 = c1.eO;
        if (c1.eP && d != null && d.longValue() >= l && d.longValue() <= l1)
        {
            break MISSING_BLOCK_LABEL_307;
        }
        if (l > l1) goto _L7; else goto _L6
_L6:
        d1 = Math.random();
        d2 = l1 - l;
        d = Long.valueOf(Math.round((double)l + d2 * d1));
_L9:
        datalayer.bv(c1.eM);
        d = datalayer.c(c1.eM, d);
        if (c1.eQ > 0L)
        {
            if (!d.containsKey("gtm"))
            {
                d.put("gtm", DataLayer.mapOf(new Object[] {
                    "lifetime", Long.valueOf(c1.eQ)
                }));
            } else
            {
                obj = d.get("gtm");
                if (obj instanceof Map)
                {
                    ((Map)obj).put("lifetime", Long.valueOf(c1.eQ));
                } else
                {
                    bh.z("GaExperimentRandom: gtm not a map");
                }
            }
        }
        datalayer.push(d);
          goto _L8
_L7:
        bh.z("GaExperimentRandom: random range invalid");
          goto _L8
_L2:
        return;
        d = ((com.google.android.gms.internal.c.d) (obj));
          goto _L9
    }
}
