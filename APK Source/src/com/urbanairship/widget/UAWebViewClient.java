// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.widget;

import android.net.Uri;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.Logger;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.actions.ActionRunner;
import com.urbanairship.actions.Situation;
import com.urbanairship.js.NativeBridge;
import com.urbanairship.util.JSONUtils;
import com.urbanairship.util.UriUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UAWebViewClient extends WebViewClient
{

    private ActionRunner a;
    private String b;
    private String c;
    private String d;

    public UAWebViewClient()
    {
        this(ActionRunner.a());
    }

    private UAWebViewClient(ActionRunner actionrunner)
    {
        a = actionrunner;
    }

    private static Object a(String s)
    {
        if (s == null)
        {
            return null;
        }
        List list;
        try
        {
            list = JSONUtils.a(new JSONArray(s));
        }
        catch (JSONException jsonexception)
        {
            return JSONUtils.a(new JSONObject(s));
        }
        return list;
    }

    private void a(Map map)
    {
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Iterator iterator1 = ((List)map.get(s)).iterator();
            while (iterator1.hasNext()) 
            {
                String s1 = (String)iterator1.next();
                try
                {
                    ActionArguments actionarguments = new ActionArguments(Situation.d, a(s1));
                    a.a(s, actionarguments);
                }
                catch (JSONException jsonexception)
                {
                    Logger.a((new StringBuilder("Invalid json. Unable to run action ")).append(s).append(" with args: ").append(s1).toString(), jsonexception);
                }
            }
        }

    }

    private void b(Map map)
    {
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Iterator iterator1 = ((List)map.get(s)).iterator();
            while (iterator1.hasNext()) 
            {
                String s1 = (String)iterator1.next();
                a.a(s, new ActionArguments(Situation.d, s1));
            }
        }

    }

    final void a(String s, String s1, String s2)
    {
        b = s;
        c = s1;
        d = s2;
    }

    public void onPageFinished(WebView webview, String s)
    {
        Logger.d("Loading native bridge");
        s = NativeBridge.a();
        webview.loadUrl((new StringBuilder("javascript:")).append(s).toString());
    }

    public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, String s, String s1)
    {
        if (b != null && b.equals(s))
        {
            httpauthhandler.proceed(c, d);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        webview = Uri.parse(s);
        if ("uairship".equals(webview.getScheme()))
        {
            Map map = UriUtils.a(webview);
            if ("run-basic-actions".equals(webview.getHost()))
            {
                Logger.d((new StringBuilder("Running actions for URL: ")).append(s).toString());
                b(map);
                return true;
            }
            if ("run-actions".equals(webview.getHost()))
            {
                Logger.d((new StringBuilder("Running actions for URL: ")).append(s).toString());
                a(map);
                return true;
            }
            Logger.a((new StringBuilder("Unrecognized command: ")).append(webview.getHost()).append(" for URL: ").append(s).toString());
        }
        return false;
    }
}
