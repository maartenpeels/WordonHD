// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            Base64

static class count extends count
{

    static final boolean $assertionsDisabled;
    private static final byte ENCODE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte ENCODE_WEBSAFE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    public static final int LINE_GROUPS = 19;
    private final byte alphabet[];
    private int count;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte tail[] = new byte[2];
    int tailLen;

    public int maxOutputSize(int i)
    {
        return (i * 8) / 5 + 10;
    }

    public boolean process(byte abyte0[], int i, int j, boolean flag)
    {
        byte abyte1[];
        byte abyte2[];
        int l;
        int k1;
        int k2;
        abyte1 = alphabet;
        abyte2 = output;
        l = 0;
        k1 = count;
        k2 = j + i;
        j = -1;
        tailLen;
        JVM INSTR tableswitch 0 2: default 60
    //                   0 386
    //                   1 389
    //                   2 451;
           goto _L1 _L1 _L2 _L3
_L1:
        int k = k1;
        if (j == -1) goto _L5; else goto _L4
_L4:
        int i1;
        l = 0 + 1;
        abyte2[0] = abyte1[j >> 18 & 0x3f];
        k = l + 1;
        abyte2[l] = abyte1[j >> 12 & 0x3f];
        l = k + 1;
        abyte2[k] = abyte1[j >> 6 & 0x3f];
        i1 = l + 1;
        abyte2[l] = abyte1[j & 0x3f];
        j = k1 - 1;
        l = i1;
        k = j;
        if (j != 0) goto _L5; else goto _L6
_L6:
        j = i1;
        if (do_cr)
        {
            abyte2[i1] = 13;
            j = i1 + 1;
        }
        abyte2[j] = 10;
        l = j + 1;
        k = 19;
        j = i;
        i = l;
_L13:
        while (j + 3 <= k2) 
        {
            l = (abyte0[j] & 0xff) << 16 | (abyte0[j + 1] & 0xff) << 8 | abyte0[j + 2] & 0xff;
            abyte2[i] = abyte1[l >> 18 & 0x3f];
            abyte2[i + 1] = abyte1[l >> 12 & 0x3f];
            abyte2[i + 2] = abyte1[l >> 6 & 0x3f];
            abyte2[i + 3] = abyte1[l & 0x3f];
            int j1 = j + 3;
            l = i + 4;
            int l1 = k - 1;
            j = j1;
            k = l1;
            i = l;
            if (l1 == 0)
            {
                int i2;
                int j2;
                if (do_cr)
                {
                    i = l + 1;
                    abyte2[l] = 13;
                } else
                {
                    i = l;
                }
                l = i + 1;
                abyte2[i] = 10;
                k = 19;
                j = j1;
                i = l;
            }
        }
          goto _L7
_L2:
        if (i + 2 <= k2)
        {
            j = tail[0];
            k = i + 1;
            j = (j & 0xff) << 16 | (abyte0[i] & 0xff) << 8 | abyte0[k] & 0xff;
            tailLen = 0;
            i = k + 1;
        }
          goto _L1
_L3:
        if (i + 1 <= k2)
        {
            j = tail[0];
            j1 = tail[1];
            k = i + 1;
            j = (j & 0xff) << 16 | (j1 & 0xff) << 8 | abyte0[i] & 0xff;
            tailLen = 0;
            i = k;
        }
          goto _L1
_L7:
        if (!flag) goto _L9; else goto _L8
_L8:
        if (j - tailLen == k2 - 1)
        {
            l = 0;
            if (tailLen > 0)
            {
                j1 = tail[0];
                l = 0 + 1;
            } else
            {
                i2 = j + 1;
                j1 = abyte0[j];
                j = i2;
            }
            j1 = (j1 & 0xff) << 4;
            tailLen = tailLen - l;
            l = i + 1;
            abyte2[i] = abyte1[j1 >> 6 & 0x3f];
            i = l + 1;
            abyte2[l] = abyte1[j1 & 0x3f];
            if (do_padding)
            {
                l = i + 1;
                abyte2[i] = 61;
                abyte2[l] = 61;
                i = l + 1;
            }
            l = i;
            if (do_newline)
            {
                l = i;
                if (do_cr)
                {
                    abyte2[i] = 13;
                    l = i + 1;
                }
                abyte2[l] = 10;
                l++;
            }
            i = l;
        } else
        if (j - tailLen == k2 - 2)
        {
            i2 = 0;
            if (tailLen > 1)
            {
                j1 = tail[0];
                i2 = 0 + 1;
                l = j;
                j = i2;
            } else
            {
                l = j + 1;
                j1 = abyte0[j];
                j = i2;
            }
            if (tailLen > 0)
            {
                i2 = tail[j];
                j2 = j + 1;
                j = l;
                l = j2;
            } else
            {
                j2 = l + 1;
                i2 = abyte0[l];
                l = j;
                j = j2;
            }
            j1 = (j1 & 0xff) << 10 | (i2 & 0xff) << 2;
            tailLen = tailLen - l;
            l = i + 1;
            abyte2[i] = abyte1[j1 >> 12 & 0x3f];
            i2 = l + 1;
            abyte2[l] = abyte1[j1 >> 6 & 0x3f];
            i = i2 + 1;
            abyte2[i2] = abyte1[j1 & 0x3f];
            if (do_padding)
            {
                l = i + 1;
                abyte2[i] = 61;
                i = l;
            }
            l = i;
            if (do_newline)
            {
                l = i;
                if (do_cr)
                {
                    abyte2[i] = 13;
                    l = i + 1;
                }
                abyte2[l] = 10;
                l++;
            }
            i = l;
        } else
        {
            l = i;
            if (do_newline)
            {
                l = i;
                if (i > 0)
                {
                    l = i;
                    if (k != 19)
                    {
                        if (do_cr)
                        {
                            l = i + 1;
                            abyte2[i] = 13;
                            i = l;
                        }
                        l = i + 1;
                        abyte2[i] = 10;
                    }
                }
            }
            i = l;
        }
        if (!$assertionsDisabled && tailLen != 0)
        {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && j != k2)
        {
            throw new AssertionError();
        }
          goto _L10
_L9:
        if (j != k2 - 1) goto _L12; else goto _L11
_L11:
        abyte1 = tail;
        l = tailLen;
        tailLen = l + 1;
        abyte1[l] = abyte0[j];
_L10:
        op = i;
        count = k;
        return true;
_L12:
        if (j == k2 - 2)
        {
            abyte1 = tail;
            l = tailLen;
            tailLen = l + 1;
            abyte1[l] = abyte0[j];
            abyte1 = tail;
            l = tailLen;
            tailLen = l + 1;
            abyte1[l] = abyte0[j + 1];
        }
        if (true) goto _L10; else goto _L5
_L5:
        j = i;
        i = l;
          goto _L13
    }

    static 
    {
        boolean flag;
        if (!com/heyzap/internal/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }

    public (int i, byte abyte0[])
    {
        output = abyte0;
        boolean flag;
        if ((i & 1) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        do_padding = flag;
        if ((i & 2) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        do_newline = flag;
        if ((i & 4) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        do_cr = flag;
        if ((i & 8) == 0)
        {
            abyte0 = ENCODE;
        } else
        {
            abyte0 = ENCODE_WEBSAFE;
        }
        alphabet = abyte0;
        tailLen = 0;
        if (do_newline)
        {
            i = 19;
        } else
        {
            i = -1;
        }
        count = i;
    }
}
