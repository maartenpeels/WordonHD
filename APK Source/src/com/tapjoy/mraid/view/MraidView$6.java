// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.tapjoy.mraid.listener.Player;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls0
    implements Player
{

    final MraidView this$0;

    public void onComplete()
    {
        FrameLayout framelayout = (FrameLayout)getRootView().findViewById(101);
        ((ViewGroup)framelayout.getParent()).removeView(framelayout);
        setVisibility(0);
    }

    public void onError()
    {
        onComplete();
    }

    public void onPrepared()
    {
    }

    ()
    {
        this$0 = MraidView.this;
        super();
    }
}
