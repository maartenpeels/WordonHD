// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.view.SurfaceView;
import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        CBLogging.e("VideoInit", "preparing activity for video surface");
        SurfaceView surfaceview = new SurfaceView(a);
        a.addContentView(surfaceview, new android.view.outParams(0, 0));
    }

    ams(Activity activity)
    {
        a = activity;
        super();
    }
}
