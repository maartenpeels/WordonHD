// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.house.view.InterstitialWebView;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapInterstitialActivity

private class <init>
    implements com.heyzap.house.abstr.t>
{

    final HeyzapInterstitialActivity this$0;

    public void click()
    {
        onClick();
    }

    public void clickUrl(String s, String s1)
    {
        onClick(s, s1);
    }

    public void completed()
    {
    }

    public void error()
    {
    }

    public void hide()
    {
        HeyzapInterstitialActivity.access$100(HeyzapInterstitialActivity.this).clear();
        onHide();
    }

    public void installHeyzap()
    {
    }

    public void restart()
    {
    }

    public void show()
    {
        onShow();
    }

    private I()
    {
        this$0 = HeyzapInterstitialActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
