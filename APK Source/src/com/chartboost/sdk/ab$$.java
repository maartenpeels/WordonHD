// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public class ab$$
{

    private static final char S_BASE64CHAR[];
    private static final char S_BASE64PAD = 61;
    private static final byte S_DECODETABLE[];

    public ab$$()
    {
    }

    public static void decode(String s, OutputStream outputstream)
        throws IOException
    {
        char ac[] = new char[4];
        int k = 0;
        byte abyte0[] = new byte[3];
        int j = 0;
        do
        {
            int i;
label0:
            {
                if (j >= s.length())
                {
                    return;
                }
                char c = s.charAt(j);
                if (c != '=')
                {
                    i = k;
                    if (c >= S_DECODETABLE.length)
                    {
                        break label0;
                    }
                    i = k;
                    if (S_DECODETABLE[c] == 127)
                    {
                        break label0;
                    }
                }
                i = k + 1;
                ac[k] = c;
                if (i == ac.length)
                {
                    i = 0;
                    outputstream.write(abyte0, 0, decode0(ac, abyte0, 0));
                }
            }
            j++;
            k = i;
        } while (true);
    }

    public static void decode(char ac[], int i, int j, OutputStream outputstream)
        throws IOException
    {
        char ac1[] = new char[4];
        byte abyte0[] = new byte[3];
        int l = i;
        int k = 0;
        do
        {
            if (l >= i + j)
            {
                return;
            }
            char c = ac[l];
            if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127)
            {
                int i1 = k + 1;
                ac1[k] = c;
                k = i1;
                if (i1 == ac1.length)
                {
                    k = 0;
                    outputstream.write(abyte0, 0, decode0(ac1, abyte0, 0));
                }
            }
            l++;
        } while (true);
    }

    public static byte[] decode(String s)
    {
        char ac[] = new char[4];
        int l = 0;
        byte abyte0[] = new byte[(s.length() / 4) * 3 + 3];
        int j = 0;
        int k = 0;
        do
        {
label0:
            {
                char c;
                int i;
                int i1;
                if (k >= s.length())
                {
                    if (j == abyte0.length)
                    {
                        return abyte0;
                    } else
                    {
                        s = new byte[j];
                        System.arraycopy(abyte0, 0, s, 0, j);
                        return s;
                    }
                }
                c = s.charAt(k);
                if (c != '=')
                {
                    i = l;
                    i1 = j;
                    if (c >= S_DECODETABLE.length)
                    {
                        break label0;
                    }
                    i = l;
                    i1 = j;
                    if (S_DECODETABLE[c] == 127)
                    {
                        break label0;
                    }
                }
                i = l + 1;
                ac[l] = c;
                if (i == ac.length)
                {
                    i = 0;
                    i1 = j + decode0(ac, abyte0, j);
                } else
                {
                    i1 = j;
                }
            }
            k++;
            l = i;
            j = i1;
        } while (true);
    }

    public static byte[] decode(char ac[], int i, int j)
    {
        if (ac != null) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        int k;
        abyte0 = new byte[255];
        k = 0;
_L4:
        if (k < abyte0.length) goto _L3; else goto _L2
_L2:
        char ac1[];
        int l;
        int i1;
        ac1 = new char[4];
        abyte0 = new byte[(j / 4) * 3 + 3];
        k = 0;
        l = 0;
        i1 = i;
_L5:
        char c;
        if (i1 >= i + j)
        {
            if (k == abyte0.length)
            {
                return abyte0;
            } else
            {
                ac = new byte[k];
                System.arraycopy(abyte0, 0, ac, 0, k);
                return ac;
            }
        }
        break MISSING_BLOCK_LABEL_88;
_L3:
        abyte0[k] = (byte)(0 ^ abyte0[k]);
        k++;
          goto _L4
        c = ac[i1];
        if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127)
        {
            int j1 = l + 1;
            ac1[l] = c;
            if (j1 == ac1.length)
            {
                l = decode0(ac1, abyte0, k) + k;
                k = 0;
            } else
            {
                l = k;
                k = j1;
            }
        } else
        {
            int k1 = k;
            k = l;
            l = k1;
        }
        i1++;
        j1 = l;
        l = k;
        k = j1;
          goto _L5
    }

    private static int decode0(char ac[], byte abyte0[], int i)
    {
        int j = 3;
        if (ac[3] == '=')
        {
            j = 2;
        }
        if (ac[2] == '=')
        {
            j = 1;
        }
        byte byte0 = S_DECODETABLE[ac[0]];
        byte byte1 = S_DECODETABLE[ac[1]];
        byte byte2 = S_DECODETABLE[ac[2]];
        byte byte3 = S_DECODETABLE[ac[3]];
        switch (j)
        {
        default:
            throw new RuntimeException("Couldn't decode.");

        case 1: // '\001'
            abyte0[i] = (byte)(byte0 << 2 & 0xfc | byte1 >> 4 & 3);
            return 1;

        case 2: // '\002'
            abyte0[i] = (byte)(byte0 << 2 & 0xfc | byte1 >> 4 & 3);
            abyte0[i + 1] = (byte)(byte1 << 4 & 0xf0 | byte2 >> 2 & 0xf);
            return 2;

        case 3: // '\003'
            j = i + 1;
            break;
        }
        abyte0[i] = (byte)(byte0 << 2 & 0xfc | byte1 >> 4 & 3);
        abyte0[j] = (byte)(byte1 << 4 & 0xf0 | byte2 >> 2 & 0xf);
        abyte0[j + 1] = (byte)(byte2 << 6 & 0xc0 | byte3 & 0x3f);
        return 3;
    }

    public static String encode(byte abyte0[])
    {
        return encode(abyte0, 0, abyte0.length);
    }

    public static String encode(byte abyte0[], int i, int j)
    {
        if (j <= 0)
        {
            return "";
        }
        char ac[] = new char[(j / 3) * 4 + 4];
        int i1 = i;
        int k = j - i;
        i = 0;
        do
        {
            if (k < 3)
            {
                int j1;
                if (k == 1)
                {
                    j = abyte0[i1] & 0xff;
                    k = i + 1;
                    ac[i] = S_BASE64CHAR[j >> 2];
                    i = k + 1;
                    ac[k] = S_BASE64CHAR[j << 4 & 0x3f];
                    j = i + 1;
                    ac[i] = '=';
                    ac[j] = '=';
                    i = j + 1;
                } else
                {
                    j = i;
                    if (k == 2)
                    {
                        j = ((abyte0[i1] & 0xff) << 8) + (abyte0[i1 + 1] & 0xff);
                        int l = i + 1;
                        ac[i] = S_BASE64CHAR[j >> 10];
                        i = l + 1;
                        ac[l] = S_BASE64CHAR[j >> 4 & 0x3f];
                        l = i + 1;
                        ac[i] = S_BASE64CHAR[j << 2 & 0x3f];
                        j = l + 1;
                        ac[l] = '=';
                    }
                    i = j;
                }
                return new String(ac, 0, i);
            }
            j = ((abyte0[i1] & 0xff) << 16) + ((abyte0[i1 + 1] & 0xff) << 8) + (abyte0[i1 + 2] & 0xff);
            j1 = i + 1;
            ac[i] = S_BASE64CHAR[j >> 18];
            i = j1 + 1;
            ac[j1] = S_BASE64CHAR[j >> 12 & 0x3f];
            j1 = i + 1;
            ac[i] = S_BASE64CHAR[j >> 6 & 0x3f];
            i = j1 + 1;
            ac[j1] = S_BASE64CHAR[j & 0x3f];
            i1 += 3;
            k -= 3;
        } while (true);
    }

    public static void encode(byte abyte0[], int i, int j, OutputStream outputstream)
        throws IOException
    {
        if (j > 0)
        {
            byte abyte1[] = new byte[4];
            int k = i;
            i = j - i;
            do
            {
                if (i < 3)
                {
                    if (i == 1)
                    {
                        i = abyte0[k] & 0xff;
                        abyte1[0] = (byte)S_BASE64CHAR[i >> 2];
                        abyte1[1] = (byte)S_BASE64CHAR[i << 4 & 0x3f];
                        abyte1[2] = 61;
                        abyte1[3] = 61;
                        outputstream.write(abyte1, 0, 4);
                        return;
                    }
                    break;
                }
                j = ((abyte0[k] & 0xff) << 16) + ((abyte0[k + 1] & 0xff) << 8) + (abyte0[k + 2] & 0xff);
                abyte1[0] = (byte)S_BASE64CHAR[j >> 18];
                abyte1[1] = (byte)S_BASE64CHAR[j >> 12 & 0x3f];
                abyte1[2] = (byte)S_BASE64CHAR[j >> 6 & 0x3f];
                abyte1[3] = (byte)S_BASE64CHAR[j & 0x3f];
                outputstream.write(abyte1, 0, 4);
                k += 3;
                i -= 3;
            } while (true);
            if (i == 2)
            {
                i = ((abyte0[k] & 0xff) << 8) + (abyte0[k + 1] & 0xff);
                abyte1[0] = (byte)S_BASE64CHAR[i >> 10];
                abyte1[1] = (byte)S_BASE64CHAR[i >> 4 & 0x3f];
                abyte1[2] = (byte)S_BASE64CHAR[i << 2 & 0x3f];
                abyte1[3] = 61;
                outputstream.write(abyte1, 0, 4);
                return;
            }
        }
    }

    public static void encode(byte abyte0[], int i, int j, Writer writer)
        throws IOException
    {
        if (j > 0)
        {
            char ac[] = new char[4];
            int k = i;
            j -= i;
            boolean flag = false;
            i = k;
            k = ((flag) ? 1 : 0);
            do
            {
                if (j < 3)
                {
                    if (j == 1)
                    {
                        i = abyte0[i] & 0xff;
                        ac[0] = S_BASE64CHAR[i >> 2];
                        ac[1] = S_BASE64CHAR[i << 4 & 0x3f];
                        ac[2] = '=';
                        ac[3] = '=';
                        writer.write(ac, 0, 4);
                        return;
                    }
                    break;
                }
                int l = ((abyte0[i] & 0xff) << 16) + ((abyte0[i + 1] & 0xff) << 8) + (abyte0[i + 2] & 0xff);
                ac[0] = S_BASE64CHAR[l >> 18];
                ac[1] = S_BASE64CHAR[l >> 12 & 0x3f];
                ac[2] = S_BASE64CHAR[l >> 6 & 0x3f];
                ac[3] = S_BASE64CHAR[l & 0x3f];
                writer.write(ac, 0, 4);
                l = i + 3;
                int i1 = j - 3;
                int j1 = k + 4;
                k = j1;
                j = i1;
                i = l;
                if (j1 % 76 == 0)
                {
                    writer.write("\n");
                    k = j1;
                    j = i1;
                    i = l;
                }
            } while (true);
            if (j == 2)
            {
                i = ((abyte0[i] & 0xff) << 8) + (abyte0[i + 1] & 0xff);
                ac[0] = S_BASE64CHAR[i >> 10];
                ac[1] = S_BASE64CHAR[i >> 4 & 0x3f];
                ac[2] = S_BASE64CHAR[i << 2 & 0x3f];
                ac[3] = '=';
                writer.write(ac, 0, 4);
                return;
            }
        }
    }

    static 
    {
        int i;
        S_BASE64CHAR = (new char[] {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
            'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
            'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
            'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
            'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', 
            '8', '9', '+', '/'
        });
        S_DECODETABLE = new byte[128];
        i = 0;
_L3:
        if (i < S_DECODETABLE.length) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= S_BASE64CHAR.length)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_428;
_L2:
        S_DECODETABLE[i] = 127;
        i++;
          goto _L3
        S_DECODETABLE[S_BASE64CHAR[i]] = (byte)i;
        i++;
          goto _L4
    }
}
