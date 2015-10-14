// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TreeMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            JavaScriptInterface, WebChromeWrapper, TrustDefenderMobile

public class JSExecutor
{

    private static final Method m_evaluateJavascript;
    private static final Method m_getDefaultUserAgent;
    private static final Method m_setPluginState;
    private static final TreeMap webkitVersions;
    private final String TAG;
    private boolean javascriptInterfaceBroken;
    private final String jsInterfaceName;
    private boolean m_inited;
    private JavaScriptInterface m_jsInterface;
    private WebSettings m_webSettings;
    private WebView m_webView;

    public JSExecutor(Context context, JavaScriptInterface javascriptinterface, boolean flag)
    {
label0:
        {
            super();
            m_webView = null;
            m_inited = false;
            m_jsInterface = null;
            jsInterfaceName = "androidJSInterface";
            TAG = com/threatmetrix/TrustDefenderMobile/JSExecutor.getName();
            javascriptInterfaceBroken = false;
            String s = TAG;
            (new StringBuilder("JSExecutor() Build: ")).append(android.os.Build.VERSION.RELEASE);
            javascriptInterfaceBroken = isBrokenJSInterface();
            m_jsInterface = javascriptinterface;
            if (flag)
            {
                m_webView = new WebView(context);
                if (m_jsInterface == null)
                {
                    m_jsInterface = new JavaScriptInterface(null);
                }
                context = new WebViewClient();
                m_webSettings = m_webView.getSettings();
                m_webSettings.setJavaScriptEnabled(true);
                if (m_setPluginState != null)
                {
                    try
                    {
                        m_setPluginState.invoke(m_webSettings, new Object[] {
                            android.webkit.WebSettings.PluginState.ON
                        });
                    }
                    // Misplaced declaration of an exception variable
                    catch (JavaScriptInterface javascriptinterface)
                    {
                        Log.e(TAG, "m_setPluginState invoke failed: ", javascriptinterface);
                    }
                    // Misplaced declaration of an exception variable
                    catch (JavaScriptInterface javascriptinterface)
                    {
                        Log.e(TAG, "m_setPluginState invoke failed: ", javascriptinterface);
                    }
                    // Misplaced declaration of an exception variable
                    catch (JavaScriptInterface javascriptinterface)
                    {
                        Log.e(TAG, "m_setPluginState invoke failed: ", javascriptinterface);
                    }
                }
                m_webView.setVisibility(4);
                m_webView.setWebViewClient(context);
                if (!hasAsyncInterface())
                {
                    break label0;
                }
                if (m_jsInterface.latch == null)
                {
                    Log.e(TAG, "alternate JS interface but no global latch");
                }
                context = TAG;
            }
            return;
        }
        if (!javascriptInterfaceBroken)
        {
            m_webView.addJavascriptInterface(m_jsInterface, "androidJSInterface");
            return;
        }
        if (m_jsInterface.latch == null)
        {
            Log.e(TAG, "broken JS interface but no global latch");
        }
        context = TAG;
        m_webView.setWebChromeClient(new WebChromeWrapper(m_jsInterface));
    }

    public static boolean hasAsyncInterface()
    {
        return m_evaluateJavascript != null;
    }

    public static boolean isBrokenJSInterface()
    {
        boolean flag;
        try
        {
            flag = android.os.Build.VERSION.RELEASE.startsWith("2.3");
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    public String getJSResult(String s)
        throws InterruptedException
    {
        if (!m_inited)
        {
            return null;
        }
        if (Thread.currentThread().isInterrupted())
        {
            return "";
        }
        String s1 = null;
        CountDownLatch countdownlatch = s1;
        if (!javascriptInterfaceBroken)
        {
            countdownlatch = s1;
            if (!hasAsyncInterface())
            {
                countdownlatch = new CountDownLatch(1);
                m_jsInterface.setLatch(countdownlatch);
            }
        }
        if (hasAsyncInterface())
        {
            s = (new StringBuilder("javascript:(function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})();").toString();
        } else
        if (!javascriptInterfaceBroken)
        {
            s = (new StringBuilder("javascript:window.androidJSInterface.getString((function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})());").toString();
        } else
        {
            s = (new StringBuilder("javascript:alert((function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})());").toString();
        }
        s1 = TAG;
        (new StringBuilder("getJSResult() attempting to execute: ")).append(s);
        m_jsInterface.returnedValue = null;
        if (hasAsyncInterface())
        {
            boolean flag = false;
            try
            {
                m_evaluateJavascript.invoke(m_webView, new Object[] {
                    s, m_jsInterface
                });
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", s);
                flag = true;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", s);
                flag = true;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", s);
                flag = true;
            }
            if (flag && m_jsInterface.latch != null)
            {
                m_jsInterface.latch.countDown();
            }
        } else
        {
            m_webView.loadUrl(s);
        }
        if (!javascriptInterfaceBroken && !hasAsyncInterface())
        {
            if (countdownlatch != null)
            {
                if (!countdownlatch.await(5L, TimeUnit.SECONDS))
                {
                    s = TAG;
                }
                s = TAG;
                (new StringBuilder("getJSResult() count = ")).append(countdownlatch.getCount());
            } else
            {
                Log.e(TAG, "latch == null");
            }
            if (m_jsInterface.returnedValue == null)
            {
                s = TAG;
            } else
            {
                s = TAG;
                (new StringBuilder("getJSResult() After latch: got ")).append(m_jsInterface.returnedValue);
            }
            return m_jsInterface.returnedValue;
        } else
        {
            return null;
        }
    }

    public String getUserAgentString(boolean flag, Context context)
    {
        String s1 = "";
        String s = s1;
        if (m_getDefaultUserAgent != null)
        {
            try
            {
                s = (String)m_getDefaultUserAgent.invoke(null, new Object[] {
                    context
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", context);
                s = s1;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", context);
                s = s1;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e(TAG, "getJSResult() invoke failed: ", context);
                s = s1;
            }
        }
        if (s != null && !s.isEmpty())
        {
            return s;
        }
        context = s;
        if (flag)
        {
            context = s;
            if (m_webSettings != null)
            {
                context = m_webSettings.getUserAgentString();
            }
        }
        if (context != null && !context.isEmpty())
        {
            return context;
        }
        context = TAG;
        String s2;
        if (webkitVersions.containsKey(Integer.valueOf(android.os.Build.VERSION.SDK_INT)))
        {
            context = (String)webkitVersions.get(Integer.valueOf(android.os.Build.VERSION.SDK_INT));
        } else
        {
            context = (new StringBuilder()).append((String)webkitVersions.lastEntry().getValue()).append("+").toString();
        }
        s1 = Locale.getDefault().getLanguage();
        s2 = Locale.getDefault().getCountry();
        s = s1;
        if (!s2.isEmpty())
        {
            s = (new StringBuilder()).append(s1).append("-").append(s2).toString();
        }
        return (new StringBuilder("Mozilla/5.0 (Linux; U; Android ")).append(android.os.Build.VERSION.RELEASE).append("; ").append(s.toLowerCase()).append("; ").append(Build.MODEL).append(" Build/").append(Build.DISPLAY).append(") AppleWebKit/").append(context).append(" (KHTML, like Gecko) Version/4.0 Mobile Safari/").append(context).append(" ").append(TrustDefenderMobile.version).toString();
    }

    public void init()
        throws InterruptedException
    {
        if (!m_inited)
        {
            if (m_webView == null)
            {
                m_inited = true;
            } else
            {
                Object obj = TAG;
                obj = null;
                String s2;
                if (!javascriptInterfaceBroken && !hasAsyncInterface())
                {
                    obj = new CountDownLatch(1);
                    s2 = "<html><head></head><body onLoad='javascript:window.androidJSInterface.getString(1)'></body></html>";
                    m_jsInterface.setLatch(((CountDownLatch) (obj)));
                    m_jsInterface.returnedValue = null;
                } else
                {
                    s2 = "<html><head></head><body></body></html>";
                }
                if (!Thread.currentThread().isInterrupted())
                {
                    m_webView.loadData(s2, "text/html", null);
                    if (!javascriptInterfaceBroken && obj != null && !hasAsyncInterface())
                    {
                        if (!((CountDownLatch) (obj)).await(5L, TimeUnit.SECONDS))
                        {
                            Log.e(TAG, "timed out waiting for javascript");
                            return;
                        }
                        m_inited = true;
                        s2 = TAG;
                        (new StringBuilder("in init() count = ")).append(((CountDownLatch) (obj)).getCount());
                        if (m_jsInterface.returnedValue == null)
                        {
                            String s = TAG;
                            return;
                        } else
                        {
                            String s1 = TAG;
                            (new StringBuilder("init() After latch: got ")).append(m_jsInterface.returnedValue);
                            return;
                        }
                    } else
                    {
                        m_inited = true;
                        return;
                    }
                }
            }
        }
    }

    static 
    {
        Object obj;
        Class aclass1[];
        aclass1 = new Class[2];
        aclass1[0] = java/lang/String;
        aclass1[1] = android/webkit/ValueCallback;
        obj = null;
        Method method = android/webkit/WebView.getMethod("evaluateJavascript", aclass1);
        obj = method;
_L6:
        Class aclass[];
        m_evaluateJavascript = ((Method) (obj));
        aclass = new Class[1];
        aclass1[0] = android/content/Context;
        obj = null;
        aclass = android/webkit/WebSettings.getMethod("getDefaultUserAgent", aclass);
        obj = aclass;
_L4:
        m_getDefaultUserAgent = ((Method) (obj));
        aclass = new Class[1];
        aclass1[0] = android/webkit/WebSettings$RenderPriority;
        obj = null;
        aclass = android/webkit/WebSettings.getMethod("setPluginState", aclass);
        obj = aclass;
_L2:
        m_setPluginState = ((Method) (obj));
        obj = new TreeMap();
        webkitVersions = ((TreeMap) (obj));
        ((TreeMap) (obj)).put(Integer.valueOf(9), "533.1");
        webkitVersions.put(Integer.valueOf(10), "533.1");
        webkitVersions.put(Integer.valueOf(11), "533.1");
        webkitVersions.put(Integer.valueOf(12), "533.1");
        webkitVersions.put(Integer.valueOf(13), "534.13");
        webkitVersions.put(Integer.valueOf(14), "534.30");
        webkitVersions.put(Integer.valueOf(15), "534.30");
        webkitVersions.put(Integer.valueOf(16), "534.30");
        webkitVersions.put(Integer.valueOf(17), "534.30");
        webkitVersions.put(Integer.valueOf(18), "534.30");
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        if (true) goto _L2; else goto _L1
_L1:
        nosuchmethodexception;
        if (true) goto _L4; else goto _L3
_L3:
        nosuchmethodexception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
