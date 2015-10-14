// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.a;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.be;
import java.util.Locale;

// Referenced classes of package com.chartboost.sdk:
//            b, Chartboost

class > extends com.chartboost.sdk.impl.
{

    final ging.a a;

    public void a(com.chartboost.sdk.Libraries. , ba ba)
    {
        if (CBUtility.a(b.l()))
        {
             = .("latest-sdk-version");
            if (!TextUtils.isEmpty() && !.equals("5.1.0"))
            {
                CBLogging.a(String.format(Locale.US, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios", new Object[] {
                    "5.1.0", 
                }));
            }
        }
    }

    ging(ging ging)
    {
        a = ging;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/Chartboost$6

/* anonymous class */
    static final class Chartboost._cls6
        implements b.a
    {

        final boolean a;

        public void a()
        {
            if (a)
            {
                be.b();
                ba ba1 = new ba("api/install");
                ba1.b(Chartboost.getValidContext());
                ba1.a(true);
                ba1.a(new com.chartboost.sdk.Libraries.g.k[] {
                    g.a("status", a.a)
                });
                ba1.a(new Chartboost._cls6._cls1(this));
            }
        }

            
            {
                a = flag;
                super();
            }
    }

}
