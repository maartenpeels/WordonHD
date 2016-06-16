// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.a;
import com.chartboost.sdk.b;

// Referenced classes of package com.chartboost.sdk.InPlay:
//            a

public final class CBInPlay
{

    private static final String a = com/chartboost/sdk/InPlay/CBInPlay.getSimpleName();
    private static com.chartboost.sdk.InPlay.a f = null;
    private String b;
    private Bitmap c;
    private String d;
    private com.chartboost.sdk.Libraries.e.a e;

    CBInPlay()
    {
    }

    public static void cacheInPlay(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b(a, "Inplay location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadInPlay(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return;
        }
        if (f == null)
        {
            f = com.chartboost.sdk.InPlay.a.a();
        }
        f.a(s);
    }

    public static CBInPlay getInPlay(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b(a, "Inplay location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadInPlay(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return null;
        }
        if (f == null)
        {
            f = com.chartboost.sdk.InPlay.a.a();
        }
        return f.c(s);
    }

    public static boolean hasInPlay(String s)
    {
        com.chartboost.sdk.b.p();
        com.chartboost.sdk.b.o();
        com.chartboost.sdk.b.n();
        if (TextUtils.isEmpty(s))
        {
            CBLogging.b(a, "Inplay location cannot be empty");
            if (com.chartboost.sdk.b.d() != null)
            {
                com.chartboost.sdk.b.d().didFailToLoadInPlay(s, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_LOCATION);
            }
            return false;
        }
        if (f == null)
        {
            f = com.chartboost.sdk.InPlay.a.a();
        }
        return f.b(s);
    }

    protected com.chartboost.sdk.Libraries.e.a a()
    {
        return e;
    }

    protected void a(Bitmap bitmap)
    {
        c = bitmap;
    }

    protected void a(com.chartboost.sdk.Libraries.e.a a1)
    {
        e = a1;
    }

    protected void a(String s)
    {
        b = s;
    }

    protected void b(String s)
    {
        d = s;
    }

    public void click()
    {
        com.chartboost.sdk.InPlay.a.a().b(this);
    }

    public Bitmap getAppIcon()
    {
        return c;
    }

    public String getAppName()
    {
        return d;
    }

    public String getLocation()
    {
        return b;
    }

    public void show()
    {
        com.chartboost.sdk.InPlay.a.a().a(this);
    }

}
