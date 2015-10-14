// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;

// Referenced classes of package com.chartboost.sdk.impl:
//            bi

public final class bj extends View
{

    private boolean a;

    public bj(Context context)
    {
        super(context);
        a = false;
        setFocusable(false);
        setBackgroundColor(0xaa000000);
    }

    public void a()
    {
        if (!a)
        {
            bi.a(true, this);
            a = true;
        }
    }
}
