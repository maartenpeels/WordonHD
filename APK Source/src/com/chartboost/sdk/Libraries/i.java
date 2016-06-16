// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class i
{

    private static BigDecimal a(Number number)
    {
        if (number instanceof BigDecimal)
        {
            return (BigDecimal)number;
        }
        if (number instanceof BigInteger)
        {
            return new BigDecimal((BigInteger)number);
        }
        if ((number instanceof Byte) || (number instanceof Short) || (number instanceof Integer) || (number instanceof Long))
        {
            return new BigDecimal(number.longValue());
        }
        if ((number instanceof Float) || (number instanceof Double))
        {
            return new BigDecimal(number.doubleValue());
        }
        BigDecimal bigdecimal;
        try
        {
            bigdecimal = new BigDecimal(number.toString());
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new RuntimeException((new StringBuilder()).append("The given number (\"").append(number).append("\" of class ").append(number.getClass().getName()).append(") does not have a parsable string representation").toString(), numberformatexception);
        }
        return bigdecimal;
    }

    private static boolean a(Object obj)
    {
        return obj != null && obj != JSONObject.NULL;
    }

    public static boolean a(Object obj, Object obj1)
    {
        return obj == obj1;
    }

    public static boolean a(JSONArray jsonarray, JSONArray jsonarray1)
    {
        if (jsonarray.length() != jsonarray1.length() && !b(jsonarray.toString(), jsonarray1.toString()))
        {
            return false;
        }
        for (int j = 0; j < jsonarray.length(); j++)
        {
            Object obj = jsonarray.opt(j);
            Object obj1 = jsonarray1.opt(j);
            if (!a(obj.getClass(), obj1.getClass()) && (!java/lang/Number.isInstance(obj) || !java/lang/Number.isInstance(obj1)))
            {
                return false;
            }
            if (obj instanceof JSONObject)
            {
                if (!a((JSONObject)obj, (JSONObject)obj1))
                {
                    return false;
                }
                continue;
            }
            if (obj instanceof JSONArray)
            {
                if (!a((JSONArray)obj, (JSONArray)obj1))
                {
                    return false;
                }
                continue;
            }
            if (!b(obj, obj1))
            {
                return false;
            }
        }

        return true;
    }

    public static boolean a(JSONObject jsonobject, JSONObject jsonobject1)
    {
        if (jsonobject.length() != jsonobject1.length())
        {
            boolean flag;
            try
            {
                flag = b(jsonobject.toString(2), jsonobject1.toString(2));
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                return false;
            }
            if (!flag)
            {
                return false;
            }
        }
        JSONArray jsonarray = jsonobject.names();
        if (jsonarray == null && jsonobject1.names() == null)
        {
            return true;
        }
        for (int j = 0; j < jsonarray.length(); j++)
        {
            Object obj1 = jsonarray.optString(j);
            Object obj = jsonobject.opt(((String) (obj1)));
            obj1 = jsonobject1.opt(((String) (obj1)));
            if (a(obj) && !a(obj1))
            {
                return false;
            }
            if (!a(obj.getClass(), obj1.getClass()) && (!java/lang/Number.isInstance(obj) || !java/lang/Number.isInstance(obj1)))
            {
                return false;
            }
            if (obj instanceof JSONObject)
            {
                if (!a((JSONObject)obj, (JSONObject)obj1))
                {
                    return false;
                }
                continue;
            }
            if (obj instanceof JSONArray)
            {
                if (!a((JSONArray)obj, (JSONArray)obj1))
                {
                    return false;
                }
                continue;
            }
            if (!b(obj, obj1))
            {
                return false;
            }
        }

        return true;
    }

    public static boolean b(Object obj, Object obj1)
    {
        if (obj == null || obj == JSONObject.NULL)
        {
            return obj1 == null || obj1 == JSONObject.NULL;
        }
        if (!java/lang/Number.isInstance(obj) || !java/lang/Number.isInstance(obj1))
        {
            break MISSING_BLOCK_LABEL_71;
        }
        int j = a((Number)obj).compareTo(a((Number)obj1));
        return j == 0;
        RuntimeException runtimeexception;
        runtimeexception;
        return obj.equals(obj1);
    }
}
