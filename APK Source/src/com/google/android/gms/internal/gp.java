// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class gp
{

    private static final Pattern Es = Pattern.compile("\\\\.");
    private static final Pattern Et = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    public static String av(String s)
    {
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        StringBuffer stringbuffer;
        Matcher matcher;
        matcher = Et.matcher(s);
        stringbuffer = null;
_L4:
        if (matcher.find())
        {
            StringBuffer stringbuffer1 = stringbuffer;
            if (stringbuffer == null)
            {
                stringbuffer1 = new StringBuffer();
            }
            switch (matcher.group().charAt(0))
            {
            default:
                stringbuffer = stringbuffer1;
                break;

            case 8: // '\b'
                matcher.appendReplacement(stringbuffer1, "\\\\b");
                stringbuffer = stringbuffer1;
                break;

            case 34: // '"'
                matcher.appendReplacement(stringbuffer1, "\\\\\\\"");
                stringbuffer = stringbuffer1;
                break;

            case 92: // '\\'
                matcher.appendReplacement(stringbuffer1, "\\\\\\\\");
                stringbuffer = stringbuffer1;
                break;

            case 47: // '/'
                matcher.appendReplacement(stringbuffer1, "\\\\/");
                stringbuffer = stringbuffer1;
                break;

            case 12: // '\f'
                matcher.appendReplacement(stringbuffer1, "\\\\f");
                stringbuffer = stringbuffer1;
                break;

            case 10: // '\n'
                matcher.appendReplacement(stringbuffer1, "\\\\n");
                stringbuffer = stringbuffer1;
                break;

            case 13: // '\r'
                matcher.appendReplacement(stringbuffer1, "\\\\r");
                stringbuffer = stringbuffer1;
                break;

            case 9: // '\t'
                matcher.appendReplacement(stringbuffer1, "\\\\t");
                stringbuffer = stringbuffer1;
                break;
            }
        } else
        if (stringbuffer == null)
        {
            return s;
        } else
        {
            matcher.appendTail(stringbuffer);
            return stringbuffer.toString();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        return s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static boolean d(Object obj, Object obj1)
    {
        if ((obj instanceof JSONObject) && (obj1 instanceof JSONObject))
        {
            obj = (JSONObject)obj;
            obj1 = (JSONObject)obj1;
            if (((JSONObject) (obj)).length() != ((JSONObject) (obj1)).length())
            {
                return false;
            }
            for (Iterator iterator = ((JSONObject) (obj)).keys(); iterator.hasNext();)
            {
                String s = (String)iterator.next();
                if (!((JSONObject) (obj1)).has(s))
                {
                    return false;
                }
                boolean flag;
                try
                {
                    flag = d(((JSONObject) (obj)).get(s), ((JSONObject) (obj1)).get(s));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return false;
                }
                if (!flag)
                {
                    return false;
                }
            }

            return true;
        } else
        if ((obj instanceof JSONArray) && (obj1 instanceof JSONArray))
        {
            obj = (JSONArray)obj;
            obj1 = (JSONArray)obj1;
            if (((JSONArray) (obj)).length() != ((JSONArray) (obj1)).length())
            {
                return false;
            }
            for (int i = 0; i < ((JSONArray) (obj)).length(); i++)
            {
                boolean flag1;
                try
                {
                    flag1 = d(((JSONArray) (obj)).get(i), ((JSONArray) (obj1)).get(i));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return false;
                }
                if (!flag1)
                {
                    return false;
                }
            }

            return true;
        } else
        {
            return obj.equals(obj1);
        }
    }

}
