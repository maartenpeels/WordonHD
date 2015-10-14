// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.heyzap.house.view:
//            VideoControlView

class this._cls0 extends CountDownTimer
{

    final VideoControlView this$0;

    public void onFinish()
    {
        VideoControlView.access$100(VideoControlView.this).setEnabled(true);
        SpannableString spannablestring = new SpannableString(skipButtonText);
        spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 0);
        VideoControlView.access$000(VideoControlView.this).setText(spannablestring);
        VideoControlView.access$000(VideoControlView.this).setTextColor(-1);
    }

    public void onTick(long l)
    {
        int i = (int)Math.ceil((double)l / 1000D);
        SpannableString spannablestring = new SpannableString((new StringBuilder()).append("Skip in ").append(String.format("%d", new Object[] {
            Integer.valueOf(i)
        })).toString());
        spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 0);
        VideoControlView.access$000(VideoControlView.this).setText(spannablestring);
    }

    (long l, long l1)
    {
        this$0 = VideoControlView.this;
        super(l, l1);
    }
}
