// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

private static class a extends a
{

    private Set a;
    private c b;
    private String c;

    public String a()
    {
        if (c != null)
        {
            return c;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("object must EXACTLY MATCH the following key-value schema: {\n");
        for (int i = 0; i < b.a.length; i++)
        {
            stringbuilder.append("<");
            stringbuilder.append(a(b.a[i]));
            stringbuilder.append(": [");
            stringbuilder.append(b(b.a[i]).a());
            stringbuilder.append("]>");
            if (i < b.a.length - 1)
            {
                stringbuilder.append(",\n");
            }
        }

        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public boolean a(Object obj)
    {
        if (!b.a(obj))
        {
            c = b.b;
            return false;
        }
        if (obj instanceof Map)
        {
            for (obj = ((Map)obj).keySet().iterator(); ((Iterator) (obj)).hasNext();)
            {
                Object obj1 = ((Iterator) (obj)).next();
                if (!a.contains(obj1))
                {
                    c = (new StringBuilder()).append("key '").append(obj1).append("' is not allowed in this dictionary").toString();
                    return false;
                }
            }

            return true;
        }
        if (obj instanceof JSONObject)
        {
            for (obj = ((JSONObject)obj).keys(); ((Iterator) (obj)).hasNext();)
            {
                String s = (String)((Iterator) (obj)).next();
                if (!a.contains(s))
                {
                    c = (new StringBuilder()).append("key '").append(s).append("' is not allowed in this dictionary").toString();
                    return false;
                }
            }

            return true;
        } else
        {
            c = "object must be a dictionary";
            return false;
        }
    }

    public ( )
    {
        c = null;
        b = ;
        a = new HashSet();
        for (int i = 0; i < b.a.length; i++)
        {
             = a(b.a[i]);
            a.add();
        }

    }
}
