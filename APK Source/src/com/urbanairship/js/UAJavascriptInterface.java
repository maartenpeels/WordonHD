// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.js;

import android.webkit.WebView;
import com.urbanairship.Logger;
import com.urbanairship.actions.ActionResult;
import com.urbanairship.actions.ActionRunner;
import com.urbanairship.richpush.RichPushMessage;
import org.json.JSONException;
import org.json.JSONObject;

public class UAJavascriptInterface
{

    private final RichPushMessage a;
    private final ActionRunner b;
    private final WebView c;

    public UAJavascriptInterface(WebView webview)
    {
        this(webview, ActionRunner.a());
    }

    private UAJavascriptInterface(WebView webview, ActionRunner actionrunner)
    {
        c = webview;
        b = actionrunner;
        a = null;
    }

    static WebView a(UAJavascriptInterface uajavascriptinterface)
    {
        return uajavascriptinterface.c;
    }

    static String a(String s, ActionResult actionresult)
    {
        switch (_cls4.a[actionresult.d().ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return String.format("Action %s not found", new Object[] {
                s
            });

        case 2: // '\002'
            return String.format("Action %s rejected its arguments", new Object[] {
                s
            });

        case 3: // '\003'
            break;
        }
        if (actionresult.c() != null)
        {
            return actionresult.c().getMessage();
        } else
        {
            return String.format("Action %s failed with unspecified error", new Object[] {
                s
            });
        }
    }

    static void a(UAJavascriptInterface uajavascriptinterface, String s, Object obj, String s1)
    {
        s1 = String.format("'%s'", new Object[] {
            s1
        });
        JSONObject jsonobject;
        if (s == null)
        {
            s = "null";
        } else
        {
            s = String.format("new Error('%s')", new Object[] {
                s
            });
        }
        if (obj == null) goto _L2; else goto _L1
_L1:
        jsonobject = new JSONObject();
        jsonobject.put("value", obj);
        obj = String.format("'%s'", new Object[] {
            jsonobject
        });
_L4:
        s = String.format("javascript:UAirship.finishAction(%s, %s, %s);", new Object[] {
            s, obj, s1
        });
        uajavascriptinterface.c.post(uajavascriptinterface. new _cls3(s));
        return;
        obj;
        Logger.d("Unable to encode JS result value");
_L2:
        obj = "null";
        if (true) goto _L4; else goto _L3
_L3:
    }

    private class _cls4
    {

        static final int a[];

        static 
        {
            a = new int[com.urbanairship.actions.ActionResult.Status.values().length];
            try
            {
                a[com.urbanairship.actions.ActionResult.Status.c.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[com.urbanairship.actions.ActionResult.Status.b.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[com.urbanairship.actions.ActionResult.Status.d.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror)
            {
                return;
            }
        }
    }


    private class _cls3
        implements Runnable
    {

        final String a;
        final UAJavascriptInterface b;

        public void run()
        {
            UAJavascriptInterface.a(b).loadUrl(a);
        }

        _cls3(String s)
        {
            b = UAJavascriptInterface.this;
            a = s;
            super();
        }
    }

}
