// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.content.Context;
import com.urbanairship.Logger;
import com.urbanairship.Preferences;
import com.urbanairship.util.UAStringUtil;
import java.io.UnsupportedEncodingException;

class RichPushUserPreferences extends Preferences
{

    RichPushUserPreferences(Context context)
    {
        super(context);
        a("com.urbanairship.user");
        context = a("com.urbanairship.user.PASSWORD", null);
        if (!UAStringUtil.a(context) && a("com.urbanairship.user.USER_TOKEN", c(context, a("com.urbanairship.user.ID", null))))
        {
            a("com.urbanairship.user.PASSWORD", null);
        }
    }

    private static byte[] a(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = new byte[abyte0.length];
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte2[i] = (byte)(abyte0[i] ^ abyte1[i % abyte1.length]);
        }

        return abyte2;
    }

    private static String c(String s, String s1)
    {
        if (UAStringUtil.a(s) || UAStringUtil.a(s1))
        {
            return null;
        }
        s = a(s.getBytes(), s1.getBytes());
        s1 = new StringBuilder();
        int j = s.length;
        for (int i = 0; i < j; i++)
        {
            s1.append(String.format("%02x", new Object[] {
                Byte.valueOf(s[i])
            }));
        }

        return s1.toString();
    }

    private static String d(String s, String s1)
    {
        int j;
        if (UAStringUtil.a(s) || UAStringUtil.a(s1))
        {
            return null;
        }
        j = s.length();
        if (j % 2 != 0)
        {
            return null;
        }
        byte abyte0[] = new byte[j / 2];
        int i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[i / 2] = Byte.parseByte(s.substring(i, i + 2), 16);
        i += 2;
        if (true) goto _L2; else goto _L1
_L1:
        s = new String(a(abyte0, s1.getBytes()), "UTF-8");
        return s;
        s;
        Logger.e((new StringBuilder("Unable to decode string. ")).append(s.getMessage()).toString());
_L4:
        return null;
        s;
        Logger.e((new StringBuilder("String contains invalid hex numbers. ")).append(s.getMessage()).toString());
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final String a()
    {
        return a("com.urbanairship.user.ID", null);
    }

    public final void a(long l)
    {
        a("com.urbanairship.user.LAST_UPDATE_TIME", Long.valueOf(l));
    }

    public final String b()
    {
        return d(a("com.urbanairship.user.USER_TOKEN", null), a("com.urbanairship.user.ID", null));
    }

    public final void b(String s, String s1)
    {
        a("com.urbanairship.user.ID", s);
        a("com.urbanairship.user.USER_TOKEN", c(s1, s));
    }

    public final long c()
    {
        return a("com.urbanairship.user.LAST_UPDATE_TIME", 0L);
    }
}
