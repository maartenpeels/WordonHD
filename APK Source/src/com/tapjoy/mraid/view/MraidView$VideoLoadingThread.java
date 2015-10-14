// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.widget.ProgressBar;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

private class this._cls0
    implements Runnable
{
    private class VideoRunningThread
        implements Runnable
    {

        private boolean playing;
        final MraidView.VideoLoadingThread this$1;

        public void run()
        {
_L5:
            if (MraidView.access$1800(this$0) == null) goto _L2; else goto _L1
_L1:
            Thread.sleep(100L);
            if (playing == MraidView.access$1800(this$0).isPlaying()) goto _L4; else goto _L3
_L3:
            playing = MraidView.access$1800(this$0).isPlaying();
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

        public VideoRunningThread()
        {
            this$1 = MraidView.VideoLoadingThread.this;
            super();
            playing = false;
        }
    }


    final MraidView this$0;

    public void run()
    {
        int i = 0;
_L2:
        if (MraidView.access$1800(MraidView.this) == null || MraidView.access$1800(MraidView.this).isPlaying())
        {
            break MISSING_BLOCK_LABEL_45;
        }
        Thread.sleep(50L);
        int j = i + 50;
        i = j;
        if (j < 10000)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((Activity)MraidView.access$1700(MraidView.this)).runOnUiThread(new Runnable() {

            final MraidView.VideoLoadingThread this$1;

            public void run()
            {
                if (MraidView.access$2000(this$0) != null)
                {
                    MraidView.access$2000(this$0).setVisibility(8);
                }
                (new Thread(new VideoRunningThread())).start();
            }

            
            {
                this$1 = MraidView.VideoLoadingThread.this;
                super();
            }
        });
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public _cls1.this._cls1()
    {
        this$0 = MraidView.this;
        super();
    }
}
