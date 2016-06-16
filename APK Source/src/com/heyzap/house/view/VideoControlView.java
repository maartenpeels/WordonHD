// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Utils;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class VideoControlView extends FrameLayout
{
    public static interface OnActionListener
    {

        public abstract void onClick();

        public abstract void onHide();

        public abstract void onSkip();
    }


    private RelativeLayout hideButton;
    public OnActionListener listener;
    public View scrubBar;
    private SimpleDateFormat secondFormatter;
    private RelativeLayout skipButton;
    public String skipButtonText;
    private TextView skipButtonTextView;
    public TextView timeTextView;

    private VideoControlView(Context context)
    {
        super(context);
        skipButtonText = "Skip";
    }

    public VideoControlView(Context context, VideoModel videomodel)
    {
        super(context);
        skipButtonText = "Skip";
        setBackgroundColor(0);
        setOnClickListener(new android.view.View.OnClickListener() {

            final VideoControlView this$0;

            public void onClick(View view)
            {
                if (listener != null)
                {
                    listener.onClick();
                }
            }

            
            {
                this$0 = VideoControlView.this;
                super();
            }
        });
        addScrubBar(videomodel.getVideoDisplayOptions().showCountdown);
    }

    public void addHideButton()
    {
        Object obj = new android.view.View.OnClickListener() {

            final VideoControlView this$0;

            public void onClick(View view)
            {
                if (listener != null)
                {
                    listener.onHide();
                }
            }

            
            {
                this$0 = VideoControlView.this;
                super();
            }
        };
        hideButton = new RelativeLayout(getContext());
        hideButton.setBackgroundColor(0);
        hideButton.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = new ImageView(getContext());
        ((ImageView) (obj)).setImageResource(0x1080038);
        ((ImageView) (obj)).setPadding(0, Utils.dpToPx(getContext(), 10), Utils.dpToPx(getContext(), 10), 0);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(11);
        hideButton.addView(((View) (obj)), layoutparams);
        obj = new android.widget.FrameLayout.LayoutParams(Utils.dpToPx(getContext(), 100), Utils.dpToPx(getContext(), 100));
        obj.gravity = 53;
        addView(hideButton, ((android.view.ViewGroup.LayoutParams) (obj)));
    }

    public void addScrubBar(Boolean boolean1)
    {
        scrubBar = new RelativeLayout(getContext());
        scrubBar.setBackgroundColor(0xffffff);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(0, Utils.dpToPx(getContext(), 4));
        layoutparams.gravity = 83;
        addView(scrubBar, layoutparams);
        timeTextView = new TextView(getContext());
        timeTextView.setTextColor(-1);
        timeTextView.setGravity(17);
        if (!Utils.isTablet(getContext()))
        {
            timeTextView.setPadding(10, 10, 10, 10);
        }
        timeTextView.setGravity(3);
        timeTextView.setTextSize(40F);
        timeTextView.setShadowLayer(0.01F, -2F, 2.0F, 0xff888888);
        layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2);
        layoutparams.gravity = 83;
        layoutparams.leftMargin = Utils.dpToPx(getContext(), 12);
        if (!boolean1.booleanValue())
        {
            timeTextView.setVisibility(8);
        }
        addView(timeTextView, layoutparams);
    }

    public void addSkipButton(Boolean boolean1, long l)
    {
        Object obj = new android.view.View.OnClickListener() {

            final VideoControlView this$0;

            public void onClick(View view)
            {
                if (listener != null)
                {
                    listener.onSkip();
                }
            }

            
            {
                this$0 = VideoControlView.this;
                super();
            }
        };
        skipButton = new RelativeLayout(getContext());
        skipButton.setBackgroundColor(0);
        skipButton.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = new LinearLayout(getContext());
        ((LinearLayout) (obj)).setOrientation(0);
        ((LinearLayout) (obj)).setBackgroundColor(0);
        ((LinearLayout) (obj)).setGravity(16);
        ((LinearLayout) (obj)).setPadding(0, Utils.dpToPx(getContext(), 9), Utils.dpToPx(getContext(), 9), 0);
        skipButtonTextView = new TextView(getContext());
        skipButtonTextView.setTextSize(20F);
        skipButtonTextView.setTextColor(-1);
        skipButtonTextView.setGravity(17);
        skipButtonTextView.setShadowLayer(0.01F, -2F, 2.0F, 0xff888888);
        Object obj1;
        int i;
        if (Utils.getSdkVersion() < 11)
        {
            i = Utils.dpToPx(getContext(), 7);
        } else
        {
            i = 0;
        }
        skipButtonTextView.setPadding(Utils.dpToPx(getContext(), 7), Utils.dpToPx(getContext(), -2), i, 0);
        ((LinearLayout) (obj)).addView(skipButtonTextView, new android.widget.LinearLayout.LayoutParams(-2, -2));
        obj1 = new ImageView(getContext());
        ((ImageView) (obj1)).setImageResource(0x1080022);
        if (Utils.getSdkVersion() < 11)
        {
            ((ImageView) (obj1)).setPadding(0, 0, i, 0);
        }
        ((LinearLayout) (obj)).addView(((View) (obj1)), new android.widget.LinearLayout.LayoutParams(-2, -2));
        obj1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(11);
        skipButton.addView(((View) (obj)), ((android.view.ViewGroup.LayoutParams) (obj1)));
        obj = new android.widget.FrameLayout.LayoutParams(Utils.dpToPx(getContext(), 200), Utils.dpToPx(getContext(), 150));
        obj.gravity = 5;
        addView(skipButton, ((android.view.ViewGroup.LayoutParams) (obj)));
        if (!boolean1.booleanValue())
        {
            skipButton.setVisibility(0);
            boolean1 = new SpannableString(skipButtonText);
            boolean1.setSpan(new StyleSpan(1), 0, boolean1.length(), 0);
            skipButtonTextView.setText(boolean1);
            return;
        } else
        {
            skipButton.setEnabled(false);
            (new CountDownTimer(l, 100L) {

                final VideoControlView this$0;

                public void onFinish()
                {
                    skipButton.setEnabled(true);
                    SpannableString spannablestring = new SpannableString(skipButtonText);
                    spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 0);
                    skipButtonTextView.setText(spannablestring);
                    skipButtonTextView.setTextColor(-1);
                }

                public void onTick(long l1)
                {
                    int j = (int)Math.ceil((double)l1 / 1000D);
                    SpannableString spannablestring = new SpannableString((new StringBuilder()).append("Skip in ").append(String.format("%d", new Object[] {
                        Integer.valueOf(j)
                    })).toString());
                    spannablestring.setSpan(new StyleSpan(1), 0, spannablestring.length(), 0);
                    skipButtonTextView.setText(spannablestring);
                }

            
            {
                this$0 = VideoControlView.this;
                super(l, l1);
            }
            }).start();
            return;
        }
    }

    public void setOnActionListener(OnActionListener onactionlistener)
    {
        listener = onactionlistener;
    }

    public void updateScrubber(int i, final float percentComplete)
    {
        final DisplayMetrics display = getContext().getResources().getDisplayMetrics();
        if (secondFormatter == null)
        {
            secondFormatter = new SimpleDateFormat("s", Locale.US);
        }
        final Object remainingTextSpan;
        if (i >= 1000)
        {
            remainingTextSpan = secondFormatter.format(Integer.valueOf(i));
        } else
        {
            remainingTextSpan = "";
        }
        remainingTextSpan = new SpannableString(((CharSequence) (remainingTextSpan)));
        ((SpannableString) (remainingTextSpan)).setSpan(new StyleSpan(1), 0, ((SpannableString) (remainingTextSpan)).length(), 0);
        ((Activity)getContext()).runOnUiThread(new Runnable() {

            final VideoControlView this$0;
            final DisplayMetrics val$display;
            final float val$percentComplete;
            final SpannableString val$remainingTextSpan;

            public void run()
            {
                if (remainingTextSpan != null)
                {
                    timeTextView.setText(remainingTextSpan);
                }
                android.view.ViewGroup.LayoutParams layoutparams = scrubBar.getLayoutParams();
                layoutparams.width = (int)(percentComplete * (float)display.widthPixels);
                scrubBar.setLayoutParams(layoutparams);
            }

            
            {
                this$0 = VideoControlView.this;
                remainingTextSpan = spannablestring;
                percentComplete = f;
                display = displaymetrics;
                super();
            }
        });
    }


}
