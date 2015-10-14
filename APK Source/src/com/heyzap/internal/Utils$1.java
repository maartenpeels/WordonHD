// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

// Referenced classes of package com.heyzap.internal:
//            Utils

static final class val.inner
    implements Runnable
{

    final Context val$context;
    final int val$extraPaddingDpBottom;
    final int val$extraPaddingDpLeft;
    final int val$extraPaddingDpRight;
    final int val$extraPaddingDpTop;
    final View val$inner;
    final View val$wrapper;

    public void run()
    {
        Rect rect = new Rect();
        val$wrapper.getHitRect(rect);
        rect.top = rect.top - Utils.getScaledSize(val$context, val$extraPaddingDpTop);
        rect.right = rect.right + Utils.getScaledSize(val$context, val$extraPaddingDpRight);
        rect.bottom = rect.bottom + Utils.getScaledSize(val$context, val$extraPaddingDpBottom);
        rect.left = rect.left - Utils.getScaledSize(val$context, val$extraPaddingDpLeft);
        val$wrapper.setTouchDelegate(new TouchDelegate(rect, val$inner));
    }

    (View view, Context context1, int i, int j, int k, int l, View view1)
    {
        val$wrapper = view;
        val$context = context1;
        val$extraPaddingDpTop = i;
        val$extraPaddingDpRight = j;
        val$extraPaddingDpBottom = k;
        val$extraPaddingDpLeft = l;
        val$inner = view1;
        super();
    }
}
