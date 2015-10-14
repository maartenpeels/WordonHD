// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.AsyncTask;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TJWebViewJSInterfaceNotifier

public class TJWebViewJSInterface
{
    private class LoadJSTask extends AsyncTask
    {

        final TJWebViewJSInterface this$0;
        WebView webView;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            return as[0];
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
label0:
            {
                if (webView != null)
                {
                    if (!s.startsWith("javascript:") || android.os.Build.VERSION.SDK_INT < 19)
                    {
                        break label0;
                    }
                    s = s.replaceFirst("javascript:", "");
                    webView.evaluateJavascript(s, null);
                }
                return;
            }
            webView.loadUrl(s);
        }

        public LoadJSTask(WebView webview)
        {
            this$0 = TJWebViewJSInterface.this;
            super();
            webView = webview;
        }
    }


    private static final String TAG = "TJWebViewJSInterface";
    TJWebViewJSInterfaceNotifier notifier;
    WebView webView;

    public TJWebViewJSInterface(WebView webview, TJWebViewJSInterfaceNotifier tjwebviewjsinterfacenotifier)
    {
        webView = webview;
        notifier = tjwebviewjsinterfacenotifier;
    }

    public void callback(ArrayList arraylist, String s, String s1)
    {
        try
        {
            callbackToJavaScript(new JSONArray(arraylist), s, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ArrayList arraylist)
        {
            arraylist.printStackTrace();
        }
    }

    public void callback(Map map, String s, String s1)
    {
        try
        {
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(new JSONObject(map));
            callbackToJavaScript(jsonarray, s, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            TapjoyLog.e("TJWebViewJSInterface", (new StringBuilder()).append("Exception in callback to JS: ").append(map.toString()).toString());
        }
        map.printStackTrace();
    }

    public void callbackToJavaScript(Object obj, String s, String s1)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("arguments", obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            TapjoyLog.e("TJWebViewJSInterface", (new StringBuilder()).append("Exception in callback to JS: ").append(((Exception) (obj)).toString()).toString());
            ((Exception) (obj)).printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        if (s.length() > 0)
        {
            jsonobject.put("method", s);
        }
        obj = new JSONObject();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        if (s1.length() > 0)
        {
            ((JSONObject) (obj)).put("callbackId", s1);
        }
        ((JSONObject) (obj)).put("data", jsonobject);
        obj = (new StringBuilder()).append("javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid('").append(obj).append("');").toString();
        (new LoadJSTask(webView)).execute(new String[] {
            obj
        });
        TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("sendToJS: ").append(((String) (obj))).toString());
        return;
    }

    public void dispatchMethod(String s)
    {
        TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("dispatchMethod params: ").append(s).toString());
        try
        {
            s = new JSONObject(s);
            String s1 = s.getJSONObject("data").getString("method");
            TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("method: ").append(s1).toString());
            if (notifier != null)
            {
                notifier.dispatchMethod(s1, s);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }
}
