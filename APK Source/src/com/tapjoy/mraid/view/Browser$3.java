// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.view.View;
import android.webkit.WebView;

// Referenced classes of package com.tapjoy.mraid.view:
//            Browser

class this._cls0
    implements android.view.ckListener
{

    final Browser this$0;

    public void onClick(View view)
    {
        ((WebView)findViewById(101)).reload();
    }

    r()
    {
        this$0 = Browser.this;
        super();
    }
}
