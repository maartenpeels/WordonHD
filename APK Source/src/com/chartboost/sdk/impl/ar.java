// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.f;

// Referenced classes of package com.chartboost.sdk.impl:
//            aq, bd, ax

public class ar extends aq
{

    private ImageView a;

    public ar(ax ax, Context context)
    {
        super(context);
        a = new ImageView(context);
        addView(a, new android.widget.LinearLayout.LayoutParams(-1, -1));
    }

    public int a()
    {
        return CBUtility.a(110, getContext());
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1, int i)
    {
        boolean flag = CBUtility.c().b();
        com.chartboost.sdk.Libraries.e.a a2 = a1.a("assets");
        if (flag)
        {
            a1 = "portrait";
        } else
        {
            a1 = "landscape";
        }
        a2 = a2.a(a1);
        if (a2.c())
        {
            Bundle bundle = new Bundle();
            bundle.putInt("index", i);
            if (a2.e("checksum") != null && !a2.e("checksum").isEmpty())
            {
                a1 = a2.e("checksum");
            } else
            {
                a1 = "";
            }
            bd.a().a(a2.e("url"), a1, null, a, bundle);
        }
    }
}
