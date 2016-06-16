// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.chartboost.sdk.impl:
//            bd

static class init> extends BitmapDrawable
{

    private final WeakReference a;

    public mapDrawable a()
    {
        return (mapDrawable)a.get();
    }

    public mapDrawable(mapDrawable mapdrawable)
    {
        a = new WeakReference(mapdrawable);
    }
}
