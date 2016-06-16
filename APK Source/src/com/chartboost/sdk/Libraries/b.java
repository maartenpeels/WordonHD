// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

public final class b
{

    public static byte[] a(byte abyte0[])
    {
        if (abyte0 != null)
        {
            try
            {
                MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
                messagedigest.update(abyte0);
                abyte0 = messagedigest.digest();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return null;
            }
            return abyte0;
        } else
        {
            return null;
        }
    }

    public static String b(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            BigInteger biginteger = new BigInteger(1, abyte0);
            return String.format(Locale.US, (new StringBuilder()).append("%0").append(abyte0.length << 1).append("x").toString(), new Object[] {
                biginteger
            });
        }
    }
}
