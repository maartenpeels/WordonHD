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

class val.adUrl
    implements Runnable
{

    final ClickHandler this$0;
    final String val$adUrl;
    final WebView val$webView;

    public void run()
    {
        if (!ClickHandler.access$200(ClickHandler.this).get())
        {
            Manager.handler.post(new Runnable() {

                final ClickHandler._cls4 this$1;

                public void run()
                {
                    webView.loadUrl(adUrl);
                }

            
            {
                this$1 = ClickHandler._cls4.this;
                super();
            }
            });
        }
    }

    _cls1.this._cls1()
    {
        this$0 = final_clickhandler;
        val$webView = webview;
        val$adUrl = String.this;
        super();
    }
}
