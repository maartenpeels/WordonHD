// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            ck, bz

public class cn extends LinkedHashMap
    implements ck
{

    public cn()
    {
    }

    public cn(String s, Object obj)
    {
        a(s, obj);
    }

    public Object a(String s)
    {
        return super.get(s);
    }

    public Object a(String s, Object obj)
    {
        return super.put(s, obj);
    }

    public boolean b(String s)
    {
        return super.containsKey(s);
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof ck))
            {
                return false;
            }
            obj = (ck)obj;
            if (!keySet().equals(((ck) (obj)).keySet()))
            {
                return false;
            }
            Iterator iterator = keySet().iterator();
            Object obj1;
            Object obj2;
label1:
            do
            {
                do
                {
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break label0;
                        }
                        obj2 = (String)iterator.next();
                        obj1 = a(((String) (obj2)));
                        obj2 = ((ck) (obj)).a(((String) (obj2)));
                        if (obj1 == null && obj2 != null)
                        {
                            return false;
                        }
                        if (obj2 == null)
                        {
                            if (obj1 != null)
                            {
                                return false;
                            }
                            continue;
                        }
                        if (!(obj1 instanceof Number) || !(obj2 instanceof Number))
                        {
                            break;
                        }
                        if (((Number)obj1).doubleValue() != ((Number)obj2).doubleValue())
                        {
                            return false;
                        }
                    } while (true);
                    if (!(obj1 instanceof Pattern) || !(obj2 instanceof Pattern))
                    {
                        continue label1;
                    }
                    obj1 = (Pattern)obj1;
                    obj2 = (Pattern)obj2;
                } while (((Pattern) (obj1)).pattern().equals(((Pattern) (obj2)).pattern()) && ((Pattern) (obj1)).flags() == ((Pattern) (obj2)).flags());
                return false;
            } while (obj1.equals(obj2));
            return false;
        }
        return true;
    }

    public Object put(Object obj, Object obj1)
    {
        return a((String)obj, obj1);
    }

    public void putAll(Map map)
    {
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); a(entry.getKey().toString(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

    }

    public String toString()
    {
        return bz.a(this);
    }
}
