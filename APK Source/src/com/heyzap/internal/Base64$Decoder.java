// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Base64

static class value extends value
{

    private static final int DECODE[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };
    private static final int DECODE_WEBSAFE[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };
    private static final int EQUALS = -2;
    private static final int SKIP = -1;
    private final int alphabet[];
    private int state;
    private int value;

    public int maxOutputSize(int i)
    {
        return (i * 3) / 4 + 10;
    }

    public boolean process(byte abyte0[], int i, int j, boolean flag)
    {
        byte abyte1[];
        int ai[];
        int k;
        int l1;
        int j2;
        if (state == 6)
        {
            return false;
        }
        j2 = j + i;
        l1 = state;
        j = value;
        abyte1 = output;
        ai = alphabet;
        k = 0;
_L9:
        int l;
        int i1;
        int i2;
        if (i >= j2)
        {
            break MISSING_BLOCK_LABEL_808;
        }
        l = k;
        i1 = j;
        i2 = i;
        if (l1 == 0)
        {
label0:
            {
                int j1 = i;
                i = j;
                do
                {
                    if (j1 + 4 > j2)
                    {
                        break;
                    }
                    j = ai[abyte0[j1] & 0xff] << 18 | ai[abyte0[j1 + 1] & 0xff] << 12 | ai[abyte0[j1 + 2] & 0xff] << 6 | ai[abyte0[j1 + 3] & 0xff];
                    i = j;
                    if (j < 0)
                    {
                        break;
                    }
                    abyte1[k + 2] = (byte)j;
                    abyte1[k + 1] = (byte)(j >> 8);
                    abyte1[k] = (byte)(j >> 16);
                    k += 3;
                    j1 += 4;
                    i = j;
                } while (true);
                l = k;
                i1 = i;
                i2 = j1;
                if (j1 >= j2)
                {
                    j = k;
                    k = i;
                    i = j;
                    break label0;
                }
            }
        }
        k1 = ai[abyte0[i2] & 0xff];
        l1;
        JVM INSTR tableswitch 0 5: default 296
    //                   0 321
    //                   1 365
    //                   2 415
    //                   3 496
    //                   4 620
    //                   5 666;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        i = l1;
        j = i1;
        k = l;
_L10:
        l = i2 + 1;
        l1 = i;
        i = l;
        if (true) goto _L9; else goto _L8
_L8:
label1:
        {
            if (k1 < 0)
            {
                break label1;
            }
            i = l1 + 1;
            j = k1;
            k = l;
        }
          goto _L10
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L11
_L11:
        state = 6;
        return false;
_L3:
label2:
        {
            if (k1 < 0)
            {
                break label2;
            }
            j = i1 << 6 | k1;
            i = l1 + 1;
            k = l;
        }
          goto _L10
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L12
_L12:
        state = 6;
        return false;
_L4:
        if (k1 >= 0)
        {
            j = i1 << 6 | k1;
            i = l1 + 1;
            k = l;
        } else
        {
label3:
            {
                if (k1 != -2)
                {
                    break label3;
                }
                abyte1[l] = (byte)(i1 >> 4);
                i = 4;
                k = l + 1;
                j = i1;
            }
        }
          goto _L10
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L13
_L13:
        state = 6;
        return false;
_L5:
        if (k1 >= 0)
        {
            j = i1 << 6 | k1;
            abyte1[l + 2] = (byte)j;
            abyte1[l + 1] = (byte)(j >> 8);
            abyte1[l] = (byte)(j >> 16);
            k = l + 3;
            i = 0;
        } else
        {
label4:
            {
                if (k1 != -2)
                {
                    break label4;
                }
                abyte1[l + 1] = (byte)(i1 >> 2);
                abyte1[l] = (byte)(i1 >> 10);
                k = l + 2;
                i = 5;
                j = i1;
            }
        }
          goto _L10
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L14
_L14:
        state = 6;
        return false;
_L6:
label5:
        {
            if (k1 != -2)
            {
                break label5;
            }
            i = l1 + 1;
            k = l;
            j = i1;
        }
          goto _L10
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L15
_L15:
        state = 6;
        return false;
_L7:
        k = l;
        j = i1;
        i = l1;
        if (k1 == -1) goto _L10; else goto _L16
_L16:
        state = 6;
        return false;
        i = k;
        k = j;
        if (!flag)
        {
            state = l1;
            value = k;
            op = i;
            return true;
        }
        j = i;
        l1;
        JVM INSTR tableswitch 0 4: default 728
    //                   0 730
    //                   1 743
    //                   2 751
    //                   3 767
    //                   4 800;
           goto _L17 _L18 _L19 _L20 _L21 _L22
_L18:
        break; /* Loop/switch isn't completed */
_L17:
        j = i;
_L23:
        state = l1;
        op = j;
        return true;
_L19:
        state = 6;
        return false;
_L20:
        abyte1[i] = (byte)(k >> 4);
        j = i + 1;
        continue; /* Loop/switch isn't completed */
_L21:
        l = i + 1;
        abyte1[i] = (byte)(k >> 10);
        j = l + 1;
        abyte1[l] = (byte)(k >> 2);
        if (true) goto _L23; else goto _L22
_L22:
        state = 6;
        return false;
    }


    public (int i, byte abyte0[])
    {
        output = abyte0;
        if ((i & 8) == 0)
        {
            abyte0 = DECODE;
        } else
        {
            abyte0 = DECODE_WEBSAFE;
        }
        alphabet = abyte0;
        state = 0;
        value = 0;
    }
}
