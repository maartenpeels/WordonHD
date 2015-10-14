// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.util.ManifestUtils;
import com.urbanairship.util.UAStringUtil;
import com.urbanairship.widget.LandingPageWebView;

public class LandingPageActivity extends Activity
{

    private ActivityInfo a;
    private LandingPageWebView b;
    private Integer c;
    private int d;
    private Handler e;
    private String f;

    public LandingPageActivity()
    {
        c = null;
        d = -1;
    }

    static Integer a(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.c;
    }

    static Integer a(LandingPageActivity landingpageactivity, Integer integer)
    {
        landingpageactivity.c = integer;
        return integer;
    }

    private void a(Uri uri, Bundle bundle)
    {
        Logger.d("Relaunching activity");
        finish();
        uri = (new Intent()).setClass(this, getClass()).setData(uri).setFlags(0x10000000);
        if (bundle != null)
        {
            uri.putExtras(bundle);
        }
        startActivity(uri);
    }

    static void a(LandingPageActivity landingpageactivity, View view, View view1)
    {
        if (android.os.Build.VERSION.SDK_INT < 12)
        {
            if (view != null)
            {
                view.setVisibility(0);
            }
            if (view1 != null)
            {
                view1.setVisibility(8);
            }
        } else
        {
            if (view != null)
            {
                view.animate().alpha(1.0F).setDuration(200L);
            }
            if (view1 != null)
            {
                view1.animate().alpha(0.0F).setDuration(200L).setListener(landingpageactivity. new _cls2(view1));
                return;
            }
        }
    }

    private boolean a()
    {
        String s = null;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            s = a.parentActivityName;
        }
        String s1 = s;
        if (s == null)
        {
            s1 = s;
            if (a.metaData != null)
            {
                s1 = a.metaData.getString("android.support.PARENT_ACTIVITY");
            }
        }
        if (s1 == null)
        {
            Logger.a("Parent activity is not defined for action activity.");
            return false;
        }
        try
        {
            Logger.d("Launching parent activity.");
            Intent intent = new Intent();
            intent.setClassName(this, s1);
            startActivity(intent);
        }
        catch (Exception exception)
        {
            Logger.e("Failed to launch parent activity.  Make sure the android.support.PARENT_ACTIVITY metadata value and parentActivityName attribute are set for the landing page activityin the AndroidManifest.xml");
            return false;
        }
        return true;
    }

    static LandingPageWebView b(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.b;
    }

    static int c(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.d;
    }

    protected final void a(long l)
    {
        if (b == null)
        {
            return;
        }
        if (l > 0L)
        {
            e.postAtTime(new _cls3(), f, SystemClock.uptimeMillis() + l);
            return;
        }
        Logger.d((new StringBuilder("Loading landing page: ")).append(f).toString());
        if (d != -1)
        {
            b.setBackgroundColor(d);
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                b.setLayerType(1, null);
            }
        }
        c = null;
        b.loadUrl(getIntent().getDataString());
    }

    public void onCloseButtonClick(View view)
    {
        finish();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null)
        {
            Logger.a("Started Action Activity with null intent");
            finish();
            return;
        }
        a = ManifestUtils.b(getClass());
        if (a.metaData == null)
        {
            bundle = new Bundle();
        } else
        {
            bundle = a.metaData;
        }
        d = bundle.getInt("com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR", -1);
        f = getIntent().getDataString();
        e = new Handler();
        if (UAStringUtil.a(f))
        {
            Logger.a("No landing page url to load.");
            finish();
            return;
        }
        if (isTaskRoot() && a())
        {
            a(intent.getData(), intent.getExtras());
            return;
        }
        int i = bundle.getInt("com.urbanairship.action.LANDING_PAGE_VIEW", -1);
        if (i != -1)
        {
            setContentView(i);
        } else
        {
            bundle = new FrameLayout(this);
            Object obj = new LandingPageWebView(this);
            ((LandingPageWebView) (obj)).setId(0x102000c);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
            layoutparams.gravity = 17;
            bundle.addView(((View) (obj)), layoutparams);
            obj = new ProgressBar(this);
            ((ProgressBar) (obj)).setIndeterminate(true);
            ((ProgressBar) (obj)).setId(0x102000d);
            layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2);
            layoutparams.gravity = 17;
            bundle.addView(((View) (obj)), layoutparams);
            setContentView(bundle);
        }
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            bundle = getActionBar();
            if (bundle != null)
            {
                bundle.setDisplayOptions(4, 4);
            }
        }
        b = (LandingPageWebView)findViewById(0x102000c);
        bundle = (ProgressBar)findViewById(0x102000d);
        if (b != null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 12)
            {
                b.setAlpha(0.0F);
            } else
            {
                b.setVisibility(4);
            }
            b.setWebViewClient(new _cls1(bundle));
            return;
        } else
        {
            Logger.e("A LandingPageWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page.");
            finish();
            return;
        }
    }

    public void onNewIntent(Intent intent)
    {
        Logger.d("New intent received for landing page activity");
        a(intent.getData(), intent.getExtras());
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        } else
        {
            return false;
        }
    }

    public void onPause()
    {
        super.onPause();
        if (android.os.Build.VERSION.SDK_INT >= 11 && b != null)
        {
            b.onPause();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (android.os.Build.VERSION.SDK_INT >= 11 && b != null)
        {
            b.onResume();
        }
    }

    protected void onStart()
    {
        super.onStart();
        UAirship.a().k().a(this);
        a(0L);
    }

    protected void onStop()
    {
        super.onStop();
        UAirship.a().k().b(this);
        e.removeCallbacksAndMessages(f);
    }

    private class _cls2 extends AnimatorListenerAdapter
    {

        final View a;
        final LandingPageActivity b;

        public void onAnimationEnd(Animator animator)
        {
            a.setVisibility(8);
        }

        _cls2(View view)
        {
            b = LandingPageActivity.this;
            a = view;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final LandingPageActivity a;

        public void run()
        {
            a.a(0L);
        }

        _cls3()
        {
            a = LandingPageActivity.this;
            super();
        }
    }


    private class _cls1 extends UAWebViewClient
    {

        final ProgressBar a;
        final LandingPageActivity b;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (LandingPageActivity.a(b) != null)
            {
                switch (LandingPageActivity.a(b).intValue())
                {
                default:
                    LandingPageActivity.a(b, null);
                    LandingPageActivity.b(b).loadData("", "text/html", null);
                    return;

                case -8: 
                case -6: 
                case -1: 
                    b.a(20000L);
                    break;
                }
                return;
            }
            if (LandingPageActivity.c(b) != -1)
            {
                LandingPageActivity.b(b).setBackgroundColor(LandingPageActivity.c(b));
            }
            LandingPageActivity.a(b, LandingPageActivity.b(b), a);
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            if (s1 != null && s1.equals(b.getIntent().getDataString()))
            {
                Logger.e((new StringBuilder("Failed to load landing page ")).append(s1).append(" with error ").append(i).append(" ").append(s).toString());
                LandingPageActivity.a(b, Integer.valueOf(i));
            }
        }

        _cls1(ProgressBar progressbar)
        {
            b = LandingPageActivity.this;
            a = progressbar;
            super();
        }
    }

}
