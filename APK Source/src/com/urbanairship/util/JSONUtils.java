// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class JSONUtils
{

    public JSONUtils()
    {
    }

    public static List a(JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList(jsonarray.length());
        int i = 0;
        while (i < jsonarray.length()) 
        {
            if (jsonarray.isNull(i))
            {
                arraylist.add(null);
            } else
            {
                JSONArray jsonarray1 = jsonarray.optJSONArray(i);
                if (jsonarray1 != null)
                {
                    arraylist.add(a(jsonarray1));
                } else
                {
                    JSONObject jsonobject = jsonarray.optJSONObject(i);
                    if (jsonobject != null)
                    {
                        arraylist.add(a(jsonobject));
                    } else
                    {
                        arraylist.add(jsonarray.opt(i));
                    }
                }
            }
            i++;
        }
        return arraylist;
    }

    public static Map a(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        if (jsonobject == null || jsonobject.length() == 0)
        {
            return hashmap;
        }
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (jsonobject.isNull(s))
            {
                hashmap.put(s, null);
            } else
            {
                JSONArray jsonarray = jsonobject.optJSONArray(s);
                if (jsonarray != null)
                {
                    hashmap.put(s, a(jsonarray));
                } else
                {
                    JSONObject jsonobject1 = jsonobject.optJSONObject(s);
                    if (jsonobject1 != null)
                    {
                        hashmap.put(s, a(jsonobject1));
                    } else
                    {
                        hashmap.put(s, jsonobject.opt(s));
                    }
                }
            }
        }

        return hashmap;
    }
}
