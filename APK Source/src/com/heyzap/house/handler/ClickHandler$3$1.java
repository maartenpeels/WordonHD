// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.os.Handler;
import android.webkit.WebView;
import com.heyzap.house.Manager;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.heyzap.house.handler:
//            ClickHandler

class this._cls1
    implements Runnable
{

    final l.adUrl this$1;

    public void run()
    {
        webView.loadUrl(adUrl);
    }

    l.adUrl()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/house/handler/ClickHandler$3

/* anonymous class */
    class ClickHandler._cls3
        implements Runnable
    {

        final ClickHandler this$0;
        final String val$adUrl;
        final WebView val$webView;

        public void run()
        {
            if (!ClickHandler.access$200(ClickHandler.this).get())
            {
                Manager.handler.post(new ClickHandler._cls3._cls1());
            }
        }

            
            {
                this$0 = final_clickhandler;
                webView = webview;
                adUrl = String.this;
                super();
            }
    }

}
