// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.animation.Animator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.view.MraidView;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.jar.JarFile;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TapjoyUtil, TapjoyConnectCore, TapjoyLog, 
//            TapjoyVideo, TJEventData, TJEventManager, TJEvent, 
//            TJEventCallback, TapjoyCache, TJCOffers

public class TJAdUnitView extends Activity
{
    private class TJAdUnitViewListener
        implements MraidViewListener
    {

        final TJAdUnitView this$0;

        public boolean onClose()
        {
            finish();
            return false;
        }

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            if (bridge.shouldClose)
            {
                String as[] = new String[5];
                as[0] = "Uncaught";
                as[1] = "uncaught";
                as[2] = "Error";
                as[3] = "error";
                as[4] = "not defined";
                TapjoyLog.i("TJAdUnitView", "shouldClose...");
                int j = as.length;
                for (int i = 0; i < j; i++)
                {
                    String s = as[i];
                    if (consolemessage.message().contains(s))
                    {
                        handleClose();
                    }
                }

            }
            return true;
        }

        public boolean onEventFired()
        {
            return false;
        }

        public boolean onExpand()
        {
            return false;
        }

        public boolean onExpandClose()
        {
            return false;
        }

        public void onPageFinished(WebView webview, String s)
        {
            handleWebViewOnPageFinished(webview, s);
            if (isLegacyView)
            {
                progressBar.setVisibility(8);
            }
            bridge.display();
            if (webView != null && webView.isMraid())
            {
                bridge.allowRedirect = false;
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onPageStarted: ").append(s).toString());
            if (isLegacyView)
            {
                progressBar.setVisibility(0);
                progressBar.bringToFront();
            }
            if (bridge != null)
            {
                bridge.allowRedirect = true;
                bridge.customClose = false;
                bridge.shouldClose = false;
            }
        }

        public boolean onReady()
        {
            return false;
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            handleWebViewOnReceivedError(webview, i, s, s1);
        }

        public boolean onResize()
        {
            return false;
        }

        public boolean onResizeClose()
        {
            return false;
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            String s1;
            if (!isNetworkAvailable())
            {
                handleWebViewOnReceivedError(webview, 0, "Connection not properly established", s);
                return true;
            }
            redirectedActivity = false;
            s1 = null;
            String s2 = (new URL("https://ws.tapjoyads.com/")).getHost();
            s1 = s2;
_L2:
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("interceptURL: ").append(s).append(" with host ").append(s1).toString());
            if (webView != null && webView.isMraid() && s.contains("mraid"))
            {
                return false;
            }
            if (viewType == 4 && s.contains("offer_wall"))
            {
                finishWithResult("offer_wall");
                return true;
            }
            if (viewType == 4 && s.contains("tjvideo"))
            {
                finishWithResult("tjvideo");
                return true;
            }
            if (s.startsWith("tjvideo://"))
            {
                handleTJVideoURL(s);
                return true;
            }
            if (s.contains("showOffers"))
            {
                TapjoyLog.i("TJAdUnitView", "showOffers");
                (new TJCOffers(TJAdUnitView.this)).showOffers(null);
                return true;
            }
            if (s.contains("dismiss"))
            {
                TapjoyLog.i("TJAdUnitView", "dismiss");
                finish();
                return true;
            }
            if (s1 != null && s.contains(s1) || s.contains("tjyoutubevideo=true") || s.contains(TapjoyConnectCore.getRedirectDomain()) || s.contains(TapjoyUtil.getRedirectDomain(TapjoyConnectCore.getEventURL())))
            {
                TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("Open redirecting URL:").append(s).toString());
                ((MraidView)webview).loadUrlStandard(s);
                return true;
            }
            if (bridge.allowRedirect)
            {
                redirectedActivity = true;
                return false;
            } else
            {
                webview.loadUrl(s);
                return true;
            }
            MalformedURLException malformedurlexception;
            malformedurlexception;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private TJAdUnitViewListener()
        {
            this$0 = TJAdUnitView.this;
            super();
        }

    }


    private static final int CLOSE_BUTTON_OFFSET = 10;
    private static final long DELAY_BEFORE_CLOSE_FADE_IN = 2000L;
    private static final long DURATION_OF_CLOSE_FADE_IN = 500L;
    private static final String TAG = "TJAdUnitView";
    protected TJAdUnitJSBridge bridge;
    private String callbackID;
    private ImageButton closeButton;
    private boolean closeButtonVisible;
    private String connectivityErrorMessage;
    private TJEvent event;
    private TJEventData eventData;
    protected int historyIndex;
    private boolean isLegacyView;
    protected RelativeLayout layout;
    protected String offersURL;
    protected boolean pauseCalled;
    private ProgressBar progressBar;
    protected boolean redirectedActivity;
    protected boolean skipOfferWall;
    protected String url;
    private int viewType;
    protected MraidView webView;

    public TJAdUnitView()
    {
        layout = null;
        webView = null;
        offersURL = null;
        url = null;
        pauseCalled = false;
        skipOfferWall = false;
        viewType = 0;
        isLegacyView = false;
        historyIndex = 0;
        closeButtonVisible = true;
        connectivityErrorMessage = "A connection error occurred loading this content.";
    }

    private void finishActivity()
    {
        bridge.disable();
        if (viewType == 4)
        {
            finishWithResult("offer_wall");
        } else
        if (this != null)
        {
            finish();
            return;
        }
    }

    private void finishWithResult(String s)
    {
        Intent intent = new Intent();
        intent.putExtra("result", s);
        setResult(-1, intent);
        finish();
    }

    private Bitmap getCloseBitmap()
    {
        Object obj;
        Bitmap bitmap;
        obj = null;
        if (!closeButtonVisible)
        {
            obj = getTransparentCloseBitmap();
        }
        bitmap = ((Bitmap) (obj));
        if (obj != null) goto _L2; else goto _L1
_L1:
        Object obj1;
        android.graphics.BitmapFactory.Options options;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        byte abyte0[] = (byte[])(byte[])TapjoyUtil.getResource("tj_close_button.png");
        if (abyte0 != null)
        {
            BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            obj = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        }
        obj1 = obj;
        if (obj != null) goto _L4; else goto _L3
_L3:
        int i;
        try
        {
            obj = com/tapjoy/TJAdUnitView.getClassLoader().getResource("com/tapjoy/res/tj_close_button.png");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (obj != null) goto _L6; else goto _L5
_L5:
        obj = getAssets();
        BitmapFactory.decodeStream(((AssetManager) (obj)).open("com/tapjoy/res/tj_close_button.png"), null, options);
        obj = ((AssetManager) (obj)).open("com/tapjoy/res/tj_close_button.png");
_L7:
        obj1 = BitmapFactory.decodeStream(((InputStream) (obj)));
        ((InputStream) (obj)).close();
_L4:
        float f = TapjoyConnectCore.getDeviceScreenDensityScale();
        bitmap = ((Bitmap) (obj1));
        if (obj1 != null)
        {
            bitmap = Bitmap.createScaledBitmap(((Bitmap) (obj1)), (int)((float)options.outWidth * f), (int)((float)options.outHeight * f), true);
        }
_L2:
        return bitmap;
_L6:
        obj1 = ((URL) (obj)).getFile();
        obj = obj1;
        if (((String) (obj1)).startsWith("jar:"))
        {
            obj = ((String) (obj1)).substring(4);
        }
        obj1 = obj;
        if (((String) (obj)).startsWith("file:"))
        {
            obj1 = ((String) (obj)).substring(5);
        }
        i = ((String) (obj1)).indexOf("!");
        obj = obj1;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_226;
        }
        obj = ((String) (obj1)).substring(0, i);
        obj = new JarFile(((String) (obj)));
        java.util.jar.JarEntry jarentry = ((JarFile) (obj)).getJarEntry("com/tapjoy/res/tj_close_button.png");
        BitmapFactory.decodeStream(((JarFile) (obj)).getInputStream(jarentry), null, options);
        obj = ((JarFile) (obj)).getInputStream(jarentry);
          goto _L7
    }

    private Bitmap getTransparentCloseBitmap()
    {
        Bitmap bitmap;
        try
        {
            float f = TapjoyConnectCore.getDeviceScreenDensityScale();
            bitmap = Bitmap.createBitmap((int)(50F * f), (int)(50F * f), android.graphics.Bitmap.Config.ARGB_8888);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    private void handleTJVideoURL(String s)
    {
        Object obj = TapjoyUtil.convertURLParams(s.substring(s.indexOf("://") + "://".length()), true);
        s = (String)((Map) (obj)).get("video_id");
        String s1 = (String)((Map) (obj)).get("amount");
        String s2 = (String)((Map) (obj)).get("currency_name");
        String s3 = (String)((Map) (obj)).get("click_url");
        String s4 = (String)((Map) (obj)).get("video_complete_url");
        obj = (String)((Map) (obj)).get("video_url");
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_id: ").append(s).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("amount: ").append(s1).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("currency_name: ").append(s2).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("click_url: ").append(s3).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_complete_url: ").append(s4).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_url: ").append(((String) (obj))).toString());
        if (TapjoyVideo.getInstance().startVideo(s, s2, s1, s3, s4, ((String) (obj))))
        {
            TapjoyLog.i("TJAdUnitView", "Video started successfully");
            return;
        }
        TapjoyLog.e("TJAdUnitView", (new StringBuilder()).append("Unable to play video: ").append(s).toString());
        s = (new android.app.AlertDialog.Builder(this)).setTitle("").setMessage("Unable to play video.").setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

            final TJAdUnitView this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
        }).create();
        try
        {
            s.show();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            TapjoyLog.e("TJAdUnitView", (new StringBuilder()).append("e: ").append(s.toString()).toString());
        }
    }

    public void finish()
    {
        if (viewType != 1 && viewType != 4)
        {
            Intent intent = new Intent();
            intent.putExtra("result", Boolean.TRUE);
            intent.putExtra("callback_id", callbackID);
            setResult(-1, intent);
        }
        super.finish();
    }

    public void handleClose()
    {
        if (webView.videoPlaying())
        {
            webView.videoViewCleanup();
            return;
        }
        if (bridge.customClose)
        {
            TapjoyLog.i("TJAdUnitView", "customClose");
            if (bridge.shouldClose)
            {
                finishActivity();
                return;
            } else
            {
                TapjoyLog.i("TJAdUnitView", "closeRequested...");
                bridge.closeRequested();
                TimerTask timertask = new TimerTask() {

                    final TJAdUnitView this$0;

                    public void run()
                    {
                        if (bridge.shouldClose)
                        {
                            TapjoyLog.i("TJAdUnitView", "customClose timeout");
                            finishActivity();
                        }
                    }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
                };
                (new Timer()).schedule(timertask, 1000L);
                return;
            }
        } else
        {
            finishActivity();
            return;
        }
    }

    public void handleWebViewOnPageFinished(WebView webview, String s)
    {
        TapjoyLog.i("TJAdUnitView", "handleWebViewOnPageFinished");
    }

    public void handleWebViewOnReceivedError(WebView webview, int i, String s, String s1)
    {
        TapjoyLog.i("TJAdUnitView", "handleWebViewError");
        if (!isFinishing())
        {
            (new android.app.AlertDialog.Builder(this)).setMessage(connectivityErrorMessage).setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                final TJAdUnitView this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    dialoginterface.cancel();
                }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
            }).create().show();
        }
    }

    protected void initUI()
    {
        Object obj;
        boolean flag;
        TapjoyLog.i("TJAdUnitView", "initUI");
        flag = false;
        obj = getIntent().getExtras();
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((Bundle) (obj)).getString("DISPLAY_AD_URL") == null) goto _L4; else goto _L3
_L3:
        skipOfferWall = true;
        offersURL = ((Bundle) (obj)).getString("DISPLAY_AD_URL");
_L10:
        Object obj1;
        String s;
        eventData = (TJEventData)((Bundle) (obj)).getSerializable("tjevent");
        if (eventData != null)
        {
            event = TJEventManager.get(eventData.guid);
        }
        viewType = ((Bundle) (obj)).getInt("view_type");
        obj1 = ((Bundle) (obj)).getString("html");
        s = ((Bundle) (obj)).getString("base_url");
        url = ((Bundle) (obj)).getString("url");
        callbackID = ((Bundle) (obj)).getString("callback_id");
        isLegacyView = ((Bundle) (obj)).getBoolean("legacy_view");
        if (webView != null) goto _L2; else goto _L5
_L5:
        webView = new MraidView(this);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setListener(new TJAdUnitViewListener());
        bridge = new TJAdUnitJSBridge(this, webView, eventData);
        int i;
        if (viewType == 1)
        {
            TapjoyLog.i("TJAdUnitView", "Loading event data");
            i = ((flag) ? 1 : 0);
            if (event != null)
            {
                webView.loadDataWithBaseURL(eventData.baseURL, eventData.httpResponse, "text/html", "utf-8", null);
                webView.setVisibility(4);
                TapjoyConnectCore.viewWillOpen(4);
                i = ((flag) ? 1 : 0);
                if (event.getCallback() != null)
                {
                    event.getCallback().contentDidShow(event);
                    i = ((flag) ? 1 : 0);
                }
            }
        } else
        {
            if (obj1 != null && ((String) (obj1)).length() > 0)
            {
                TapjoyLog.i("TJAdUnitView", "Loading HTML data");
                if (isLegacyView)
                {
                    webView.loadDataWithBaseURL(s, ((String) (obj1)), "text/html", "utf-8", null);
                } else
                {
                    webView.loadDataWithBaseURL(null, ((String) (obj1)), "text/html", "utf-8", null);
                }
            } else
            if (url != null)
            {
                TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("Load URL: ").append(url).toString());
                webView.loadUrl(url);
            } else
            if (offersURL != null)
            {
                TapjoyLog.i("TJAdUnitView", "Load Offer Wall URL");
                webView.loadUrl(offersURL);
            }
            i = 1;
        }
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0x60000000));
        obj = new android.view.ViewGroup.LayoutParams(-1, -1);
        layout = new RelativeLayout(this);
        layout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        if (viewType == 1)
        {
            layout.setBackgroundColor(0);
            layout.getBackground().setAlpha(0);
        } else
        {
            layout.setBackgroundColor(-1);
            layout.getBackground().setAlpha(255);
        }
        webView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        if (webView.getParent() != null)
        {
            ((ViewGroup)webView.getParent()).removeView(webView);
        }
        layout.addView(webView, -1, -1);
        setContentView(layout);
        if (isLegacyView && i != 0)
        {
            progressBar = new ProgressBar(this, null, 0x101007a);
            progressBar.setVisibility(0);
            obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(13);
            progressBar.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            layout.addView(progressBar);
        }
        if (webView.isMraid()) goto _L2; else goto _L6
_L6:
        closeButton = new ImageButton(this);
        obj = getCloseBitmap();
        if (obj == null) goto _L8; else goto _L7
_L7:
        closeButton.setImageBitmap(((Bitmap) (obj)));
        closeButton.setBackgroundColor(0xffffff);
        closeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TJAdUnitView this$0;

            public void onClick(View view)
            {
                handleClose();
            }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
        });
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(11);
        i = (int)(-10F * TapjoyConnectCore.getDeviceScreenDensityScale());
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(0, i, i, 0);
        layout.addView(closeButton, ((android.view.ViewGroup.LayoutParams) (obj)));
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            closeButton.setAlpha(0.0F);
            closeButton.setVisibility(0);
            closeButton.setClickable(false);
            (new Handler()).postDelayed(new Runnable() {

                final TJAdUnitView this$0;

                public void run()
                {
                    closeButton.animate().alpha(1.0F).setDuration(500L).setListener(new android.animation.Animator.AnimatorListener() {

                        final _cls2 this$1;

                        public void onAnimationCancel(Animator animator)
                        {
                        }

                        public void onAnimationEnd(Animator animator)
                        {
                            closeButton.setClickable(true);
                        }

                        public void onAnimationRepeat(Animator animator)
                        {
                        }

                        public void onAnimationStart(Animator animator)
                        {
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                }

            
            {
                this$0 = TJAdUnitView.this;
                super();
            }
            }, 2000L);
        }
_L2:
        return;
_L4:
        if (((Bundle) (obj)).getSerializable("URL_PARAMS") != null)
        {
            skipOfferWall = false;
            obj1 = (HashMap)((Bundle) (obj)).getSerializable("URL_PARAMS");
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("urlParams: ").append(obj1).toString());
            offersURL = (new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_offers/webpage?").append(TapjoyUtil.convertURLParams(((Map) (obj1)), false)).toString();
        }
        continue; /* Loop/switch isn't completed */
_L8:
        Log.e("TJAdUnitView", "Error loading bitmap data for close button!");
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected boolean isNetworkAvailable()
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)getSystemService("connectivity");
        return connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isAvailable() && connectivitymanager.getActiveNetworkInfo().isConnected();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        Log.i("TJAdUnitView", (new StringBuilder()).append("onActivityResult requestCode:").append(i).append(", resultCode: ").append(j).toString());
        Bundle bundle = null;
        if (intent != null)
        {
            bundle = intent.getExtras();
        }
        if (bundle != null && bundle.getString("callback_id") != null)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onActivityResult extras: ").append(bundle.keySet()).toString());
            bridge.invokeJSCallback(bundle.getString("callback_id"), new Object[] {
                Boolean.valueOf(bundle.getBoolean("result")), bundle.getString("result_string1"), bundle.getString("result_string2")
            });
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        TapjoyLog.i("TJAdUnitView", "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        initUI();
    }

    protected void onCreate(Bundle bundle)
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            setTheme(0x103000f);
        } else
        {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("TJAdUnitView onCreate: ").append(bundle).toString());
        super.onCreate(bundle);
        initUI();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onDestroy isFinishing: ").append(isFinishing()).toString());
        if (!isFinishing())
        {
            break MISSING_BLOCK_LABEL_167;
        }
        if (viewType == 1)
        {
            bridge.destroy();
            TapjoyConnectCore.viewDidClose(4);
            if (event != null && event.getCallback() != null)
            {
                event.getCallback().contentDidDisappear(event);
            }
            if (event != null && event.isPreloadEnabled() && TapjoyCache.getInstance() != null)
            {
                TapjoyCache.getInstance().decrementEventCacheCount();
            }
            TJEventManager.remove(eventData.guid);
        }
        if (webView == null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        Exception exception;
        try
        {
            android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(webView, new Object[0]);
        }
        catch (Exception exception1) { }
        webView = null;
        return;
        exception;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            handleClose();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onPause()
    {
        super.onPause();
        pauseCalled = true;
        try
        {
            android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(webView, new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        if (webView != null)
        {
            webView.restoreState(bundle);
        }
    }

    protected void onResume()
    {
        super.onResume();
        try
        {
            android/webkit/WebView.getMethod("onResume", new Class[0]).invoke(webView, new Object[0]);
        }
        catch (Exception exception) { }
        if (viewType == 1 && bridge.didLaunchOtherActivity)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onResume bridge.didLaunchOtherActivity callbackID: ").append(bridge.otherActivityCallbackID).toString());
            bridge.invokeJSCallback(bridge.otherActivityCallbackID, new Object[] {
                Boolean.TRUE
            });
            bridge.didLaunchOtherActivity = false;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (webView != null)
        {
            webView.saveState(bundle);
        }
    }

    public void setCloseButtonVisibility(boolean flag)
    {
        if (closeButtonVisible != flag)
        {
            closeButtonVisible = flag;
            if (closeButton != null)
            {
                Bitmap bitmap = getCloseBitmap();
                if (bitmap != null)
                {
                    closeButton.setImageBitmap(bitmap);
                }
            }
        }
    }







}
