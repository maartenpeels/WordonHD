// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import com.tapjoy.mraid.listener.Player;

// Referenced classes of package com.tapjoy.mraid.view:
//            ActionHandler

class this._cls0
    implements Player
{

    final ActionHandler this$0;

    public void onComplete()
    {
        finish();
    }

    public void onError()
    {
        finish();
    }

    public void onPrepared()
    {
    }

    ()
    {
        this$0 = ActionHandler.this;
        super();
    }
}
