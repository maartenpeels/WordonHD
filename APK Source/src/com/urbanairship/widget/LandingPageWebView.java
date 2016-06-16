// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.UAirship;
import com.urbanairship.js.UAJavascriptInterface;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.impl.auth.BasicScheme;

// Referenced classes of package com.urbanairship.widget:
//            UAWebView, UAWebViewClient

public class LandingPageWebView extends UAWebView
{

    public LandingPageWebView(Context context)
    {
        super(context);
    }

    public LandingPageWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public LandingPageWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void a(String s)
    {
        AirshipConfigOptions airshipconfigoptions = UAirship.a().h();
        if (c() != null && (c() instanceof UAWebViewClient))
        {
            ((UAWebViewClient)c()).a(Uri.parse(s).getHost(), airshipconfigoptions.b(), airshipconfigoptions.c());
        }
    }

    final void a()
    {
        super.a();
        addJavascriptInterface(new UAJavascriptInterface(this), "UAirship");
    }

    public void loadUrl(String s)
    {
        b();
        if (s == null || !s.startsWith(UAirship.a().h().g))
        {
            super.loadUrl(s);
            return;
        }
        a(s);
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            Object obj = UAirship.a().h();
            obj = BasicScheme.authenticate(new UsernamePasswordCredentials(((AirshipConfigOptions) (obj)).b(), ((AirshipConfigOptions) (obj)).c()), "UTF-8", false);
            HashMap hashmap = new HashMap();
            hashmap.put(((Header) (obj)).getName(), ((Header) (obj)).getValue());
            super.loadUrl(s, hashmap);
            return;
        } else
        {
            super.loadUrl(s);
            return;
        }
    }

    public void loadUrl(String s, Map map)
    {
        b();
        if (s != null && s.startsWith(UAirship.a().h().g))
        {
            a(s);
        }
        super.loadUrl(s, map);
    }
}
