// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.media.MediaPlayer;
import android.view.View;
import android.widget.Button;
import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            as, bh, ax, bi

public class at extends as
{

    private ax a;
    private Button b;
    private bh c;
    private com.chartboost.sdk.Libraries.e.a d;

    public at(ax ax1, Context context)
    {
        super(ax1, context);
        a = ax1;
        b = new Button(context);
        b.setTextColor(0xff21a7e7);
        b.setText("Preview");
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final at a;

            public void onClick(View view)
            {
                at.a(a);
            }

            
            {
                a = at.this;
                super();
            }
        });
        addView(b, 2);
    }

    static void a(at at1)
    {
        at1.c();
    }

    static bh b(at at1)
    {
        return at1.c;
    }

    private void c()
    {
        CBLogging.c(this, "play the video");
        if (c == null)
        {
            c = new bh(getContext());
            a.e().addView(c, new android.widget.RelativeLayout.LayoutParams(-1, -1));
            c.setVisibility(8);
        }
        c.b().a(new android.media.MediaPlayer.OnCompletionListener() {

            final at a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                bi.a(false, at.b(a));
            }

            
            {
                a = at.this;
                super();
            }
        });
        bi.a(true, c);
        c.b().a();
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1, int i)
    {
        super.a(a1, i);
        d = a1;
    }
}
