// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.k;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.bh;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

public final class CBImpressionActivity extends Activity
{

    public CBImpressionActivity()
    {
    }

    public void onBackPressed()
    {
        if (Chartboost.b())
        {
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bh.c())
        {
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        requestWindowFeature(1);
        if (getIntent().getBooleanExtra("paramFullscreen", false))
        {
            getWindow().addFlags(1024);
        }
        getWindow().setWindowAnimations(0);
        setContentView(new RelativeLayout(this));
        Chartboost.a(this);
        Chartboost.createSurfaceView(this);
        bb.d();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Chartboost.b(this);
    }

    protected void onPause()
    {
        super.onPause();
        Chartboost.b(k.a(this));
    }

    protected void onResume()
    {
        super.onResume();
        Chartboost.a(k.a(this));
    }

    protected void onStart()
    {
        super.onStart();
        Chartboost.a();
        Chartboost.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        Chartboost.c(k.a(this));
    }
}
