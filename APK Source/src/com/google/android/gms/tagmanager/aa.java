// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.a;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh

class aa extends aj
{

    private static final String ID;

    public aa()
    {
        super(ID, new String[0]);
    }

    public boolean jX()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a x(Map map)
    {
        String s = Build.MANUFACTURER;
        map = Build.MODEL;
        if (!map.startsWith(s) && !s.equals("unknown"))
        {
            map = (new StringBuilder()).append(s).append(" ").append(map).toString();
        }
        return dh.r(map);
    }

    static 
    {
        ID = a.F.toString();
    }
}
