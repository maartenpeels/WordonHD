// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.app.Activity;
import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            AdColony, a, AdColonyNativeAdView

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        a.runOnUiThread(new Runnable() {

            final AdColony._cls2 a;

            public void run()
            {
                for (int i = 0; i < a.ag.size(); i++)
                {
                    AdColonyNativeAdView adcolonynativeadview = (AdColonyNativeAdView)a.ag.get(i);
                    if (adcolonynativeadview == null || com.jirbo.adcolony.a.b() != adcolonynativeadview.d || adcolonynativeadview.u)
                    {
                        continue;
                    }
                    adcolonynativeadview.A = false;
                    adcolonynativeadview.invalidate();
                    if (adcolonynativeadview.R != null)
                    {
                        adcolonynativeadview.R.a = false;
                        adcolonynativeadview.R.invalidate();
                    }
                }

            }

            
            {
                a = AdColony._cls2.this;
                super();
            }
        });
    }

    _cls1.a(Activity activity)
    {
        a = activity;
        super();
    }
}
