// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebView;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

private class setBackgroundColor extends WebView
{

    final InterstitialWebView this$0;

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return InterstitialWebView.this.onKeyDown(i, keyevent);
    }

    public (Context context)
    {
        this$0 = InterstitialWebView.this;
        super(context.getApplicationContext());
        setBackgroundColor(0);
    }
}
