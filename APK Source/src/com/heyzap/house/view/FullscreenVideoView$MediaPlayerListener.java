// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.app.ProgressDialog;
import android.media.MediaPlayer;
import com.heyzap.internal.Logger;
import java.util.Timer;

// Referenced classes of package com.heyzap.house.view:
//            FullscreenVideoView

private class <init>
    implements android.media.istener, android.media.istener, android.media.istener, android.media.istener, android.media.istener
{

    final FullscreenVideoView this$0;

    public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
    {
        bufferProgress = i;
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        playbackTimer.cancel();
        playbackTimer.purge();
        if (FullscreenVideoView.access$400(FullscreenVideoView.this) != null)
        {
            FullscreenVideoView.access$400(FullscreenVideoView.this).ted();
        }
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        if (loadingSpinner != null)
        {
            loadingSpinner.dismiss();
            loadingSpinner = null;
        }
        playbackTimer.cancel();
        playbackTimer.purge();
        i;
        JVM INSTR tableswitch 100 100: default 68
    //                   100 183;
           goto _L1 _L2
_L1:
        String s = "Unknown";
_L9:
        j;
        JVM INSTR lookupswitch 5: default 124
    //                   -1010: 190
    //                   -1007: 208
    //                   -1004: 214
    //                   -110: 196
    //                   200: 202;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        mediaplayer = "Unknown.";
_L10:
        Logger.log((new StringBuilder()).append("MediaPlayer Error! What: ").append(s).append(" Extra: ").append(mediaplayer).toString());
        if (FullscreenVideoView.access$400(FullscreenVideoView.this) != null)
        {
            FullscreenVideoView.access$400(FullscreenVideoView.this)._mth0();
        }
        return true;
_L2:
        s = "Server Died.";
          goto _L9
_L4:
        mediaplayer = "Unsupported.";
          goto _L10
_L7:
        mediaplayer = "Timed Out.";
          goto _L10
_L8:
        mediaplayer = "Not Valid for Progressive Playback.";
          goto _L10
_L5:
        mediaplayer = "Malformed.";
          goto _L10
_L6:
        mediaplayer = "Error IO.";
          goto _L10
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (loadingSpinner != null && loadingSpinner.isShowing())
        {
            loadingSpinner.dismiss();
        }
        onVideoStart();
    }

    public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
    {
        FullscreenVideoView.this.onVideoSizeChanged(i, j);
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
