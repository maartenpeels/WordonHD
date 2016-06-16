// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.j;

// Referenced classes of package com.chartboost.sdk.impl:
//            an, bk, ai

public final class ak extends an
{

    private LinearLayout b;
    private bk c;
    private TextView d;

    public ak(Context context, ai ai)
    {
        super(context, ai);
    }

    protected View a()
    {
        Context context = getContext();
        int i = Math.round(getContext().getResources().getDisplayMetrics().density * 8F);
        b = new LinearLayout(context);
        b.setOrientation(0);
        b.setGravity(17);
        int j = CBUtility.a(36, context);
        c = new bk(context);
        c.setPadding(i, i, i, i);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(j, j);
        c.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        d = new TextView(context);
        d.setPadding(i / 2, i, i, i);
        d.setTextColor(0xff171515);
        d.setTextSize(2, 16F);
        d.setTypeface(null, 1);
        d.setGravity(17);
        b.addView(c, layoutparams);
        b.addView(d, new android.widget.LinearLayout.LayoutParams(-2, -1));
        return b;
    }

    public void a(j j)
    {
        c.a(j);
        c.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
    }

    public void a(String s)
    {
        d.setText(s);
    }

    protected int b()
    {
        return 48;
    }
}
