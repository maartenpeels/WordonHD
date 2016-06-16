// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.internal.fq;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.fs;

public final class SignInButton extends FrameLayout
    implements android.view.View.OnClickListener
{

    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int Av;
    private View Aw;
    private android.view.View.OnClickListener Ax;
    private int mSize;

    public SignInButton(Context context)
    {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SignInButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        Ax = null;
        setStyle(0, 0);
    }

    private static Button a(Context context, int i, int j)
    {
        fs fs1 = new fs(context);
        fs1.a(context.getResources(), i, j);
        return fs1;
    }

    private void v(Context context)
    {
        if (Aw != null)
        {
            removeView(Aw);
        }
        try
        {
            Aw = fr.b(context, mSize, Av);
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            Aw = a(context, mSize, Av);
        }
        addView(Aw);
        Aw.setEnabled(isEnabled());
        Aw.setOnClickListener(this);
    }

    public void onClick(View view)
    {
        if (Ax != null && view == Aw)
        {
            Ax.onClick(this);
        }
    }

    public void setColorScheme(int i)
    {
        setStyle(mSize, i);
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        Aw.setEnabled(flag);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        Ax = onclicklistener;
        if (Aw != null)
        {
            Aw.setOnClickListener(this);
        }
    }

    public void setSize(int i)
    {
        setStyle(i, Av);
    }

    public void setStyle(int i, int j)
    {
        boolean flag;
        if (i >= 0 && i < 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        fq.a(flag, (new StringBuilder()).append("Unknown button size ").append(i).toString());
        if (j >= 0 && j < 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        fq.a(flag, (new StringBuilder()).append("Unknown color scheme ").append(j).toString());
        mSize = i;
        Av = j;
        v(getContext());
    }
}
