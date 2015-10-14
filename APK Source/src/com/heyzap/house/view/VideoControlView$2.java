// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.text.SpannableString;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.heyzap.house.view:
//            VideoControlView

class val.display
    implements Runnable
{

    final VideoControlView this$0;
    final DisplayMetrics val$display;
    final float val$percentComplete;
    final SpannableString val$remainingTextSpan;

    public void run()
    {
        if (val$remainingTextSpan != null)
        {
            timeTextView.setText(val$remainingTextSpan);
        }
        android.view.ams ams = scrubBar.getLayoutParams();
        ams.width = (int)(val$percentComplete * (float)val$display.widthPixels);
        scrubBar.setLayoutParams(ams);
    }

    ()
    {
        this$0 = final_videocontrolview;
        val$remainingTextSpan = spannablestring;
        val$percentComplete = f;
        val$display = DisplayMetrics.this;
        super();
    }
}
