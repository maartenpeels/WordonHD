// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.os.Bundle;
import com.chartboost.sdk.impl.bd;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            j

class c
    implements Runnable
{

    final c a;
    final String b;
    final Bundle c;
    final j d;

    public void run()
    {
        String s;
        Bundle bundle;
        bd bd1;
        String s1;
        com.chartboost.sdk.impl. ;
        if (a.e("checksum") != null && !a.e("checksum").isEmpty())
        {
            s = a.e("checksum");
        } else
        {
            s = "";
        }
        bd1 = bd.a();
        s1 = b;
         = j.b(d);
        if (c == null)
        {
            bundle = new Bundle();
        } else
        {
            bundle = c;
        }
        bd1.a(s1, s, , null, bundle);
    }

    (j j1,  , String s, Bundle bundle)
    {
        d = j1;
        a = ;
        b = s;
        c = bundle;
        super();
    }
}
