// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Date;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

// Referenced classes of package com.chartboost.sdk.impl:
//            i

public class y
{

    public static long a(String s)
    {
        long l;
        try
        {
            l = DateUtils.parseDate(s).getTime();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return 0L;
        }
        return l;
    }

    public static b.a a(i j)
    {
        long l3 = System.currentTimeMillis();
        Map map = j.c;
        Object obj = (String)map.get("Date");
        Object obj1;
        Exception exception;
        int k;
        boolean flag;
        long l;
        long l1;
        long l2;
        if (obj != null)
        {
            l1 = a(((String) (obj)));
        } else
        {
            l1 = 0L;
        }
        obj = (String)map.get("Cache-Control");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_302;
        }
        flag = true;
        obj = ((String) (obj)).split(",");
        k = 0;
        l = 0L;
        if (k < obj.length) goto _L2; else goto _L1
_L1:
        k = ((flag) ? 1 : 0);
_L8:
        obj = (String)map.get("Expires");
        if (obj != null)
        {
            l2 = a(((String) (obj)));
        } else
        {
            l2 = 0L;
        }
        obj = (String)map.get("ETag");
        if (k != 0)
        {
            l = l3 + l * 1000L;
        } else
        if (l1 > 0L && l2 >= l1)
        {
            l = l3 + (l2 - l1);
        } else
        {
            l = 0L;
        }
        obj1 = new b.a();
        obj1.a = j.b;
        obj1.b = ((String) (obj));
        obj1.e = l;
        obj1.d = ((b.a) (obj1)).e;
        obj1.c = l1;
        obj1.f = map;
        return ((b.a) (obj1));
_L2:
        obj1 = obj[k].trim();
        if (((String) (obj1)).equals("no-cache") || ((String) (obj1)).equals("no-store"))
        {
            return null;
        }
        if (!((String) (obj1)).startsWith("max-age=")) goto _L4; else goto _L3
_L3:
        l2 = Long.parseLong(((String) (obj1)).substring(8));
        l = l2;
_L6:
        k++;
        break MISSING_BLOCK_LABEL_64;
_L4:
        if (((String) (obj1)).equals("must-revalidate") || ((String) (obj1)).equals("proxy-revalidate"))
        {
            l = 0L;
        }
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        k = 0;
        l = 0L;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
