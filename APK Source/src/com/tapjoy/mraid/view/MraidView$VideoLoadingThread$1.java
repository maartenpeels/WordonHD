// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.widget.ProgressBar;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls1
    implements Runnable
{

    final this._cls1 this$1;

    public void run()
    {
        if (MraidView.access$2000(_fld0) != null)
        {
            MraidView.access$2000(_fld0).setVisibility(8);
        }
        (new Thread(new deoRunningThread(this._cls1.this))).start();
    }

    deoRunningThread()
    {
        this$1 = this._cls1.this;
        super();
    }
}
