// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapVideoActivity

private class <init>
    implements com.heyzap.house.abstr.t>
{

    final HeyzapVideoActivity this$0;

    public void click()
    {
        onClick();
    }

    public void clickUrl(String s, String s1)
    {
        Logger.log(s);
    }

    public void completed()
    {
        Logger.log("(FINISH VIDEO)");
        HeyzapVideoActivity.access$300(HeyzapVideoActivity.this);
        startedVideo = Boolean.valueOf(false);
        HeyzapVideoActivity.access$502(HeyzapVideoActivity.this, Boolean.valueOf(true));
        if (((VideoModel)HeyzapVideoActivity.access$600(HeyzapVideoActivity.this)).getVideoDisplayOptions().nterstitial.booleanValue())
        {
            switchToView(1);
        }
    }

    public void error()
    {
        Logger.trace();
        HeyzapVideoActivity.access$300(HeyzapVideoActivity.this);
        startedVideo = Boolean.valueOf(false);
        if (!Utils.isApplicationOnTop(HeyzapVideoActivity.this))
        {
            hide();
            return;
        }
        if (((VideoModel)HeyzapVideoActivity.access$700(HeyzapVideoActivity.this)).getVideoDisplayOptions().nterstitial.booleanValue())
        {
            ((VideoModel)HeyzapVideoActivity.access$800(HeyzapVideoActivity.this)).onInterstitialFallback();
            switchToView(1);
            return;
        } else
        {
            onHide();
            return;
        }
    }

    public void hide()
    {
        Logger.log("(FINISH VIDEO)");
        HeyzapVideoActivity.access$300(HeyzapVideoActivity.this);
        startedVideo = Boolean.valueOf(false);
        if (!((VideoModel)HeyzapVideoActivity.access$400(HeyzapVideoActivity.this)).getVideoDisplayOptions().nterstitial.booleanValue())
        {
            onHide();
            return;
        } else
        {
            switchToView(1);
            return;
        }
    }

    public void installHeyzap()
    {
    }

    public void restart()
    {
    }

    public void show()
    {
        Logger.log("(STARTING VIDEO)");
        startedVideo = Boolean.valueOf(true);
        HeyzapVideoActivity.access$200(HeyzapVideoActivity.this);
    }

    private ()
    {
        this$0 = HeyzapVideoActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
