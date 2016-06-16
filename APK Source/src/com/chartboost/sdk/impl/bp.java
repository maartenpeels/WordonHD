// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.chartboost.sdk.impl:
//            br

public final class bp extends LinearLayout
{

    private TextView a;
    private br b;

    public bp(Context context)
    {
        super(context);
        a(context);
    }

    private void a(Context context)
    {
        setGravity(17);
        a = new TextView(getContext());
        a.setTextColor(-1);
        a.setTextSize(2, 16F);
        a.setTypeface(null, 1);
        a.setText("Loading...");
        a.setGravity(17);
        b = new br(getContext());
        addView(a);
        addView(b);
        a();
    }

    public void a()
    {
        removeView(a);
        removeView(b);
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = Math.round(20F * f);
        setOrientation(1);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(i, i, i, 0);
        addView(a, layoutparams);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, Math.round(f * 32F));
        layoutparams.setMargins(i, i, i, i);
        addView(b, layoutparams);
    }
}
