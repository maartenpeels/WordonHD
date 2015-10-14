// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class ai
{

    ai()
    {
    }

    public static String a(String s)
        throws NoSuchAlgorithmException, UnsupportedEncodingException
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.update(s.getBytes("iso-8859-1"), 0, s.length());
        return a(messagedigest.digest());
    }

    private static String a(byte abyte0[])
    {
        StringBuilder stringbuilder;
        int i;
        int l;
        stringbuilder = new StringBuilder();
        l = abyte0.length;
        i = 0;
_L2:
        int j;
        int k;
        byte byte0;
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = abyte0[i];
        k = byte0 >>> 4 & 0xf;
        j = 0;
_L3:
        char c;
        if (k >= 0 && k <= 9)
        {
            c = (char)(k + 48);
        } else
        {
            c = (char)((k - 10) + 97);
        }
        stringbuilder.append(c);
        k = byte0 & 0xf;
        if (j < 1)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return stringbuilder.toString();
        j++;
          goto _L3
    }
}
