// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.net.Uri;
import com.urbanairship.UAirship;
import com.urbanairship.widget.UAWebView;

// Referenced classes of package com.urbanairship.actions:
//            LandingPageAction

class a
    implements Runnable
{

    final Uri a;
    final LandingPageAction b;

    public void run()
    {
        (new UAWebView(UAirship.a().g())).loadUrl(a.toString());
    }

    (LandingPageAction landingpageaction, Uri uri)
    {
        b = landingpageaction;
        a = uri;
        super();
    }
}
