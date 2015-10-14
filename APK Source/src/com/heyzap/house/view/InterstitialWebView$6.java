// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.heyzap.house.view:
//            InterstitialWebView

class this._cls0
    implements android.view.ebView._cls6
{

    final InterstitialWebView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (InterstitialWebView.access$500(InterstitialWebView.this).booleanValue() && motionevent.getAction() == 0)
        {
            if (InterstitialWebView.access$400(InterstitialWebView.this) != null)
            {
                InterstitialWebView.access$400(InterstitialWebView.this).click();
            }
            return true;
        } else
        {
            return false;
        }
    }

    tionListener()
    {
        this$0 = InterstitialWebView.this;
        super();
    }
}
