// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.AutoCompleteTextView;

// Referenced classes of package com.adobe.air:
//            AndroidWebView, AIRWindowSurfaceView

public class mLastFocusDirection extends WebView
{

    private int mLastFocusDirection;
    private View m_focusedChildView;
    private boolean m_hasFocus;
    private boolean m_inRequestChildFocus;
    final AndroidWebView this$0;

    private void dispatchFocusEvent(boolean flag, int i)
    {
        if (m_hasFocus != flag)
        {
            m_hasFocus = flag;
            AndroidWebView androidwebview = AndroidWebView.this;
            if (AndroidWebView.access$200(androidwebview) != 0L)
            {
                if (AndroidWebView.access$300(AndroidWebView.this) != null)
                {
                    AndroidWebView.access$300(AndroidWebView.this).updateFocusedStageWebView(androidwebview, m_hasFocus);
                }
                if ((i & 2) == 2)
                {
                    i = 3;
                } else
                if ((i & 1) == 1)
                {
                    i = 2;
                } else
                {
                    i = 1;
                }
                if (flag)
                {
                    AndroidWebView.access$400(androidwebview, AndroidWebView.access$200(AndroidWebView.this), i);
                    return;
                } else
                {
                    AndroidWebView.access$500(androidwebview, AndroidWebView.access$200(AndroidWebView.this), i);
                    return;
                }
            }
        }
    }

    private void setRealFocus(boolean flag)
    {
        super.onFocusChanged(flag, 0, new Rect());
        invalidate();
        dispatchFocusEvent(flag, 0);
    }

    public void clearChildFocus(View view)
    {
        m_inRequestChildFocus = true;
        super.clearChildFocus(view);
        m_inRequestChildFocus = false;
        return;
        view;
        m_inRequestChildFocus = false;
        throw view;
    }

    public void clearFocus()
    {
        if (m_focusedChildView != null)
        {
            m_focusedChildView.clearFocus();
            if (android/widget/AutoCompleteTextView.isInstance(m_focusedChildView))
            {
                AndroidWebView.access$100(AndroidWebView.this).removeView(m_focusedChildView);
            }
            m_focusedChildView = null;
            setRealFocus(false);
            return;
        } else
        {
            super.clearFocus();
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag1 = super.dispatchKeyEvent(keyevent);
        if (flag1 || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        int i = 0;
        if (keyevent.getKeyCode() != 19) goto _L4; else goto _L3
_L3:
        i = 33;
_L9:
        if (i == 0) goto _L2; else goto _L5
_L5:
        boolean flag;
        keyevent = AndroidWebView.this;
        mLastFocusDirection = i;
        keyevent.setStageFocus(i);
        flag = true;
_L7:
        return flag;
_L4:
        if (keyevent.getKeyCode() == 20)
        {
            i = 130;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        flag = flag1;
        if (flag1) goto _L7; else goto _L6
_L6:
        return AndroidWebView.access$300(AndroidWebView.this).dispatchKeyEvent(keyevent);
        if (true) goto _L9; else goto _L8
_L8:
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (!m_hasFocus)
        {
            requestFocus();
        }
        return super.dispatchTouchEvent(motionevent);
    }

    public boolean isInTextEditingMode()
    {
        return m_hasFocus && (m_focusedChildView != null || getChildCount() != 0);
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        if (m_inRequestChildFocus && m_focusedChildView != null && m_hasFocus)
        {
            return;
        }
        if (i == 0)
        {
            i = mLastFocusDirection;
        }
        mLastFocusDirection = 0;
        dispatchFocusEvent(flag, i);
    }

    public void requestChildFocus(View view, View view1)
    {
        m_inRequestChildFocus = true;
        if (!m_hasFocus)
        {
            setRealFocus(true);
        }
        m_focusedChildView = view;
        super.requestChildFocus(view, view1);
        m_inRequestChildFocus = false;
        return;
        view;
        m_inRequestChildFocus = false;
        throw view;
    }

    public (Context context)
    {
        this$0 = AndroidWebView.this;
        super(context);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
    }

    public mLastFocusDirection(Context context, AttributeSet attributeset)
    {
        this$0 = AndroidWebView.this;
        super(context, attributeset);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
    }

    public mLastFocusDirection(Context context, AttributeSet attributeset, int i)
    {
        this$0 = AndroidWebView.this;
        super(context, attributeset, i);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
    }
}
