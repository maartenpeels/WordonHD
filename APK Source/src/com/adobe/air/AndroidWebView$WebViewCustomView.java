// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

// Referenced classes of package com.adobe.air:
//            AndroidWebView, AndroidActivityWrapper

public class this._cls0
{

    private android.webkit.k mCallback;
    private FrameLayout mCustomViewHolder;
    final AndroidWebView this$0;

    public void onHideCustomView()
    {
        if (mCallback == null)
        {
            return;
        }
        AndroidActivityWrapper.GetAndroidActivityWrapper().getView().setVisibility(0);
        android.widget.RelativeLayout relativelayout = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
        if (relativelayout != null)
        {
            relativelayout.setVisibility(0);
        }
        ((ViewGroup)mCustomViewHolder.getParent()).removeView(mCustomViewHolder);
        mCustomViewHolder = null;
        mCallback.onCustomViewHidden();
        mCallback = null;
    }

    public void onShowCustomView(View view, android.webkit.k k)
    {
        if (mCallback != null)
        {
            k.onCustomViewHidden();
            return;
        }
        mCallback = k;
        k = AndroidActivityWrapper.GetAndroidActivityWrapper().getView();
        k.setVisibility(8);
        Object obj = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
        if (obj != null)
        {
            ((View) (obj)).setVisibility(8);
        }
        mCustomViewHolder = new FrameLayout(AndroidWebView.access$000(AndroidWebView.this)) {

            final AndroidWebView.WebViewCustomView this$1;

            public boolean dispatchKeyEvent(KeyEvent keyevent)
            {
                if (super.dispatchKeyEvent(keyevent))
                {
                    return true;
                }
                if (keyevent.getAction() == 0 && keyevent.getKeyCode() == 4)
                {
                    onHideCustomView();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$1 = AndroidWebView.WebViewCustomView.this;
                super(context);
            }
        };
        mCustomViewHolder.setBackgroundColor(0xff000000);
        obj = new android.widget.CustomViewHolder(-1, -1);
        ((ViewGroup)k.getParent()).addView(mCustomViewHolder, ((android.view..mCustomViewHolder) (obj)));
        k = new android.widget.CustomViewHolder(-1, -1, 17);
        mCustomViewHolder.addView(view, k);
        mCustomViewHolder.bringToFront();
        mCustomViewHolder.requestFocus();
    }

    public _cls1.this._cls1()
    {
        this$0 = AndroidWebView.this;
        super();
    }
}
