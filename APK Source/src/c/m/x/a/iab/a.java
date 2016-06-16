// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;


// Referenced classes of package c.m.x.a.iab:
//            b

public class a
{

    static final boolean a;
    private static final byte b[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte c[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte d[] = {
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
        -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
        -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -9, -9, -9, -9, -9
    };
    private static final byte e[] = {
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
        -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
        -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
        -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -9, -9, -9, -9, -9
    };

    private a()
    {
    }

    private static int a(byte abyte0[], byte abyte1[], int i, byte abyte2[])
    {
        if (abyte0[2] == 61)
        {
            abyte1[i] = (byte)(((abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12) >>> 16);
            return 1;
        }
        if (abyte0[3] == 61)
        {
            int j = (abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12 | (abyte2[abyte0[2]] << 24) >>> 18;
            abyte1[i] = (byte)(j >>> 16);
            abyte1[i + 1] = (byte)(j >>> 8);
            return 2;
        } else
        {
            int k = (abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12 | (abyte2[abyte0[2]] << 24) >>> 18 | (abyte2[abyte0[3]] << 24) >>> 24;
            abyte1[i] = (byte)(k >> 16);
            abyte1[i + 1] = (byte)(k >> 8);
            abyte1[i + 2] = (byte)k;
            return 3;
        }
    }

    public static byte[] a(String s)
    {
        byte abyte0[] = s.getBytes();
        int j1 = abyte0.length;
        byte abyte1[] = d;
        s = new byte[(j1 * 3) / 4 + 2];
        byte abyte2[] = new byte[4];
        int k = 0;
        int l = 0;
        int i = 0;
        do
        {
            if (k >= j1)
            {
                break MISSING_BLOCK_LABEL_314;
            }
            byte byte0 = (byte)(abyte0[k + 0] & 0x7f);
            byte byte1 = abyte1[byte0];
            if (byte1 >= -5)
            {
                int j = l;
                int i1 = i;
                if (byte1 >= -1)
                {
                    if (byte0 == 61)
                    {
                        j = j1 - k;
                        i1 = (byte)(abyte0[(j1 - 1) + 0] & 0x7f);
                        if (l == 0 || l == 1)
                        {
                            throw new b((new StringBuilder("invalid padding byte '=' at byte offset ")).append(k).toString());
                        }
                        if (l == 3 && j > 2 || l == 4 && j > 1)
                        {
                            throw new b((new StringBuilder("padding byte '=' falsely signals end of encoded value at offset ")).append(k).toString());
                        }
                        if (i1 != 61 && i1 != 10)
                        {
                            throw new b("encoded value has invalid trailing byte");
                        }
                        break MISSING_BLOCK_LABEL_314;
                    }
                    j = l + 1;
                    abyte2[l] = byte0;
                    if (j == 4)
                    {
                        i1 = a(abyte2, ((byte []) (s)), i, abyte1) + i;
                        j = 0;
                    } else
                    {
                        i1 = i;
                    }
                }
                k++;
                l = j;
                i = i1;
            } else
            {
                throw new b((new StringBuilder("Bad Base64 input character at ")).append(k).append(": ").append(abyte0[k + 0]).append("(decimal)").toString());
            }
        } while (true);
        if (l != 0)
        {
            if (l == 1)
            {
                throw new b((new StringBuilder("single trailing character at offset ")).append(j1 - 1).toString());
            }
            abyte2[l] = 61;
            i = a(abyte2, ((byte []) (s)), i, abyte1) + i;
        }
        abyte0 = new byte[i];
        System.arraycopy(s, 0, abyte0, 0, i);
        return abyte0;
    }

    static 
    {
        boolean flag;
        if (!c/m/x/a/iab/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
