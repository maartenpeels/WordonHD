// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


public class abc$$$
{

    public abc$$$()
    {
    }

    public static byte[] encode(String s, byte abyte0[])
    {
        byte abyte1[];
        int i;
        int j;
        s = s.getBytes();
        abyte1 = new byte[256];
        j = 0;
        i = 0;
_L5:
        if (i < 256) goto _L2; else goto _L1
_L1:
        i = 0;
_L6:
        if (i < 256) goto _L4; else goto _L3
_L3:
        int k;
        k = 0;
        j = 0;
        i = 0;
_L7:
        if (i >= abyte0.length)
        {
            return abyte0;
        }
        break MISSING_BLOCK_LABEL_105;
_L2:
        abyte1[i] = (byte)i;
        i++;
          goto _L5
_L4:
        j = abyte1[i] + j + s[i % s.length] & 0xff;
        k = abyte1[i];
        abyte1[i] = abyte1[j];
        abyte1[j] = (byte)k;
        i++;
          goto _L6
        k = k + 1 & 0xff;
        j = abyte1[k] + j & 0xff;
        int l = abyte1[k];
        abyte1[k] = abyte1[j];
        abyte1[j] = (byte)l;
        l = abyte1[abyte1[k] + l & 0xff];
        abyte0[i] = (byte)(abyte0[i] ^ l);
        i++;
          goto _L7
    }
}
