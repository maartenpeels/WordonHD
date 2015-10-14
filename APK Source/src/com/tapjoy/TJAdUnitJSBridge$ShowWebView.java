// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.webkit.WebView;
import android.widget.RelativeLayout;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

private class webView extends AsyncTask
{

    final TJAdUnitJSBridge this$0;
    WebView webView;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Boolean[])aobj);
    }

    protected transient Boolean[] doInBackground(Boolean aboolean[])
    {
        return aboolean;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean[])obj);
    }

    protected void onPostExecute(Boolean aboolean[])
    {
        final boolean visible = aboolean[0].booleanValue();
        final boolean transparent = aboolean[1].booleanValue();
        ((Activity)TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this)).runOnUiThread(new Runnable() {

            final TJAdUnitJSBridge.ShowWebView this$1;
            final boolean val$transparent;
            final boolean val$visible;

            public void run()
            {
                if (!visible) goto _L2; else goto _L1
_L1:
                webView.setVisibility(0);
                if (!transparent) goto _L4; else goto _L3
_L3:
                if (webView.getParent() instanceof RelativeLayout)
                {
                    ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                    ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                }
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    webView.setLayerType(1, null);
                }
_L6:
                return;
_L4:
                if (webView.getParent() instanceof RelativeLayout)
                {
                    ((RelativeLayout)webView.getParent()).getBackground().setAlpha(255);
                    ((RelativeLayout)webView.getParent()).setBackgroundColor(-1);
                }
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    webView.setLayerType(0, null);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L2:
                webView.setVisibility(4);
                if (webView.getParent() instanceof RelativeLayout)
                {
                    ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                    ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                    return;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                this$1 = TJAdUnitJSBridge.ShowWebView.this;
                visible = flag;
                transparent = flag1;
                super();
            }
        });
    }

    public _cls1.val.transparent(WebView webview)
    {
        this$0 = TJAdUnitJSBridge.this;
        super();
        webView = webview;
    }
}
