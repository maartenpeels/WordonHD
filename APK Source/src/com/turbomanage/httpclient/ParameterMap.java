// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.turbomanage.httpclient;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ParameterMap
    implements Map
{

    private Map map;

    public ParameterMap()
    {
        map = new HashMap();
    }

    public ParameterMap add(String s, String s1)
    {
        map.put(s, s1);
        return this;
    }

    public void clear()
    {
        map.clear();
    }

    public boolean containsKey(Object obj)
    {
        return map.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        return map.containsValue(obj);
    }

    public Set entrySet()
    {
        return map.entrySet();
    }

    public volatile Object get(Object obj)
    {
        return get(obj);
    }

    public String get(Object obj)
    {
        return (String)map.get(obj);
    }

    public boolean isEmpty()
    {
        return map.isEmpty();
    }

    public Set keySet()
    {
        return map.keySet();
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return put((String)obj, (String)obj1);
    }

    public String put(String s, String s1)
    {
        return (String)map.put(s, s1);
    }

    public void putAll(Map map1)
    {
        map.putAll(map1);
    }

    public volatile Object remove(Object obj)
    {
        return remove(obj);
    }

    public String remove(Object obj)
    {
        return (String)map.remove(obj);
    }

    public int size()
    {
        return map.size();
    }

    public String urlEncode()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(s);
            s = (String)map.get(s);
            if (s != null)
            {
                stringbuilder.append("=");
                try
                {
                    stringbuilder.append(URLEncoder.encode(s, "UTF-8"));
                }
                catch (UnsupportedEncodingException unsupportedencodingexception)
                {
                    unsupportedencodingexception.printStackTrace();
                }
            }
        } while (true);
        return stringbuilder.toString();
    }

    public byte[] urlEncodedBytes()
    {
        byte abyte0[];
        try
        {
            abyte0 = urlEncode().getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            return null;
        }
        return abyte0;
    }

    public Collection values()
    {
        return map.values();
    }
}
