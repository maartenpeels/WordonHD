// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.js;

import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;

// Referenced classes of package com.urbanairship.js:
//            UAJavascriptInterface

class 
    implements Runnable
{

    final UAJavascriptInterface a;

    public void run()
    {
        UAJavascriptInterface.a(a).getRootView().dispatchKeyEvent(new KeyEvent(0, 4));
        UAJavascriptInterface.a(a).getRootView().dispatchKeyEvent(new KeyEvent(1, 4));
    }
}
