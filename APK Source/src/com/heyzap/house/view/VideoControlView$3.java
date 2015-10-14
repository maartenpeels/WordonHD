// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.view.View;

// Referenced classes of package com.heyzap.house.view:
//            VideoControlView

class this._cls0
    implements android.view.r
{

    final VideoControlView this$0;

    public void onClick(View view)
    {
        if (listener != null)
        {
            listener.onHide();
        }
    }

    ActionListener()
    {
        this$0 = VideoControlView.this;
        super();
    }
}
