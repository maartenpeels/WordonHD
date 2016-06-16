// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.webkit.WebChromeClient;
import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class this._cls0 extends WebChromeClient
{

    final InterstitialWebView this$0;

    public void onConsoleMessage(String s, int i, String s1)
    {
        Logger.log(new Object[] {
            "Console Message", s, Integer.valueOf(i), s1
        });
    }

    ()
    {
        this$0 = InterstitialWebView.this;
        super();
    }
}
