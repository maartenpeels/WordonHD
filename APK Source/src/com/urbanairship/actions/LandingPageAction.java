// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import com.urbanairship.util.UriUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

// Referenced classes of package com.urbanairship.actions:
//            Action, ActionArguments, Situation, ActionResult

public class LandingPageAction extends Action
{

    public LandingPageAction()
    {
    }

    private static Uri d(ActionArguments actionarguments)
    {
        Object obj;
        if (actionarguments.a() instanceof Map)
        {
            actionarguments = ((ActionArguments) (((Map)actionarguments.a()).get("url")));
        } else
        {
            actionarguments = ((ActionArguments) (actionarguments.a()));
        }
        if (actionarguments == null)
        {
            obj = null;
        } else
        {
            obj = UriUtils.a(actionarguments);
            if (UAStringUtil.a(((Uri) (obj)).toString()))
            {
                return null;
            }
            actionarguments = ((ActionArguments) (obj));
            if ("u".equals(((Uri) (obj)).getScheme()))
            {
                try
                {
                    actionarguments = URLEncoder.encode(((Uri) (obj)).getSchemeSpecificPart(), "UTF-8");
                }
                // Misplaced declaration of an exception variable
                catch (ActionArguments actionarguments)
                {
                    Logger.a((new StringBuilder("Unable to decode ")).append(((Uri) (obj)).getSchemeSpecificPart()).toString());
                    return null;
                }
                obj = UAirship.a().h();
                actionarguments = Uri.parse((new StringBuilder()).append(((AirshipConfigOptions) (obj)).g).append(((AirshipConfigOptions) (obj)).b()).append("/").append(actionarguments).toString());
            }
            obj = actionarguments;
            if (UAStringUtil.a(actionarguments.getScheme()))
            {
                return Uri.parse((new StringBuilder("https://")).append(actionarguments.toString()).toString());
            }
        }
        return ((Uri) (obj));
    }

    public final boolean b(ActionArguments actionarguments)
    {
        if (!super.b(actionarguments))
        {
            return false;
        }
        return d(actionarguments) != null;
    }

    public final ActionResult c(ActionArguments actionarguments)
    {
        Uri uri = d(actionarguments);
        _cls2.a[actionarguments.b().ordinal()];
        JVM INSTR tableswitch 1 1: default 36
    //                   1 72;
           goto _L1 _L2
_L1:
        actionarguments = (new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", uri)).addFlags(0x30000000).setPackage(UAirship.b());
        UAirship.a().g().startActivity(actionarguments);
_L4:
        return ActionResult.a();
_L2:
        boolean flag;
        if (!(actionarguments.a() instanceof Map))
        {
            break; /* Loop/switch isn't completed */
        }
        actionarguments = ((ActionArguments) (((Map)actionarguments.a()).get("cache_on_receive")));
        if (actionarguments == null || !(actionarguments instanceof Boolean))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = ((Boolean)actionarguments).booleanValue();
_L5:
        if (flag)
        {
            (new Handler(Looper.getMainLooper())).postAtFrontOfQueue(new _cls1(uri));
        }
        if (true) goto _L4; else goto _L3
_L3:
        flag = false;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private class _cls2
    {

        static final int a[];

        static 
        {
            a = new int[Situation.values().length];
            try
            {
                a[Situation.b.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
        }
    }


    private class _cls1
        implements Runnable
    {

        final Uri a;
        final LandingPageAction b;

        public void run()
        {
            (new UAWebView(UAirship.a().g())).loadUrl(a.toString());
        }

        _cls1(Uri uri)
        {
            b = LandingPageAction.this;
            a = uri;
            super();
        }
    }

}
