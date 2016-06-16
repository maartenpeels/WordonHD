// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.view.View;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk:
//            f

class 
    implements Runnable
{

    final boolean a;
    final View b;
    final f c;

    public void run()
    {
        if (!a)
        {
            b.setVisibility(8);
            b.setClickable(false);
        }
        c.h.remove(Integer.valueOf(b.hashCode()));
    }

    (f f1, boolean flag, View view)
    {
        c = f1;
        a = flag;
        b = view;
        super();
    }
}
