// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class val.connectionToken
    implements Runnable
{

    final WandViewFlipper this$0;
    final String val$connectionToken;

    public void run()
    {
        Object obj;
        boolean flag;
        if (!val$connectionToken.equals(""))
        {
            obj = WandViewFlipper.access$300(val$connectionToken);
        } else
        {
            obj = "";
        }
        ((TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0600e9)).setText(((CharSequence) (obj)));
        obj = (TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0600ea);
        if (!val$connectionToken.equals(""))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((TextView) (obj)).setText(WandViewFlipper.access$500(flag));
    }

    ()
    {
        this$0 = final_wandviewflipper;
        val$connectionToken = String.this;
        super();
    }
}
