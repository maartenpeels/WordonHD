// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bb, ba, m, dw, 
//            dz, l, du, dx

static final class 
    implements bb
{

    public void b(dz dz1, Map map)
    {
        Uri uri;
        String s;
        s = (String)map.get("u");
        if (s == null)
        {
            dw.z("URL missing from click GMSG.");
            return;
        }
        uri = Uri.parse(s);
        l l1 = dz1.bJ();
        map = uri;
        if (l1 != null)
        {
            map = uri;
            try
            {
                if (l1.a(uri))
                {
                    map = l1.a(uri, dz1.getContext());
                }
            }
            // Misplaced declaration of an exception variable
            catch (Map map)
            {
                dw.z((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
                map = uri;
            }
        }
        map = map.toString();
        (new du(dz1.getContext(), dz1.bK().rq, map)).start();
        return;
    }

    ()
    {
    }
}
