// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh

class bz extends aj
{

    private static final String ID;

    public bz()
    {
        super(ID, new String[0]);
    }

    public boolean jX()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a x(Map map)
    {
        return dh.r(android.os.Build.VERSION.RELEASE);
    }

    static 
    {
        ID = a.M.toString();
    }
}
