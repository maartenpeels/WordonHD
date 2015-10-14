// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tapjoy.mraid.view.MraidView;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TapjoyUtil

class val.json
    implements Runnable
{

    final TJAdUnitJSBridge this$0;
    final JSONObject val$json;

    public void run()
    {
        String s = null;
        String s1 = val$json.getString("html");
        s = s1;
_L2:
        if (TJAdUnitJSBridge.access$200(TJAdUnitJSBridge.this) != null && TJAdUnitJSBridge.access$200(TJAdUnitJSBridge.this).getParent() != null)
        {
            ((ViewGroup)TJAdUnitJSBridge.access$200(TJAdUnitJSBridge.this).getParent()).removeView(TJAdUnitJSBridge.access$200(TJAdUnitJSBridge.this));
        }
        MraidView mraidview = new MraidView(TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this));
        TJAdUnitJSBridge.access$400(TJAdUnitJSBridge.this).getSettings().setJavaScriptEnabled(true);
        mraidview.setPlacementType(com.tapjoy.mraid.view._TYPE.INLINE);
        mraidview.setLayoutParams(new android.view.ams(640, 100));
        mraidview.setInitialScale(100);
        mraidview.setBackgroundColor(0);
        mraidview.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
        int i = ((WindowManager)((Activity)TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this)).getSystemService("window")).getDefaultDisplay().getWidth();
        TJAdUnitJSBridge.access$202(TJAdUnitJSBridge.this, TapjoyUtil.scaleDisplayAd(mraidview, i));
        ((Activity)TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this)).addContentView(TJAdUnitJSBridge.access$200(TJAdUnitJSBridge.this), new android.view.ams(i, (int)(100D * ((double)i / 640D))));
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    arams()
    {
        this$0 = final_tjadunitjsbridge;
        val$json = JSONObject.this;
        super();
    }
}
