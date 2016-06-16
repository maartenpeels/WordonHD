// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.js;

import android.webkit.WebView;

// Referenced classes of package com.urbanairship.js:
//            UAJavascriptInterface

class a
    implements Runnable
{

    final String a;
    final UAJavascriptInterface b;

    public void run()
    {
        UAJavascriptInterface.a(b).loadUrl(a);
    }

    (UAJavascriptInterface uajavascriptinterface, String s)
    {
        b = uajavascriptinterface;
        a = s;
        super();
    }
}
