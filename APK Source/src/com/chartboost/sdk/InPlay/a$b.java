// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import java.util.LinkedHashMap;

// Referenced classes of package com.chartboost.sdk.InPlay:
//            a, CBInPlay

private class <init>
    implements com.chartboost.sdk.impl.b
{

    protected boolean a;
    protected String b;
    protected CBInPlay c;
    final a d;

    public void a(Bitmap bitmap)
    {
        com.chartboost.sdk.InPlay.a.c().put(b, bitmap);
        com.chartboost.sdk.InPlay.a.a(d, c, b, a);
    }

    public volatile void a(Object obj)
    {
        a((Bitmap)obj);
    }

    private Play(a a1)
    {
        d = a1;
        super();
    }

    d(a a1, d d1)
    {
        this(a1);
    }
}
