// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.app.Activity;
import android.content.res.Resources;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class this._cls0
    implements Runnable
{

    final WandViewFlipper this$0;

    public void run()
    {
        setDisplayedChild(WandViewFlipper.access$100(WandViewFlipper.this));
        try
        {
            if (WandViewFlipper.access$200(WandViewFlipper.this) != null)
            {
                WandViewFlipper.access$200(WandViewFlipper.this).onLoadCompanion(((Activity)getContext()).getResources().getConfiguration());
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    ()
    {
        this$0 = WandViewFlipper.this;
        super();
    }
}
