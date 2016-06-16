// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;
import com.tapjoy.mraid.listener.Player;
import com.tapjoy.mraid.util.MraidPlayer;
import com.tapjoy.mraid.util.Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ActionHandler extends Activity
{

    private static final String TAG = "MRAID Action Handler";
    private HashMap actionData;
    private RelativeLayout layout;

    public ActionHandler()
    {
        actionData = new HashMap();
    }

    private void doAction(Bundle bundle)
    {
        Object obj = bundle.getString("action");
        if (obj == null)
        {
            return;
        }
        obj = MraidView.Action.valueOf(((String) (obj)));
        static class _cls2
        {

            static final int $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[];

            static 
            {
                $SwitchMap$com$tapjoy$mraid$view$MraidView$Action = new int[MraidView.Action.values().length];
                try
                {
                    $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[MraidView.Action.PLAY_AUDIO.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[MraidView.Action.PLAY_VIDEO.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls2..SwitchMap.com.tapjoy.mraid.view.MraidView.Action[((MraidView.Action) (obj)).ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            initPlayer(bundle, ((MraidView.Action) (obj))).playAudio();
            return;

        case 2: // '\002'
            initPlayer(bundle, ((MraidView.Action) (obj))).playVideo();
            break;
        }
    }

    private void setPlayerListener(MraidPlayer mraidplayer)
    {
        mraidplayer.setListener(new Player() {

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

            
            {
                this$0 = ActionHandler.this;
                super();
            }
        });
    }

    MraidPlayer initPlayer(Bundle bundle, MraidView.Action action)
    {
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = (com.tapjoy.mraid.controller.Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        com.tapjoy.mraid.controller.Abstract.Dimensions dimensions = (com.tapjoy.mraid.controller.Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
        MraidPlayer mraidplayer = new MraidPlayer(this);
        mraidplayer.setPlayData(playerproperties, Utils.getData("expand_url", bundle));
        if (!playerproperties.inline && playerproperties.startStyle.equals("fullscreen"))
        {
            getWindow().setFlags(1024, 1024);
            getWindow().setFlags(0x1000000, 0x1000000);
            bundle = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            bundle.addRule(13);
        } else
        {
            bundle = new android.widget.RelativeLayout.LayoutParams(dimensions.width, dimensions.height);
            bundle.topMargin = dimensions.y;
            bundle.leftMargin = dimensions.x;
        }
        mraidplayer.setLayoutParams(bundle);
        layout.addView(mraidplayer);
        actionData.put(action, mraidplayer);
        setPlayerListener(mraidplayer);
        return mraidplayer;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        bundle = getIntent().getExtras();
        layout = new RelativeLayout(this);
        layout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        layout.setBackgroundColor(0xff000000);
        setContentView(layout);
        doAction(bundle);
    }

    protected void onStop()
    {
        Iterator iterator = actionData.entrySet().iterator();
        do
        {
            if (iterator.hasNext())
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                switch (_cls2..SwitchMap.com.tapjoy.mraid.view.MraidView.Action[((MraidView.Action)entry.getKey()).ordinal()])
                {
                case 1: // '\001'
                case 2: // '\002'
                    ((MraidPlayer)entry.getValue()).releasePlayer();
                    break;
                }
            } else
            {
                super.onStop();
                return;
            }
        } while (true);
    }
}
