// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.net.Uri;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class HmacSignature
{

    private String _method;
    private String _secret;

    public HmacSignature(String s, String s1)
    {
        _method = s;
        _secret = s1;
    }

    private String prepareMessage(String s, Map map)
    {
        Uri uri = Uri.parse(s);
        String s1 = (new StringBuilder()).append(uri.getScheme()).append("://").append(uri.getHost()).toString();
        boolean flag;
        if (uri.getScheme().equals("http") && uri.getPort() == 80 || uri.getScheme().equals("https") && uri.getPort() == 443)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = s1;
        if (!flag)
        {
            s = s1;
            if (-1 != uri.getPort())
            {
                s = (new StringBuilder()).append(s1).append(":").append(uri.getPort()).toString();
            }
        }
        s = s.toLowerCase();
        s = (new StringBuilder()).append(s).append(uri.getPath()).toString();
        map = prepareParams(map);
        s = (new StringBuilder()).append("POST&").append(Uri.encode(s)).append("&").append(Uri.encode(map)).toString();
        Log.v("HmacSignature", (new StringBuilder()).append("Base Url: ").append(s).toString());
        return s;
    }

    private String prepareParams(Map map)
    {
        Object obj = new TreeSet(map.keySet());
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        String s1;
        for (obj = ((TreeSet) (obj)).iterator(); ((Iterator) (obj)).hasNext(); stringbuilder.append((new StringBuilder()).append(s).append("=").append(s1).append("&").toString()))
        {
            s = (String)((Iterator) (obj)).next();
            s1 = (String)map.get(s);
        }

        stringbuilder.deleteCharAt(stringbuilder.lastIndexOf("&"));
        Log.v("HmacSignature", (new StringBuilder()).append("Unhashed String: ").append(stringbuilder.toString()).toString());
        return stringbuilder.toString();
    }

    public boolean matches(String s, Map map, String s1)
    {
        return sign(s, map).equals(s1);
    }

    public String sign(String s, Map map)
    {
        String s1;
        int i;
        int j;
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(_secret.getBytes(), _method);
            Mac mac = Mac.getInstance(_method);
            mac.init(secretkeyspec);
            s = mac.doFinal(prepareMessage(s, map).getBytes());
            map = new StringBuilder();
            j = s.length;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        i = 0;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = Integer.toHexString(s[i] & 0xff);
        if (s1.length() == 1)
        {
            map.append('0');
        }
        map.append(s1);
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_64;
_L1:
        s = map.toString();
        return s;
    }
}
