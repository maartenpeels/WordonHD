// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class this._cls0
    implements Runnable
{

    final WandViewFlipper this$0;

    public void run()
    {
        ((ImageView)WandViewFlipper.access$000(WandViewFlipper.this).findViewById(0x7f0600e5)).setImageResource(0x7f070041);
        WandViewFlipper.access$102(WandViewFlipper.this, 0);
        Object obj;
        boolean flag;
        if (WandViewFlipper.access$200(WandViewFlipper.this) != null)
        {
            obj = WandViewFlipper.access$200(WandViewFlipper.this).getConnectionToken();
        } else
        {
            obj = "";
        }
        if (!((String) (obj)).equals(""))
        {
            obj = WandViewFlipper.access$300(((String) (obj)));
        }
        ((TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0600e9)).setText(((CharSequence) (obj)));
        obj = (TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0600ea);
        if (!WandViewFlipper.access$200(WandViewFlipper.this).getConnectionToken().equals(""))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((TextView) (obj)).setText(WandViewFlipper.access$500(flag));
        setDisplayedChild(WandViewFlipper.access$100(WandViewFlipper.this));
    }

    ()
    {
        this$0 = WandViewFlipper.this;
        super();
    }
}
