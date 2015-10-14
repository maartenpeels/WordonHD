// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            bg, bf

public class bh extends FrameLayout
{
    public static interface a
    {

        public abstract void a();

        public abstract void a(int i);

        public abstract void a(int i, int j);

        public abstract void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener);

        public abstract void a(android.media.MediaPlayer.OnErrorListener onerrorlistener);

        public abstract void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener);

        public abstract void a(Uri uri);

        public abstract void b();

        public abstract int c();

        public abstract int d();

        public abstract boolean e();
    }


    private View a;
    private boolean b;

    public bh(Context context)
    {
        super(context);
        d();
    }

    public static boolean a(Activity activity)
    {
        if (!c())
        {
            break MISSING_BLOCK_LABEL_28;
        }
        if (Chartboost.getImpressionsUseActivities())
        {
            return true;
        }
        boolean flag = activity.getWindow().getDecorView().isHardwareAccelerated();
        return flag;
        activity;
        return false;
    }

    public static boolean c()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    private void d()
    {
        b = c();
        if (!Chartboost.getImpressionsUseActivities() && (getContext() instanceof Activity))
        {
            b = a((Activity)getContext());
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("Choosing ");
        String s;
        if (b)
        {
            s = "texture";
        } else
        {
            s = "surface";
        }
        CBLogging.e("VideoInit", stringbuilder.append(s).append(" solution for video playback").toString());
        if (b)
        {
            a = new bg(getContext());
        } else
        {
            a = new bf(getContext());
        }
        addView(a, new android.widget.FrameLayout.LayoutParams(-1, -1));
        if (!b)
        {
            ((SurfaceView)a).setZOrderMediaOverlay(true);
        }
    }

    public boolean a()
    {
        return b;
    }

    public a b()
    {
        return (a)a;
    }

    public void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        b().a(i, j);
    }
}
