// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;

public class ClickHandler
{

    private AtomicBoolean marketIntentLaunched;
    private AdModel model;

    public ClickHandler(AdModel admodel)
    {
        marketIntentLaunched = new AtomicBoolean(false);
        model = admodel;
    }

    private boolean launchIfMarket(Context context, String s)
    {
        if (Utils.isAmazon())
        {
            if (s.startsWith("amzn"))
            {
                launchMarketIntent(context, s);
                return true;
            }
            if (s.contains("amazon.com/gp/mas/dl/android?"))
            {
                int i = s.indexOf("android?");
                launchMarketIntent(context, (new StringBuilder()).append("amzn://apps/").append(s.substring(i)).toString());
                return true;
            }
        } else
        {
            if (s.startsWith("market"))
            {
                launchMarketIntent(context, s);
                return true;
            }
            if (s.contains("play.google"))
            {
                int j = s.indexOf("details?");
                if (j == -1)
                {
                    launchMarketIntent(context, s);
                } else
                {
                    launchMarketIntent(context, (new StringBuilder()).append("market://").append(s.substring(j)).toString());
                }
                return true;
            }
        }
        return false;
    }

    private void launchMarketIntent(Context context, String s)
    {
        if (!marketIntentLaunched.compareAndSet(false, true))
        {
            break MISSING_BLOCK_LABEL_69;
        }
        MetricsTracker.getEvent(model).marketOpenedTime(System.currentTimeMillis()).commit();
        s = new Intent("android.intent.action.VIEW", Uri.parse(s));
        int i = 0x20000;
        if (!(context instanceof Activity))
        {
            i = 0x20000 | 0x10000000;
        }
        s.addFlags(i);
        context.startActivity(s);
        return;
        s;
        try
        {
            if (!Utils.isAmazon());
            Toast.makeText(context, "Market not found, cannot install", 1).show();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.log("(LAUNCH MARKET FAILED)");
        }
        Logger.trace(context);
        return;
    }

    public void doClick(Context context)
    {
        doClick(context, model.actionUrl, null);
    }

    public void doClick(final Context context, final String url, final String customPackageName)
    {
        Manager.handler.post(new Runnable() {

            final ClickHandler this$0;
            final Context val$context;
            final String val$customPackageName;
            final String val$url;

            public void run()
            {
                MetricsTracker.getEvent(model).adClicked(true).adClickedTime(System.currentTimeMillis()).commit();
                if (model.onClick(context, customPackageName).booleanValue())
                {
                    try
                    {
                        ProgressDialog progressdialog = ProgressDialog.show(context, "", "Loading...", true);
                        Manager.handler.postDelayed(progressdialog. new Runnable() {

                            final _cls1 this$1;
                            final ProgressDialog val$marketSpinner;

                            public void run()
                            {
                                try
                                {
                                    marketSpinner.dismiss();
                                    return;
                                }
                                catch (IllegalArgumentException illegalargumentexception)
                                {
                                    Logger.trace(illegalargumentexception);
                                }
                            }

            
            {
                this$1 = final__pcls1;
                marketSpinner = ProgressDialog.this;
                super();
            }
                        }, 3000L);
                    }
                    catch (Exception exception)
                    {
                        Logger.trace(exception);
                    }
                    if (model.getAdRequest() != null)
                    {
                        model.getAdRequest().getOnStatusListener().onClick(model.getTag());
                    }
                    gotoMarket(context, url);
                }
            }

            
            {
                this$0 = ClickHandler.this;
                context = context1;
                customPackageName = s;
                url = s1;
                super();
            }
        });
    }

    protected void gotoMarket(final Context context, final String adUrl)
    {
        marketIntentLaunched.set(false);
        if (launchIfMarket(context, adUrl))
        {
            return;
        } else
        {
            final WebView webView = new WebView(context);
            webView.setWebViewClient(new WebViewClient() {

                final ClickHandler this$0;
                final Context val$context;

                public void onLoadResource(WebView webview, String s)
                {
                    super.onLoadResource(webview, s);
                    if (launchIfMarket(context, s))
                    {
                        webview.stopLoading();
                    }
                }

                public void onPageFinished(WebView webview, String s)
                {
                    super.onPageFinished(webview, s);
                }

                public void onPageStarted(WebView webview, String s, Bitmap bitmap)
                {
                    super.onPageStarted(webview, s, bitmap);
                    if (launchIfMarket(context, s))
                    {
                        webview.stopLoading();
                    }
                }

                public void onReceivedError(WebView webview, int i, String s, String s1)
                {
                    super.onReceivedError(webview, i, s, s1);
                }

                public boolean shouldOverrideUrlLoading(WebView webview, String s)
                {
                    return super.shouldOverrideUrlLoading(webview, s);
                }

            
            {
                this$0 = ClickHandler.this;
                context = context1;
                super();
            }
            });
            webView.setWebChromeClient(new WebChromeClient());
            webView.getSettings().setJavaScriptEnabled(true);
            new Timer();
            Manager.handler.postDelayed(new Runnable() {

                final ClickHandler this$0;
                final String val$adUrl;
                final WebView val$webView;

                public void run()
                {
                    if (!marketIntentLaunched.get())
                    {
                        Manager.handler.post(new Runnable() {

                            final _cls3 this$1;

                            public void run()
                            {
                                webView.loadUrl(adUrl);
                            }

            
            {
                this$1 = _cls3.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = ClickHandler.this;
                webView = webview;
                adUrl = s;
                super();
            }
            }, 0L);
            Manager.handler.postDelayed(new Runnable() {

                final ClickHandler this$0;
                final String val$adUrl;
                final WebView val$webView;

                public void run()
                {
                    if (!marketIntentLaunched.get())
                    {
                        Manager.handler.post(new Runnable() {

                            final _cls4 this$1;

                            public void run()
                            {
                                webView.loadUrl(adUrl);
                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = ClickHandler.this;
                webView = webview;
                adUrl = s;
                super();
            }
            }, 750L);
            Manager.handler.postDelayed(new Runnable() {

                final ClickHandler this$0;
                final String val$adUrl;
                final Context val$context;

                public void run()
                {
                    if (!marketIntentLaunched.get())
                    {
                        launchMarketIntent(context, adUrl);
                    }
                }

            
            {
                this$0 = ClickHandler.this;
                context = context1;
                adUrl = s;
                super();
            }
            }, 1250L);
            return;
        }
    }




}
