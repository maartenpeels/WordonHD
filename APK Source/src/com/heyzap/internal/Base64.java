// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.io.UnsupportedEncodingException;

public class Base64
{
    static abstract class Coder
    {

        public int op;
        public byte output[];

        public abstract int maxOutputSize(int i);

        public abstract boolean process(byte abyte0[], int i, int j, boolean flag);

        Coder()
        {
        }
    }

    static class Decoder extends Coder
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
        //                       0 321
        //                       1 365
        //                       2 415
        //                       3 496
        //                       4 620
        //                       5 666;
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
        //                       0 730
        //                       1 743
        //                       2 751
        //                       3 767
        //                       4 800;
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


        public Decoder(int i, byte abyte0[])
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

    static class Encoder extends Coder
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
        //                       0 386
        //                       1 389
        //                       2 451;
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

        public Encoder(int i, byte abyte0[])
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


    static final boolean $assertionsDisabled;
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;

    private Base64()
    {
    }

    public static byte[] decode(String s, int i)
    {
        return decode(s.getBytes(), i);
    }

    public static byte[] decode(byte abyte0[], int i)
    {
        return decode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] decode(byte abyte0[], int i, int j, int k)
    {
        Decoder decoder = new Decoder(k, new byte[(j * 3) / 4]);
        if (!decoder.process(abyte0, i, j, true))
        {
            throw new IllegalArgumentException("bad base-64");
        }
        if (decoder.op == decoder.output.length)
        {
            return decoder.output;
        } else
        {
            abyte0 = new byte[decoder.op];
            System.arraycopy(decoder.output, 0, abyte0, 0, decoder.op);
            return abyte0;
        }
    }

    public static byte[] encode(byte abyte0[], int i)
    {
        return encode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] encode(byte abyte0[], int i, int j, int k)
    {
        Encoder encoder;
        int l;
        encoder = new Encoder(k, null);
        l = (j / 3) * 4;
        if (!encoder.do_padding) goto _L2; else goto _L1
_L1:
        k = l;
        if (j % 3 > 0)
        {
            k = l + 4;
        }
_L4:
        l = k;
        if (encoder.do_newline)
        {
            l = k;
            if (j > 0)
            {
                int i1 = (j - 1) / 57;
                if (encoder.do_cr)
                {
                    l = 2;
                } else
                {
                    l = 1;
                }
                l = k + (i1 + 1) * l;
            }
        }
        encoder.output = new byte[l];
        encoder.process(abyte0, i, j, true);
        if (!$assertionsDisabled && encoder.op != l)
        {
            throw new AssertionError();
        } else
        {
            return encoder.output;
        }
_L2:
        k = l;
        switch (j % 3)
        {
        default:
            k = l;
            break;

        case 1: // '\001'
            k = l + 2;
            break;

        case 2: // '\002'
            k = l + 3;
            break;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String encodeToString(byte abyte0[], int i)
    {
        try
        {
            abyte0 = new String(encode(abyte0, i), "US-ASCII");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new AssertionError(abyte0);
        }
        return abyte0;
    }

    public static String encodeToString(byte abyte0[], int i, int j, int k)
    {
        try
        {
            abyte0 = new String(encode(abyte0, i, j, k), "US-ASCII");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new AssertionError(abyte0);
        }
        return abyte0;
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
}
