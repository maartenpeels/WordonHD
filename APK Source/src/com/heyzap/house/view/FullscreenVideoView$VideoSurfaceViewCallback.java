// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house.view:
//            FullscreenVideoView

private class <init>
    implements android.view.Callback
{

    final FullscreenVideoView this$0;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        try
        {
            FullscreenVideoView.access$300(FullscreenVideoView.this).start();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SurfaceHolder surfaceholder)
        {
            Logger.trace(surfaceholder);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        try
        {
            FullscreenVideoView.access$300(FullscreenVideoView.this).setDisplay(surfaceholder);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SurfaceHolder surfaceholder)
        {
            Logger.trace(surfaceholder);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        try
        {
            if (FullscreenVideoView.access$300(FullscreenVideoView.this) != null && FullscreenVideoView.access$300(FullscreenVideoView.this).isPlaying())
            {
                FullscreenVideoView.access$300(FullscreenVideoView.this).pause();
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SurfaceHolder surfaceholder)
        {
            Logger.trace(surfaceholder);
        }
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
