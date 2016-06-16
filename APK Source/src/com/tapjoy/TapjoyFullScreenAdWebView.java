// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.Bundle;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView, TapjoyLog, TapjoyConnectCore

public class TapjoyFullScreenAdWebView extends TJAdUnitView
{

    private static final String TAG = "Full Screen Ad";

    public TapjoyFullScreenAdWebView()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        TapjoyLog.i("Full Screen Ad", "TapjoyFullScreenAdWebView onCreate");
        super.onCreate(bundle);
        TapjoyConnectCore.viewDidOpen(1);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (isFinishing())
        {
            TapjoyConnectCore.viewWillClose(1);
            TapjoyConnectCore.viewDidClose(1);
        }
    }
}
