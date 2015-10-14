// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.text.TextUtils;
import android.view.View;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.d;

// Referenced classes of package com.chartboost.sdk.impl:
//            ax, bc

class b
    implements android.view.ickListener
{

    final com.chartboost.sdk.Libraries. a;
    final int b;
    final b c;

    public void onClick(View view)
    {
label0:
        {
            String s = a.("deep-link");
            if (!TextUtils.isEmpty(s))
            {
                view = s;
                if (com.chartboost.sdk.impl.bc.a(s))
                {
                    break label0;
                }
            }
            view = a.("link");
        }
        if (c.c.c.a(view, a))
        {
            com.chartboost.sdk.Tracking.a.a(ax.n(c.c.c).q().e(), a.("location"), a.("ad_id"), b);
        }
    }

    ( , com.chartboost.sdk.Libraries. 1, int i)
    {
        c = ;
        a = 1;
        b = i;
        super();
    }
}
