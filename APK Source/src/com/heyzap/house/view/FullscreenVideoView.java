// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.Display;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.heyzap.house.view:
//            VideoControlView

public class FullscreenVideoView extends FrameLayout
{
    private class MediaPlayerListener
        implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnBufferingUpdateListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener, android.media.MediaPlayer.OnVideoSizeChangedListener
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
            if (listener != null)
            {
                listener.completed();
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
        //                       100 183;
               goto _L1 _L2
_L1:
            String s = "Unknown";
_L9:
            j;
            JVM INSTR lookupswitch 5: default 124
        //                       -1010: 190
        //                       -1007: 208
        //                       -1004: 214
        //                       -110: 196
        //                       200: 202;
               goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
            mediaplayer = "Unknown.";
_L10:
            Logger.log((new StringBuilder()).append("MediaPlayer Error! What: ").append(s).append(" Extra: ").append(mediaplayer).toString());
            if (listener != null)
            {
                listener.error();
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

        private MediaPlayerListener()
        {
            this$0 = FullscreenVideoView.this;
            super();
        }

    }

    private class OnVideoActionListener
        implements VideoControlView.OnActionListener
    {

        final FullscreenVideoView this$0;

        public void onClick()
        {
            if (model.getVideoDisplayOptions().allowClick.booleanValue())
            {
                if (mediaPlayer != null)
                {
                    mediaPlayer.pause();
                }
                if (listener != null)
                {
                    listener.click();
                }
            }
        }

        public void onHide()
        {
label0:
            {
                if (listener != null)
                {
                    if (!mediaPlayer.isPlaying())
                    {
                        break label0;
                    }
                    int i = mediaPlayer.getCurrentPosition();
                    if (i > playbackDuration)
                    {
                        playbackDuration = i;
                    }
                    mediaPlayer.pause();
                    listener.hide();
                }
                return;
            }
            listener.hide();
        }

        public void onSkip()
        {
            onHide();
        }

        private OnVideoActionListener()
        {
            this$0 = FullscreenVideoView.this;
            super();
        }

    }

    private class VideoSurfaceViewCallback
        implements android.view.SurfaceHolder.Callback
    {

        final FullscreenVideoView this$0;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
        {
            try
            {
                mediaPlayer.start();
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
                mediaPlayer.setDisplay(surfaceholder);
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
                if (mediaPlayer != null && mediaPlayer.isPlaying())
                {
                    mediaPlayer.pause();
                }
                return;
            }
            // Misplaced declaration of an exception variable
            catch (SurfaceHolder surfaceholder)
            {
                Logger.trace(surfaceholder);
            }
        }

        private VideoSurfaceViewCallback()
        {
            this$0 = FullscreenVideoView.this;
            super();
        }

    }


    public int bufferProgress;
    private Context context;
    private VideoControlView controlView;
    private com.heyzap.house.abstr.AbstractActivity.AdActionListener listener;
    public ProgressDialog loadingSpinner;
    private MediaPlayer mediaPlayer;
    private VideoModel model;
    private MediaPlayerListener mpListener;
    private int playbackDuration;
    public Timer playbackTimer;
    private int totalDuration;
    public SurfaceView videoSurface;
    public Integer waitMillisBeforeSkipShow;

    public FullscreenVideoView(Context context1, VideoModel videomodel, com.heyzap.house.abstr.AbstractActivity.AdActionListener adactionlistener)
    {
        super(context1);
        waitMillisBeforeSkipShow = Integer.valueOf(1);
        bufferProgress = 0;
        totalDuration = 0;
        playbackDuration = 0;
        context = context1;
        model = videomodel;
        setFocusable(true);
        setFocusableInTouchMode(true);
        listener = adactionlistener;
        playbackTimer = new Timer();
        mediaPlayer = new MediaPlayer();
        mpListener = new MediaPlayerListener();
        mediaPlayer.setOnBufferingUpdateListener(mpListener);
        mediaPlayer.setOnCompletionListener(mpListener);
        mediaPlayer.setOnErrorListener(mpListener);
        mediaPlayer.setOnPreparedListener(mpListener);
        mediaPlayer.setOnVideoSizeChangedListener(mpListener);
        mediaPlayer.setScreenOnWhilePlaying(true);
        setBackgroundColor(0);
        videoSurface = new SurfaceView(context1);
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            videoSurface.getHolder().setType(3);
        }
        videoSurface.getHolder().addCallback(new VideoSurfaceViewCallback());
        videoSurface.setVisibility(8);
        context1 = new android.widget.FrameLayout.LayoutParams(-1, -1);
        context1.gravity = 17;
        addView(videoSurface, context1);
        controlView = new VideoControlView(getContext(), videomodel);
        controlView.setOnActionListener(new OnVideoActionListener());
        addView(controlView, new android.widget.FrameLayout.LayoutParams(-1, -1));
        showControls();
        render();
    }

    public void clear()
    {
        if (playbackTimer != null)
        {
            playbackTimer.cancel();
            playbackTimer.purge();
        }
        if (mediaPlayer != null)
        {
            mediaPlayer.reset();
            mediaPlayer.release();
            mediaPlayer = null;
        }
    }

    public int getPlaybackDuration()
    {
        return playbackDuration;
    }

    public int getTotalVideoDuration()
    {
        return totalDuration;
    }

    public void hide(Boolean boolean1)
    {
        if (playbackTimer != null)
        {
            playbackTimer.cancel();
            playbackTimer.purge();
        }
        if (mediaPlayer != null && mediaPlayer.isPlaying())
        {
            mediaPlayer.stop();
            mediaPlayer.reset();
        }
        clear();
        if (boolean1.booleanValue() && listener != null)
        {
            listener.hide();
        }
    }

    public void hideControls()
    {
        controlView.setVisibility(8);
    }

    public Boolean isReady()
    {
        return Boolean.valueOf(false);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i != 4) goto _L2; else goto _L1
_L1:
        if (mediaPlayer == null || !mediaPlayer.isPlaying())
        {
            hide(Boolean.valueOf(true));
        }
        if (!model.getVideoDisplayOptions().allowSkip.booleanValue() || mediaPlayer == null || !mediaPlayer.isPlaying()) goto _L4; else goto _L3
_L3:
        if (model.getVideoDisplayOptions().lockoutTime.intValue() == 0 || model.getVideoDisplayOptions().lockoutTime.intValue() > 0 && mediaPlayer.getCurrentPosition() > model.getVideoDisplayOptions().lockoutTime.intValue())
        {
            hide(Boolean.valueOf(true));
        }
_L5:
        return true;
_L4:
        if (model.getVideoDisplayOptions().allowHide.booleanValue())
        {
            hide(Boolean.valueOf(true));
        }
        if (true) goto _L5; else goto _L2
_L2:
        return super.onKeyDown(i, keyevent);
    }

    public void onVideoSizeChanged(int i, int j)
    {
        int k = ((Activity)getContext()).getWindowManager().getDefaultDisplay().getWidth();
        int l = ((Activity)getContext()).getWindowManager().getDefaultDisplay().getHeight();
        int i1 = mediaPlayer.getVideoHeight();
        int j1 = mediaPlayer.getVideoWidth();
        float f = (float)mediaPlayer.getVideoWidth() / (float)mediaPlayer.getVideoHeight();
        android.widget.FrameLayout.LayoutParams layoutparams;
        if (j1 > i1 && (double)Float.valueOf(f).floatValue() > 1.6000000000000001D)
        {
            j = (int)(((float)j / (float)i) * (float)k);
            i = -1;
        } else
        {
            float f1 = (float)i / (float)j;
            i = (int)((float)l * f1);
            j = -1;
        }
        layoutparams = (android.widget.FrameLayout.LayoutParams)videoSurface.getLayoutParams();
        layoutparams.width = i;
        layoutparams.height = j;
        videoSurface.setLayoutParams(layoutparams);
        controlView.setLayoutParams(layoutparams);
    }

    public void onVideoStart()
    {
        if (listener != null)
        {
            listener.show();
        }
        setBackgroundColor(0xff000000);
        totalDuration = mediaPlayer.getDuration();
        videoSurface.setVisibility(0);
        if (playbackTimer != null)
        {
            playbackTimer.purge();
            playbackTimer = null;
        }
        playbackTimer = new Timer();
        playbackTimer.scheduleAtFixedRate(new TimerTask() {

            final FullscreenVideoView this$0;

            public void run()
            {
                onVideoTick();
            }

            
            {
                this$0 = FullscreenVideoView.this;
                super();
            }
        }, 0L, 100L);
        if (!model.getVideoDisplayOptions().allowSkip.booleanValue()) goto _L2; else goto _L1
_L1:
        if (model.getVideoDisplayOptions().lockoutTime.intValue() <= 0) goto _L4; else goto _L3
_L3:
        controlView.addSkipButton(Boolean.valueOf(true), model.getVideoDisplayOptions().lockoutTime.intValue());
_L6:
        return;
_L4:
        controlView.addSkipButton(Boolean.valueOf(false), 0L);
        return;
_L2:
        if (model.getVideoDisplayOptions().allowHide.booleanValue())
        {
            controlView.addHideButton();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onVideoTick()
    {
        MediaPlayer mediaplayer = mediaPlayer;
        if (mediaplayer != null && !mediaplayer.isPlaying())
        {
            return;
        } else
        {
            int i = mediaplayer.getDuration();
            int j = mediaplayer.getCurrentPosition();
            float f = (float)mediaplayer.getCurrentPosition() / (float)mediaplayer.getDuration();
            controlView.updateScrubber(i - j, f);
            return;
        }
    }

    public Boolean render()
    {
        Boolean boolean1;
        if (!model.shouldForceStreaming().booleanValue())
        {
            break MISSING_BLOCK_LABEL_27;
        }
        boolean1 = render(model.getStreamingUri());
        return boolean1;
        if (!model.isFileCached().booleanValue() || model.getCachedPath() == null)
        {
            throw new Exception("local");
        }
        break MISSING_BLOCK_LABEL_119;
        Exception exception;
        exception;
        if (!exception.getMessage().equals("local"))
        {
            Logger.trace(exception);
        }
        model.cancelDownload();
        if (!model.shouldAllowFallbackToStreaming().booleanValue())
        {
            break MISSING_BLOCK_LABEL_147;
        }
        Logger.log("Local file not found. Falling back to stream and cancelling download.");
        exception = render(model.getStreamingUri());
        return exception;
        if (!render(model.getCachedPath()).booleanValue())
        {
            throw new Exception("load");
        }
        break MISSING_BLOCK_LABEL_190;
        try
        {
            Logger.log("Local file not found. No fallback to streaming.");
            throw new Exception("Local file not found. No fallback to streaming.");
        }
        catch (Exception exception1)
        {
            Logger.trace(exception1);
        }
        if (listener != null)
        {
            listener.error();
        }
        return Boolean.valueOf(false);
        return Boolean.valueOf(true);
    }

    public Boolean render(Uri uri)
    {
        try
        {
            loadingSpinner = ProgressDialog.show(getContext(), "", "Loading...", true);
            mediaPlayer.setDataSource(context, uri);
            mediaPlayer.prepareAsync();
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.trace(uri);
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }

    public Boolean render(String s)
    {
        s = new File(s);
        if (!s.exists())
        {
            throw new Exception("File does not exist.");
        }
          goto _L1
        Object obj;
        obj;
        s = null;
_L5:
        Logger.trace(((Throwable) (obj)));
        if (listener != null)
        {
            listener.error();
        }
        Boolean boolean2 = Boolean.valueOf(false);
        Boolean boolean1 = boolean2;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Logger.trace(s);
                return boolean2;
            }
            boolean1 = boolean2;
        }
        return boolean1;
_L1:
        s = new FileInputStream(s);
        mediaPlayer.setDataSource(s.getFD());
        mediaPlayer.prepareAsync();
        boolean2 = Boolean.valueOf(true);
        boolean1 = boolean2;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Logger.trace(s);
                return boolean2;
            }
            return boolean2;
        } else
        {
            break MISSING_BLOCK_LABEL_67;
        }
        boolean1;
        s = null;
_L3:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Logger.trace(s);
            }
        }
        throw boolean1;
        boolean1;
        continue; /* Loop/switch isn't completed */
        boolean1;
        if (true) goto _L3; else goto _L2
_L2:
        boolean1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void restart()
    {
        if (listener != null)
        {
            listener.show();
        }
        mediaPlayer.start();
    }

    public void showControls()
    {
        Object obj = (Activity)getContext();
        obj = AnimationUtils.loadAnimation(getContext(), 0x10a0000);
        ((Animation) (obj)).setDuration(150L);
        controlView.setVisibility(0);
        controlView.startAnimation(((Animation) (obj)));
    }

    public void stop()
    {
        if (mediaPlayer != null)
        {
            mediaPlayer.pause();
        }
    }





/*
    static int access$502(FullscreenVideoView fullscreenvideoview, int i)
    {
        fullscreenvideoview.playbackDuration = i;
        return i;
    }

*/

}
