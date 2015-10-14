// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.media.MediaPlayer;
import android.view.View;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.listener.MraidViewListener;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

class this._cls1
    implements android.media.PreparedListener
{

    final Listener this$1;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        TapjoyLog.i("MRAIDView", "** ON PREPARED **");
        TapjoyLog.i("MRAIDView", (new StringBuilder()).append("isPlaying: ").append(mediaplayer.isPlaying()).toString());
        if (!mediaplayer.isPlaying())
        {
            mediaplayer.start();
        }
    }

    >()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/tapjoy/mraid/view/MraidView$5

/* anonymous class */
    class MraidView._cls5 extends WebChromeClient
    {

        final MraidView this$0;

        public void onCloseWindow(WebView webview)
        {
            super.onCloseWindow(webview);
            MraidView.access$1000(MraidView.this);
        }

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            if (MraidView.access$300(MraidView.this) != null)
            {
                return MraidView.access$300(MraidView.this).onConsoleMessage(consolemessage);
            } else
            {
                return super.onConsoleMessage(consolemessage);
            }
        }

        public void onHideCustomView()
        {
            super.onHideCustomView();
        }

        public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
        {
            TapjoyLog.d("MRAIDView", s1);
            return false;
        }

        public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
        {
label0:
            {
                TapjoyLog.i("MRAIDView", "-- onShowCustomView --");
                super.onShowCustomView(view, customviewcallback);
                MraidView.access$1602(MraidView.this, customviewcallback);
                if (view instanceof FrameLayout)
                {
                    customviewcallback = (FrameLayout)view;
                    if ((customviewcallback.getFocusedChild() instanceof VideoView) && (MraidView.access$1700(MraidView.this) instanceof Activity))
                    {
                        break label0;
                    }
                }
                return;
            }
            view = (Activity)MraidView.access$1700(MraidView.this);
            MraidView.access$1802(MraidView.this, (VideoView)customviewcallback.getFocusedChild());
            customviewcallback.removeView(MraidView.access$1800(MraidView.this));
            if (MraidView.access$1900(MraidView.this) == null)
            {
                MraidView.access$1902(MraidView.this, new RelativeLayout(MraidView.access$1700(MraidView.this)));
                MraidView.access$1900(MraidView.this).setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
                MraidView.access$1900(MraidView.this).setBackgroundColor(0xff000000);
            }
            customviewcallback = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            customviewcallback.addRule(13);
            MraidView.access$1800(MraidView.this).setLayoutParams(customviewcallback);
            MraidView.access$2002(MraidView.this, new ProgressBar(MraidView.access$1700(MraidView.this), null, 0x101007a));
            MraidView.access$2000(MraidView.this).setVisibility(0);
            customviewcallback = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            customviewcallback.addRule(13);
            MraidView.access$2000(MraidView.this).setLayoutParams(customviewcallback);
            MraidView.access$1900(MraidView.this).addView(MraidView.access$1800(MraidView.this));
            MraidView.access$1900(MraidView.this).addView(MraidView.access$2000(MraidView.this));
            view.getWindow().addContentView(MraidView.access$1900(MraidView.this), new android.view.ViewGroup.LayoutParams(-1, -1));
            (new Thread(new MraidView.VideoLoadingThread(MraidView.this))).start();
            setVisibility(8);
            MraidView.access$1800(MraidView.this).setOnPreparedListener(new MraidView._cls5._cls1());
            MraidView.access$1800(MraidView.this).setOnCompletionListener(new MraidView._cls5._cls2());
            MraidView.access$1800(MraidView.this).setOnErrorListener(new MraidView._cls5._cls3());
            MraidView.access$1800(MraidView.this).start();
        }

            
            {
                this$0 = MraidView.this;
                super();
            }

        // Unreferenced inner class com/tapjoy/mraid/view/MraidView$5$2

/* anonymous class */
        class MraidView._cls5._cls2
            implements android.media.MediaPlayer.OnCompletionListener
        {

            final MraidView._cls5 this$1;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
                videoViewCleanup();
            }

                    
                    {
                        this$1 = MraidView._cls5.this;
                        super();
                    }
        }


        // Unreferenced inner class com/tapjoy/mraid/view/MraidView$5$3

/* anonymous class */
        class MraidView._cls5._cls3
            implements android.media.MediaPlayer.OnErrorListener
        {

            final MraidView._cls5 this$1;

            public boolean onError(MediaPlayer mediaplayer, int i, int j)
            {
                TapjoyLog.i("MRAIDView", "** ON ERROR **");
                videoViewCleanup();
                return false;
            }

                    
                    {
                        this$1 = MraidView._cls5.this;
                        super();
                    }
        }

    }

}
