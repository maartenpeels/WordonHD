// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.widget.VideoView;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

private class playing
    implements Runnable
{

    private boolean playing;
    final playing this$1;

    public void run()
    {
_L5:
        if (MraidView.access$1800(this._cls1.this.playing) == null) goto _L2; else goto _L1
_L1:
        Thread.sleep(100L);
        if (playing == MraidView.access$1800(this._cls1.this.playing).isPlaying()) goto _L4; else goto _L3
_L3:
        playing = MraidView.access$1800(this._cls1.this.playing).isPlaying();
        String s;
        if (playing)
        {
            s = "videoplay";
        } else
        {
            s = "videopause";
        }
        try
        {
            loadUrl((new StringBuilder()).append("javascript:try{Tapjoy.AdUnit.dispatchEvent('").append(s).append("')}catch(e){}").toString());
        }
        catch (Exception exception) { }
_L4:
        if (true) goto _L5; else goto _L2
_L2:
    }

    public ()
    {
        this$1 = this._cls1.this;
        super();
        playing = false;
    }
}
