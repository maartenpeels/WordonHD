// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, kr, ko, kn, 
//            kw, kt

public interface d
{
    public static final class a extends kp
    {

        private static volatile a fM[];
        public String fN;
        public a fO[];
        public a fP[];
        public a fQ[];
        public String fR;
        public String fS;
        public long fT;
        public boolean fU;
        public a fV[];
        public int fW[];
        public boolean fX;
        public int type;

        public static a[] r()
        {
            if (fM == null)
            {
                synchronized (kr.adX)
                {
                    if (fM == null)
                    {
                        fM = new a[0];
                    }
                }
            }
            return fM;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            ko1.i(1, type);
            if (!fN.equals(""))
            {
                ko1.b(2, fN);
            }
            if (fO != null && fO.length > 0)
            {
                for (int i = 0; i < fO.length; i++)
                {
                    a a1 = fO[i];
                    if (a1 != null)
                    {
                        ko1.a(3, a1);
                    }
                }

            }
            if (fP != null && fP.length > 0)
            {
                for (int j = 0; j < fP.length; j++)
                {
                    a a2 = fP[j];
                    if (a2 != null)
                    {
                        ko1.a(4, a2);
                    }
                }

            }
            if (fQ != null && fQ.length > 0)
            {
                for (int k = 0; k < fQ.length; k++)
                {
                    a a3 = fQ[k];
                    if (a3 != null)
                    {
                        ko1.a(5, a3);
                    }
                }

            }
            if (!fR.equals(""))
            {
                ko1.b(6, fR);
            }
            if (!fS.equals(""))
            {
                ko1.b(7, fS);
            }
            if (fT != 0L)
            {
                ko1.b(8, fT);
            }
            if (fX)
            {
                ko1.a(9, fX);
            }
            if (fW != null && fW.length > 0)
            {
                for (int i1 = 0; i1 < fW.length; i1++)
                {
                    ko1.i(10, fW[i1]);
                }

            }
            if (fV != null && fV.length > 0)
            {
                for (int j1 = 0; j1 < fV.length; j1++)
                {
                    a a4 = fV[j1];
                    if (a4 != null)
                    {
                        ko1.a(11, a4);
                    }
                }

            }
            if (fU)
            {
                ko1.a(12, fU);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return l(kn1);
        }

        public int c()
        {
            int j = super.c() + ko.j(1, type);
            int i = j;
            if (!fN.equals(""))
            {
                i = j + ko.g(2, fN);
            }
            j = i;
            if (fO != null)
            {
                j = i;
                if (fO.length > 0)
                {
                    for (j = 0; j < fO.length;)
                    {
                        a a1 = fO[j];
                        int k = i;
                        if (a1 != null)
                        {
                            k = i + ko.b(3, a1);
                        }
                        j++;
                        i = k;
                    }

                    j = i;
                }
            }
            i = j;
            if (fP != null)
            {
                i = j;
                if (fP.length > 0)
                {
                    i = j;
                    for (j = 0; j < fP.length;)
                    {
                        a a2 = fP[j];
                        int i1 = i;
                        if (a2 != null)
                        {
                            i1 = i + ko.b(4, a2);
                        }
                        j++;
                        i = i1;
                    }

                }
            }
            j = i;
            if (fQ != null)
            {
                j = i;
                if (fQ.length > 0)
                {
                    for (j = 0; j < fQ.length;)
                    {
                        a a3 = fQ[j];
                        int j1 = i;
                        if (a3 != null)
                        {
                            j1 = i + ko.b(5, a3);
                        }
                        j++;
                        i = j1;
                    }

                    j = i;
                }
            }
            i = j;
            if (!fR.equals(""))
            {
                i = j + ko.g(6, fR);
            }
            j = i;
            if (!fS.equals(""))
            {
                j = i + ko.g(7, fS);
            }
            i = j;
            if (fT != 0L)
            {
                i = j + ko.d(8, fT);
            }
            j = i;
            if (fX)
            {
                j = i + ko.b(9, fX);
            }
            i = j;
            if (fW != null)
            {
                i = j;
                if (fW.length > 0)
                {
                    i = 0;
                    int k1 = 0;
                    for (; i < fW.length; i++)
                    {
                        k1 += ko.cX(fW[i]);
                    }

                    i = j + k1 + fW.length * 1;
                }
            }
            j = i;
            if (fV != null)
            {
                j = i;
                if (fV.length > 0)
                {
                    for (j = 0; j < fV.length;)
                    {
                        a a4 = fV[j];
                        int l1 = i;
                        if (a4 != null)
                        {
                            l1 = i + ko.b(11, a4);
                        }
                        j++;
                        i = l1;
                    }

                    j = i;
                }
            }
            i = j;
            if (fU)
            {
                i = j + ko.b(12, fU);
            }
            adY = i;
            return i;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof a))
            {
                return false;
            }
            obj = (a)obj;
            if (type != ((a) (obj)).type)
            {
                return false;
            }
            if (fN == null)
            {
                if (((a) (obj)).fN != null)
                {
                    return false;
                }
            } else
            if (!fN.equals(((a) (obj)).fN))
            {
                return false;
            }
            if (!kr.equals(fO, ((a) (obj)).fO))
            {
                return false;
            }
            if (!kr.equals(fP, ((a) (obj)).fP))
            {
                return false;
            }
            if (!kr.equals(fQ, ((a) (obj)).fQ))
            {
                return false;
            }
            if (fR == null)
            {
                if (((a) (obj)).fR != null)
                {
                    return false;
                }
            } else
            if (!fR.equals(((a) (obj)).fR))
            {
                return false;
            }
            if (fS == null)
            {
                if (((a) (obj)).fS != null)
                {
                    return false;
                }
            } else
            if (!fS.equals(((a) (obj)).fS))
            {
                return false;
            }
            if (fT != ((a) (obj)).fT)
            {
                return false;
            }
            if (fU != ((a) (obj)).fU)
            {
                return false;
            }
            if (!kr.equals(fV, ((a) (obj)).fV))
            {
                return false;
            }
            if (!kr.equals(fW, ((a) (obj)).fW))
            {
                return false;
            }
            if (fX != ((a) (obj)).fX)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((a) (obj)).adU == null || ((a) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((a) (obj)).adU);
            }
        }

        public int hashCode()
        {
            int j1 = type;
            int i;
            int j;
            int k;
            char c1;
            char c2;
            int i1;
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            int l2;
            if (fN == null)
            {
                i = 0;
            } else
            {
                i = fN.hashCode();
            }
            k1 = kr.hashCode(fO);
            l1 = kr.hashCode(fP);
            i2 = kr.hashCode(fQ);
            if (fR == null)
            {
                j = 0;
            } else
            {
                j = fR.hashCode();
            }
            if (fS == null)
            {
                k = 0;
            } else
            {
                k = fS.hashCode();
            }
            j2 = (int)(fT ^ fT >>> 32);
            if (fU)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            k2 = kr.hashCode(fV);
            l2 = kr.hashCode(fW);
            if (fX)
            {
                c2 = '\u04CF';
            } else
            {
                c2 = '\u04D5';
            }
            if (adU == null || adU.isEmpty())
            {
                i1 = 0;
            } else
            {
                i1 = adU.hashCode();
            }
            return ((((((((((((j1 + 527) * 31 + i) * 31 + k1) * 31 + l1) * 31 + i2) * 31 + j) * 31 + k) * 31 + j2) * 31 + c1) * 31 + k2) * 31 + l2) * 31 + c2) * 31 + i1;
        }

        public a l(kn kn1)
            throws IOException
        {
_L17:
            int i = kn1.mh();
            i;
            JVM INSTR lookupswitch 14: default 132
        //                       0: 144
        //                       8: 146
        //                       18: 212
        //                       26: 223
        //                       34: 354
        //                       42: 485
        //                       50: 616
        //                       58: 627
        //                       64: 638
        //                       72: 649
        //                       80: 660
        //                       82: 900
        //                       90: 1218
        //                       96: 1349;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
            if (a(kn1, i)) goto _L17; else goto _L16
_L16:
            return this;
_L2:
            return this;
_L3:
            i = kn1.mk();
            switch (i)
            {
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
                type = i;
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            fN = kn1.readString();
            continue; /* Loop/switch isn't completed */
_L5:
            int k = kw.b(kn1, 26);
            a aa[];
            if (fO == null)
            {
                i = 0;
            } else
            {
                i = fO.length;
            }
            aa = new a[k + i];
            k = i;
            if (i != 0)
            {
                System.arraycopy(fO, 0, aa, 0, i);
                k = i;
            }
            for (; k < aa.length - 1; k++)
            {
                aa[k] = new a();
                kn1.a(aa[k]);
                kn1.mh();
            }

            aa[k] = new a();
            kn1.a(aa[k]);
            fO = aa;
            continue; /* Loop/switch isn't completed */
_L6:
            int i1 = kw.b(kn1, 34);
            a aa1[];
            if (fP == null)
            {
                i = 0;
            } else
            {
                i = fP.length;
            }
            aa1 = new a[i1 + i];
            i1 = i;
            if (i != 0)
            {
                System.arraycopy(fP, 0, aa1, 0, i);
                i1 = i;
            }
            for (; i1 < aa1.length - 1; i1++)
            {
                aa1[i1] = new a();
                kn1.a(aa1[i1]);
                kn1.mh();
            }

            aa1[i1] = new a();
            kn1.a(aa1[i1]);
            fP = aa1;
            continue; /* Loop/switch isn't completed */
_L7:
            int j1 = kw.b(kn1, 42);
            a aa2[];
            if (fQ == null)
            {
                i = 0;
            } else
            {
                i = fQ.length;
            }
            aa2 = new a[j1 + i];
            j1 = i;
            if (i != 0)
            {
                System.arraycopy(fQ, 0, aa2, 0, i);
                j1 = i;
            }
            for (; j1 < aa2.length - 1; j1++)
            {
                aa2[j1] = new a();
                kn1.a(aa2[j1]);
                kn1.mh();
            }

            aa2[j1] = new a();
            kn1.a(aa2[j1]);
            fQ = aa2;
            continue; /* Loop/switch isn't completed */
_L8:
            fR = kn1.readString();
            continue; /* Loop/switch isn't completed */
_L9:
            fS = kn1.readString();
            continue; /* Loop/switch isn't completed */
_L10:
            fT = kn1.mj();
            continue; /* Loop/switch isn't completed */
_L11:
            fX = kn1.ml();
            continue; /* Loop/switch isn't completed */
_L12:
            int ai[];
            int k1;
            int i2;
            i2 = kw.b(kn1, 80);
            ai = new int[i2];
            k1 = 0;
            i = 0;
_L23:
            if (k1 >= i2) goto _L19; else goto _L18
_L18:
            int j2;
            if (k1 != 0)
            {
                kn1.mh();
            }
            j2 = kn1.mk();
            j2;
            JVM INSTR tableswitch 1 17: default 788
        //                       1 797
        //                       2 797
        //                       3 797
        //                       4 797
        //                       5 797
        //                       6 797
        //                       7 797
        //                       8 797
        //                       9 797
        //                       10 797
        //                       11 797
        //                       12 797
        //                       13 797
        //                       14 797
        //                       15 797
        //                       16 797
        //                       17 797;
               goto _L20 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21
_L20:
            k1++;
            continue; /* Loop/switch isn't completed */
_L21:
            ai[i] = j2;
            i++;
            if (true) goto _L20; else goto _L19
_L19:
            if (i != 0)
            {
                if (fW == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = fW.length;
                }
                if (k1 == 0 && i == ai.length)
                {
                    fW = ai;
                } else
                {
                    int ai1[] = new int[k1 + i];
                    if (k1 != 0)
                    {
                        System.arraycopy(fW, 0, ai1, 0, k1);
                    }
                    System.arraycopy(ai, 0, ai1, k1, i);
                    fW = ai1;
                }
            }
            continue; /* Loop/switch isn't completed */
            if (true) goto _L23; else goto _L22
_L22:
_L13:
            i2 = kn1.cR(kn1.mn());
            i = kn1.getPosition();
            k1 = 0;
_L29:
            if (kn1.ms() > 0)
            {
                switch (kn1.mk())
                {
                case 1: // '\001'
                case 2: // '\002'
                case 3: // '\003'
                case 4: // '\004'
                case 5: // '\005'
                case 6: // '\006'
                case 7: // '\007'
                case 8: // '\b'
                case 9: // '\t'
                case 10: // '\n'
                case 11: // '\013'
                case 12: // '\f'
                case 13: // '\r'
                case 14: // '\016'
                case 15: // '\017'
                case 16: // '\020'
                case 17: // '\021'
                    k1++;
                    break;
                }
                continue; /* Loop/switch isn't completed */
            }
            if (k1 == 0) goto _L25; else goto _L24
_L24:
            kn1.cT(i);
            if (fW == null)
            {
                i = 0;
            } else
            {
                i = fW.length;
            }
            ai = new int[k1 + i];
            k1 = i;
            if (i != 0)
            {
                System.arraycopy(fW, 0, ai, 0, i);
                k1 = i;
            }
_L27:
            if (kn1.ms() > 0)
            {
                i = kn1.mk();
                switch (i)
                {
                case 1: // '\001'
                case 2: // '\002'
                case 3: // '\003'
                case 4: // '\004'
                case 5: // '\005'
                case 6: // '\006'
                case 7: // '\007'
                case 8: // '\b'
                case 9: // '\t'
                case 10: // '\n'
                case 11: // '\013'
                case 12: // '\f'
                case 13: // '\r'
                case 14: // '\016'
                case 15: // '\017'
                case 16: // '\020'
                case 17: // '\021'
                    ai[k1] = i;
                    k1++;
                    break;
                }
                continue; /* Loop/switch isn't completed */
            }
            fW = ai;
_L25:
            kn1.cS(i2);
            continue; /* Loop/switch isn't completed */
            if (true) goto _L27; else goto _L26
_L26:
            if (true) goto _L29; else goto _L28
_L28:
_L14:
            int l1 = kw.b(kn1, 90);
            a aa3[];
            int j;
            if (fV == null)
            {
                j = 0;
            } else
            {
                j = fV.length;
            }
            aa3 = new a[l1 + j];
            l1 = j;
            if (j != 0)
            {
                System.arraycopy(fV, 0, aa3, 0, j);
                l1 = j;
            }
            for (; l1 < aa3.length - 1; l1++)
            {
                aa3[l1] = new a();
                kn1.a(aa3[l1]);
                kn1.mh();
            }

            aa3[l1] = new a();
            kn1.a(aa3[l1]);
            fV = aa3;
            continue; /* Loop/switch isn't completed */
_L15:
            fU = kn1.ml();
            if (true) goto _L17; else goto _L30
_L30:
        }

        public a s()
        {
            type = 1;
            fN = "";
            fO = r();
            fP = r();
            fQ = r();
            fR = "";
            fS = "";
            fT = 0L;
            fU = false;
            fV = r();
            fW = kw.aea;
            fX = false;
            adU = null;
            adY = -1;
            return this;
        }

        public a()
        {
            s();
        }
    }

}
