// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.util;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.listener.Player;

// Referenced classes of package com.tapjoy.mraid.util:
//            Utils

public class MraidPlayer extends VideoView
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    private static String TAG = "MRAID Player";
    private static String transientText = "Loading. Please Wait..";
    private AudioManager aManager;
    private ImageButton closeImageButton;
    private String contentURL;
    private boolean isReleased;
    private Player listener;
    private int mutedVolume;
    private com.tapjoy.mraid.controller.Abstract.PlayerProperties playProperties;
    private RelativeLayout transientLayout;

    public MraidPlayer(Context context)
    {
        super(context);
        aManager = (AudioManager)getContext().getSystemService("audio");
    }

    void addTransientMessage()
    {
        if (playProperties.inline)
        {
            return;
        } else
        {
            transientLayout = new RelativeLayout(getContext());
            transientLayout.setLayoutParams(getLayoutParams());
            TextView textview = new TextView(getContext());
            textview.setText(transientText);
            textview.setTextColor(-1);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.addRule(13);
            transientLayout.addView(textview, layoutparams);
            ((ViewGroup)getParent()).addView(transientLayout);
            return;
        }
    }

    void clearTransientMessage()
    {
        if (transientLayout != null)
        {
            ((ViewGroup)getParent()).removeView(transientLayout);
        }
    }

    void displayControl()
    {
        if (playProperties.showControl())
        {
            MediaController mediacontroller = new MediaController(getContext());
            setMediaController(mediacontroller);
            mediacontroller.setAnchorView(this);
        }
    }

    public ImageButton getCloseImageButton()
    {
        return closeImageButton;
    }

    void loadContent()
    {
        contentURL = contentURL.trim();
        contentURL = Utils.convert(contentURL);
        if (contentURL == null && listener != null)
        {
            removeView();
            listener.onError();
            return;
        } else
        {
            setVideoURI(Uri.parse(contentURL));
            TapjoyLog.d("player", Uri.parse(contentURL).toString());
            displayControl();
            startContent();
            return;
        }
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        if (playProperties.doLoop())
        {
            start();
        } else
        if (playProperties.exitOnComplete() || playProperties.inline)
        {
            releasePlayer();
            return;
        }
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        TapjoyLog.i(TAG, (new StringBuilder()).append("Player error : ").append(i).toString());
        clearTransientMessage();
        removeView();
        if (listener != null)
        {
            listener.onError();
        }
        return false;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        clearTransientMessage();
        if (listener != null)
        {
            listener.onPrepared();
        }
    }

    public void playAudio()
    {
        loadContent();
    }

    public void playVideo()
    {
        if (playProperties.doMute())
        {
            mutedVolume = aManager.getStreamVolume(3);
            aManager.setStreamVolume(3, 0, 4);
        }
        loadContent();
    }

    public void releasePlayer()
    {
        if (!isReleased)
        {
            isReleased = true;
            stopPlayback();
            removeView();
            if (playProperties != null && playProperties.doMute())
            {
                unMute();
            }
            if (listener != null)
            {
                listener.onComplete();
                return;
            }
        }
    }

    void removeView()
    {
        ViewGroup viewgroup = (ViewGroup)getParent();
        if (viewgroup != null)
        {
            viewgroup.removeAllViews();
        }
    }

    public void setListener(Player player)
    {
        listener = player;
    }

    public void setPlayData(com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties, String s)
    {
        isReleased = false;
        playProperties = playerproperties;
        contentURL = s;
    }

    void startContent()
    {
        setOnCompletionListener(this);
        setOnErrorListener(this);
        setOnPreparedListener(this);
        if (!playProperties.inline)
        {
            addTransientMessage();
        }
        if (playProperties.isAutoPlay())
        {
            start();
        }
    }

    void unMute()
    {
        aManager.setStreamVolume(3, mutedVolume, 4);
    }

}
