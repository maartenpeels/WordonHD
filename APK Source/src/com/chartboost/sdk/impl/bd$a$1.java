// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.chartboost.sdk.impl:
//            bd

class a
    implements Runnable
{

    final com.chartboost.sdk.Libraries.map a;
    final p b;

    public void run()
    {
        if (a(b) != null)
        {
            ImageView imageview = (ImageView)b(b).get();
            a a1 = bd.a(imageview);
            if (a != null && b == a1)
            {
                imageview.setImageBitmap(a.map());
            }
        }
        if (p(b) != null)
        {
            b(b).b(a, a(b));
        }
    }

    a(a a1, com.chartboost.sdk.Libraries. )
    {
        b = a1;
        a = ;
        super();
    }
}
