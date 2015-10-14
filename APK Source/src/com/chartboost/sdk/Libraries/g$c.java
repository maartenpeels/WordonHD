// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.util.List;
import org.json.JSONArray;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

private static class a extends a
{

    private a a;

    public String a()
    {
        return (new StringBuilder()).append("object must be an array of objects matching: <").append(a.a()).append(">").toString();
    }

    public boolean a(Object obj)
    {
        if (obj instanceof List)
        {
            obj = (List)obj;
            for (int i = 0; i < ((List) (obj)).size(); i++)
            {
                if (!a.a(((List) (obj)).get(i)))
                {
                    return false;
                }
            }

            return true;
        }
        if (obj instanceof JSONArray)
        {
            obj = (JSONArray)obj;
            for (int j = 0; j < ((JSONArray) (obj)).length(); j++)
            {
                if (!a.a(((JSONArray) (obj)).opt(j)))
                {
                    return false;
                }
            }

            return true;
        } else
        {
            return false;
        }
    }

    public ( )
    {
        super(null);
        a = ;
    }
}
