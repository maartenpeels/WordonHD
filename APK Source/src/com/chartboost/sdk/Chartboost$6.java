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
//            Chartboost, b

static final class a
    implements a
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
            ba1.a(new com.chartboost.sdk.Libraries.ext[] {
                g.a("status", a.a)
            });
            ba1.a(new com.chartboost.sdk.impl.ba.d() {

                final Chartboost._cls6 a;

                public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba2)
                {
                    if (CBUtility.a(b.l()))
                    {
                        a1 = a1.e("latest-sdk-version");
                        if (!TextUtils.isEmpty(a1) && !a1.equals("5.1.0"))
                        {
                            CBLogging.a(String.format(Locale.US, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios", new Object[] {
                                "5.1.0", a1
                            }));
                        }
                    }
                }

            
            {
                a = Chartboost._cls6.this;
                super();
            }
            });
        }
    }

    it>(boolean flag)
    {
        a = flag;
        super();
    }
}
