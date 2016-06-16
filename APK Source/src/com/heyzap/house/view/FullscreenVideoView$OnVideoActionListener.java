// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.media.MediaPlayer;
import com.heyzap.house.model.VideoModel;

// Referenced classes of package com.heyzap.house.view:
//            FullscreenVideoView

private class <init>
    implements <init>
{

    final FullscreenVideoView this$0;

    public void onClick()
    {
        if (FullscreenVideoView.access$600(FullscreenVideoView.this).getVideoDisplayOptions()._fld0.booleanValue())
        {
            if (FullscreenVideoView.access$300(FullscreenVideoView.this) != null)
            {
                FullscreenVideoView.access$300(FullscreenVideoView.this).pause();
            }
            if (FullscreenVideoView.access$400(FullscreenVideoView.this) != null)
            {
                FullscreenVideoView.access$400(FullscreenVideoView.this)._mth0();
            }
        }
    }

    public void onHide()
    {
label0:
        {
            if (FullscreenVideoView.access$400(FullscreenVideoView.this) != null)
            {
                if (!FullscreenVideoView.access$300(FullscreenVideoView.this).isPlaying())
                {
                    break label0;
                }
                int i = FullscreenVideoView.access$300(FullscreenVideoView.this).getCurrentPosition();
                if (i > FullscreenVideoView.access$500(FullscreenVideoView.this))
                {
                    FullscreenVideoView.access$502(FullscreenVideoView.this, i);
                }
                FullscreenVideoView.access$300(FullscreenVideoView.this).pause();
                FullscreenVideoView.access$400(FullscreenVideoView.this)._mth0();
            }
            return;
        }
        FullscreenVideoView.access$400(FullscreenVideoView.this)._mth0();
    }

    public void onSkip()
    {
        onHide();
    }

    private ()
    {
        this$0 = FullscreenVideoView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
