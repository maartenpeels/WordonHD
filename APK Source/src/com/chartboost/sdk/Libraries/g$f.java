// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

private static class a extends a
{

    protected a a[];
    protected String b;

    public String a()
    {
        if (b != null)
        {
            return b;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("object must contain the following key-value schema: {\n");
        for (int i = 0; i < a.length; i++)
        {
            stringbuilder.append("<");
            stringbuilder.append(a(a[i]));
            stringbuilder.append(": [");
            stringbuilder.append(b(a[i]).a());
            stringbuilder.append("]>");
            if (i < a.length - 1)
            {
                stringbuilder.append(",\n");
            }
        }

        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public boolean a(Object obj)
    {
        int j;
        if (obj instanceof Map)
        {
            obj = (Map)obj;
            for (Iterator iterator = ((Map) (obj)).entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Entry entry = (java.util.Entry)iterator.next();
                if (!(entry.getKey() instanceof String))
                {
                    b = (new StringBuilder()).append("key '").append(entry.getKey().toString()).append("' is not a string").toString();
                    return false;
                }
            }

            if (a != null && a.length >= 1)
            {
                for (int i = 0; i < a.length; i++)
                {
                    String s = a(a[i]);
                    a a1 = b(a[i]);
                    if (!((Map) (obj)).containsKey(s))
                    {
                        if (!a1.a(null))
                        {
                            b = (new StringBuilder()).append("no key for required mapping '").append(s).append("' : <").append(a1.a()).append(">").toString();
                            return false;
                        }
                        continue;
                    }
                    if (!a1.a(((Map) (obj)).get(s)))
                    {
                        b = (new StringBuilder()).append("key '").append(s).append("' fails to match: <").append(a1.a()).append(">").toString();
                        return false;
                    }
                }

            }
            return true;
        }
        if (!(obj instanceof JSONObject))
        {
            break MISSING_BLOCK_LABEL_451;
        }
        obj = (JSONObject)obj;
        if (a == null || a.length < 1)
        {
            break MISSING_BLOCK_LABEL_449;
        }
        j = 0;
_L3:
        if (j >= a.length) goto _L2; else goto _L1
_L1:
        String s1;
        a a2;
        s1 = a(a[j]);
        a2 = b(a[j]);
        if (a2.a(((JSONObject) (obj)).get(s1)))
        {
            continue; /* Loop/switch isn't completed */
        }
        b = (new StringBuilder()).append("key '").append(s1).append("' fails to match: <").append(a2.a()).append(">").toString();
        return false;
        JSONException jsonexception;
        jsonexception;
        if (!a2.a(null))
        {
            b = (new StringBuilder()).append("no key for required mapping '").append(s1).append("' : <").append(a2.a()).append(">").toString();
            return false;
        }
        j++;
          goto _L3
_L2:
        return true;
        return false;
    }

    public ( a1[])
    {
        b = null;
        a = a1;
    }
}
