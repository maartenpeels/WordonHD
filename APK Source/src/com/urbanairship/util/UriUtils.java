// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import android.net.Uri;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.urbanairship.util:
//            UAStringUtil

public class UriUtils
{

    public UriUtils()
    {
    }

    public static Uri a(Object obj)
    {
        if (obj == null || !(obj instanceof String) && !(obj instanceof Uri) && !(obj instanceof URL))
        {
            return null;
        } else
        {
            return Uri.parse(String.valueOf(obj));
        }
    }

    public static Map a(Uri uri)
    {
        HashMap hashmap = new HashMap();
        uri = uri.getEncodedQuery();
        if (!UAStringUtil.a(uri))
        {
            String as1[] = uri.split("&");
            int j = as1.length;
            int i = 0;
            while (i < j) 
            {
                String as[] = as1[i].split("=");
                if (as != null)
                {
                    String s;
                    if (as.length > 0)
                    {
                        uri = Uri.decode(as[0]);
                    } else
                    {
                        uri = null;
                    }
                    if (as.length >= 2)
                    {
                        s = Uri.decode(as[1]);
                    } else
                    {
                        s = null;
                    }
                    if (!UAStringUtil.a(uri))
                    {
                        if (!hashmap.containsKey(uri))
                        {
                            hashmap.put(uri, new ArrayList());
                        }
                        ((List)hashmap.get(uri)).add(s);
                    }
                }
                i++;
            }
        }
        return hashmap;
    }
}
