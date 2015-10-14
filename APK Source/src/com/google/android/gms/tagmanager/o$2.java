// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.gl;

// Referenced classes of package com.google.android.gms.tagmanager:
//            o, Container

class Xk
    implements Xk
{

    final o Xj;
    final boolean Xk;

    public boolean b(Container container)
    {
        if (Xk)
        {
            return container.getLastRefreshTime() + 0x2932e00L >= o.a(Xj).currentTimeMillis();
        }
        return !container.isDefault();
    }

    ainer(o o1, boolean flag)
    {
        Xj = o1;
        Xk = flag;
        super();
    }
}
