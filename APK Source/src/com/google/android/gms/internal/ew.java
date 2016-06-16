// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            er

public class ew
{

    private static final String Ac[] = {
        "Z", "+hh", "+hhmm", "+hh:mm"
    };
    private static final String Ad = (new StringBuilder()).append("yyyyMMdd'T'HHmmss").append(Ac[0]).toString();
    private static final er zb = new er("MetadataUtils");

    public static String a(Calendar calendar)
    {
        if (calendar == null)
        {
            zb.b("Calendar object cannot be null", new Object[0]);
            calendar = null;
        } else
        {
            String s = Ad;
            Object obj = s;
            if (calendar.get(11) == 0)
            {
                obj = s;
                if (calendar.get(12) == 0)
                {
                    obj = s;
                    if (calendar.get(13) == 0)
                    {
                        obj = "yyyyMMdd";
                    }
                }
            }
            obj = new SimpleDateFormat(((String) (obj)));
            ((SimpleDateFormat) (obj)).setTimeZone(calendar.getTimeZone());
            obj = ((SimpleDateFormat) (obj)).format(calendar.getTime());
            calendar = ((Calendar) (obj));
            if (((String) (obj)).endsWith("+0000"))
            {
                return ((String) (obj)).replace("+0000", Ac[0]);
            }
        }
        return calendar;
    }

    public static void a(List list, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        int i;
        int j;
        try
        {
            list.clear();
            jsonobject = jsonobject.getJSONArray("images");
            j = jsonobject.length();
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            break; /* Loop/switch isn't completed */
        }
        i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject1 = jsonobject.getJSONObject(i);
        try
        {
            list.add(new WebImage(jsonobject1));
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        i++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(JSONObject jsonobject, List list)
    {
        JSONArray jsonarray;
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_65;
        }
        jsonarray = new JSONArray();
        for (list = list.iterator(); list.hasNext(); jsonarray.put(((WebImage)list.next()).dB())) { }
        jsonobject.put("images", jsonarray);
        return;
        jsonobject;
    }

    public static Calendar ac(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            zb.b("Input string is empty or null", new Object[0]);
            return null;
        }
        String s1 = ad(s);
        if (TextUtils.isEmpty(s1))
        {
            zb.b("Invalid date format", new Object[0]);
            return null;
        }
        s = ae(s);
        if (!TextUtils.isEmpty(s))
        {
            s1 = (new StringBuilder()).append(s1).append("T").append(s).toString();
            Calendar calendar;
            if (s.length() == "HHmmss".length())
            {
                s = "yyyyMMdd'T'HHmmss";
            } else
            {
                s = Ad;
            }
        } else
        {
            s = "yyyyMMdd";
        }
        calendar = GregorianCalendar.getInstance();
        try
        {
            s = (new SimpleDateFormat(s)).parse(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            zb.b("Error parsing string: %s", new Object[] {
                s.getMessage()
            });
            return null;
        }
        calendar.setTime(s);
        return calendar;
    }

    private static String ad(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            zb.b("Input string is empty or null", new Object[0]);
            return null;
        }
        try
        {
            s = s.substring(0, "yyyyMMdd".length());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            zb.c("Error extracting the date: %s", new Object[] {
                s.getMessage()
            });
            return null;
        }
        return s;
    }

    private static String ae(String s)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        zb.b("string is empty or null", new Object[0]);
        s = null;
_L4:
        return s;
_L2:
        String s1;
        int i = s.indexOf('T');
        if (i != "yyyyMMdd".length())
        {
            zb.b("T delimeter is not found", new Object[0]);
            return null;
        }
        try
        {
            s1 = s.substring(i + 1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            zb.b("Error extracting the time substring: %s", new Object[] {
                s.getMessage()
            });
            return null;
        }
        s = s1;
        if (s1.length() == "HHmmss".length()) goto _L4; else goto _L3
_L3:
        s1.charAt("HHmmss".length());
        JVM INSTR lookupswitch 3: default 120
    //                   43: 197
    //                   45: 197
    //                   90: 144;
           goto _L5 _L6 _L6 _L7
_L5:
        return null;
_L7:
        if (s1.length() == "HHmmss".length() + Ac[0].length())
        {
            return (new StringBuilder()).append(s1.substring(0, s1.length() - 1)).append("+0000").toString();
        } else
        {
            return null;
        }
_L6:
        if (af(s1))
        {
            return s1.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
        }
        if (true) goto _L5; else goto _L8
_L8:
    }

    private static boolean af(String s)
    {
        int i = s.length();
        int j = "HHmmss".length();
        return i == Ac[1].length() + j || i == Ac[2].length() + j || i == j + Ac[3].length();
    }

}
