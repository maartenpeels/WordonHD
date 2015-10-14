// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.view.SurfaceHolder;

// Referenced classes of package com.chartboost.sdk.impl:
//            bf

class a
    implements android.view.ceHolder.Callback
{

    final bf a;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        bf.f(a, j);
        bf.g(a, k);
        if (bf.h(a) == 3)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (bf.a(a) == j && bf.b(a) == k)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (bf.d(a) != null && i != 0 && j != 0)
        {
            if (bf.e(a) != 0)
            {
                a.a(bf.e(a));
            }
            a.a();
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        bf.a(a, surfaceholder);
        bf.m(a);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        bf.a(a, null);
        bf.a(a, true);
    }

    llback(bf bf1)
    {
        a = bf1;
        super();
    }
}
