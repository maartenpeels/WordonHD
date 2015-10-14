// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh

class cg extends aj
{

    private static final String ID;
    private static final String YZ;
    private static final String Za;
    private static final String Zb;
    private static final String Zc;

    public cg()
    {
        super(ID, new String[] {
            YZ, Za
        });
    }

    public boolean jX()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a x(Map map)
    {
        com.google.android.gms.internal.d.a a1;
        com.google.android.gms.internal.d.a a2;
        int i;
        int j;
        a2 = (com.google.android.gms.internal.d.a)map.get(YZ);
        a1 = (com.google.android.gms.internal.d.a)map.get(Za);
        if (a2 == null || a2 == dh.lT() || a1 == null || a1 == dh.lT())
        {
            return dh.lT();
        }
        i = 64;
        if (dh.n((com.google.android.gms.internal.d.a)map.get(Zb)).booleanValue())
        {
            i = 0x40 | 2;
        }
        map = (com.google.android.gms.internal.d.a)map.get(Zc);
        if (map != null)
        {
            map = dh.l(map);
            if (map == dh.lO())
            {
                return dh.lT();
            }
            int k = map.intValue();
            j = k;
            if (k < 0)
            {
                return dh.lT();
            }
        } else
        {
            j = 1;
        }
        map = dh.j(a2);
        map = Pattern.compile(dh.j(a1), i).matcher(map);
        if (!map.find() || map.groupCount() < j) goto _L2; else goto _L1
_L1:
        map = map.group(j);
_L4:
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_188;
        }
        return dh.lT();
        map = dh.r(map);
        return map;
        map;
        return dh.lT();
_L2:
        map = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        ID = a.ae.toString();
        YZ = b.bi.toString();
        Za = b.bj.toString();
        Zb = b.cF.toString();
        Zc = b.cz.toString();
    }
}
