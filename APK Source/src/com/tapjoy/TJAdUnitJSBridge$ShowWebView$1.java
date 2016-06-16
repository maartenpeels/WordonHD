// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.graphics.drawable.Drawable;
import android.webkit.WebView;
import android.widget.RelativeLayout;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

class val.transparent
    implements Runnable
{

    final dColor this$1;
    final boolean val$transparent;
    final boolean val$visible;

    public void run()
    {
        if (!val$visible) goto _L2; else goto _L1
_L1:
        bView.setVisibility(0);
        if (!val$transparent) goto _L4; else goto _L3
_L3:
        if (bView.getParent() instanceof RelativeLayout)
        {
            ((RelativeLayout)bView.getParent()).getBackground().setAlpha(0);
            ((RelativeLayout)bView.getParent()).setBackgroundColor(0);
        }
        if (android.os.dColor >= 11)
        {
            bView.setLayerType(1, null);
        }
_L6:
        return;
_L4:
        if (bView.getParent() instanceof RelativeLayout)
        {
            ((RelativeLayout)bView.getParent()).getBackground().setAlpha(255);
            ((RelativeLayout)bView.getParent()).setBackgroundColor(-1);
        }
        if (android.os.dColor >= 11)
        {
            bView.setLayerType(0, null);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        bView.setVisibility(4);
        if (bView.getParent() instanceof RelativeLayout)
        {
            ((RelativeLayout)bView.getParent()).getBackground().setAlpha(0);
            ((RelativeLayout)bView.getParent()).setBackgroundColor(0);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        this$1 = final_;
        val$visible = flag;
        val$transparent = Z.this;
        super();
    }
}
