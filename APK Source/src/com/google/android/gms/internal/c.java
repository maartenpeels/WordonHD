// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, kn, ko, kt, 
//            kr, kw, ks, kq

public interface com.google.android.gms.internal.c
{
    public static final class a extends kp
    {

        public int eE;
        public int eF;
        public int level;

        public a a(kn kn1)
            throws IOException
        {
_L7:
            int k = kn1.mh();
            k;
            JVM INSTR lookupswitch 4: default 48
        //                       0: 59
        //                       8: 61
        //                       16: 103
        //                       24: 114;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            if (a(kn1, k)) goto _L7; else goto _L6
_L6:
            return this;
_L2:
            return this;
_L3:
            int l = kn1.mk();
            switch (l)
            {
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
                level = l;
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            eE = kn1.mk();
            continue; /* Loop/switch isn't completed */
_L5:
            eF = kn1.mk();
            if (true) goto _L7; else goto _L8
_L8:
        }

        public void a(ko ko1)
            throws IOException
        {
            if (level != 1)
            {
                ko1.i(1, level);
            }
            if (eE != 0)
            {
                ko1.i(2, eE);
            }
            if (eF != 0)
            {
                ko1.i(3, eF);
            }
            super.a(ko1);
        }

        public a b()
        {
            level = 1;
            eE = 0;
            eF = 0;
            adU = null;
            adY = -1;
            return this;
        }

        public kt b(kn kn1)
            throws IOException
        {
            return a(kn1);
        }

        public int c()
        {
            int l = super.c();
            int k = l;
            if (level != 1)
            {
                k = l + ko.j(1, level);
            }
            l = k;
            if (eE != 0)
            {
                l = k + ko.j(2, eE);
            }
            k = l;
            if (eF != 0)
            {
                k = l + ko.j(3, eF);
            }
            adY = k;
            return k;
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
            if (level != ((a) (obj)).level)
            {
                return false;
            }
            if (eE != ((a) (obj)).eE)
            {
                return false;
            }
            if (eF != ((a) (obj)).eF)
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
            int l = level;
            int i1 = eE;
            int j1 = eF;
            int k;
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return (((l + 527) * 31 + i1) * 31 + j1) * 31 + k;
        }

        public a()
        {
            b();
        }
    }

    public static final class b extends kp
    {

        private static volatile b eG[];
        public int eH[];
        public int eI;
        public boolean eJ;
        public boolean eK;
        public int name;

        public static b[] d()
        {
            if (eG == null)
            {
                synchronized (kr.adX)
                {
                    if (eG == null)
                    {
                        eG = new b[0];
                    }
                }
            }
            return eG;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            if (eK)
            {
                ko1.a(1, eK);
            }
            ko1.i(2, eI);
            if (eH != null && eH.length > 0)
            {
                for (int k = 0; k < eH.length; k++)
                {
                    ko1.i(3, eH[k]);
                }

            }
            if (name != 0)
            {
                ko1.i(4, name);
            }
            if (eJ)
            {
                ko1.a(6, eJ);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return c(kn1);
        }

        public int c()
        {
            int l = super.c();
            int k = l;
            if (eK)
            {
                k = l + ko.b(1, eK);
            }
            int i1 = k + ko.j(2, eI);
            k = i1;
            if (eH != null)
            {
                k = i1;
                if (eH.length > 0)
                {
                    k = 0;
                    l = 0;
                    for (; k < eH.length; k++)
                    {
                        l += ko.cX(eH[k]);
                    }

                    k = i1 + l + eH.length * 1;
                }
            }
            l = k;
            if (name != 0)
            {
                l = k + ko.j(4, name);
            }
            k = l;
            if (eJ)
            {
                k = l + ko.b(6, eJ);
            }
            adY = k;
            return k;
        }

        public b c(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    eK = kn1.ml();
                    break;

                case 16: // '\020'
                    eI = kn1.mk();
                    break;

                case 24: // '\030'
                    int j1 = kw.b(kn1, 24);
                    int ai[];
                    int l;
                    if (eH == null)
                    {
                        l = 0;
                    } else
                    {
                        l = eH.length;
                    }
                    ai = new int[j1 + l];
                    j1 = l;
                    if (l != 0)
                    {
                        System.arraycopy(eH, 0, ai, 0, l);
                        j1 = l;
                    }
                    for (; j1 < ai.length - 1; j1++)
                    {
                        ai[j1] = kn1.mk();
                        kn1.mh();
                    }

                    ai[j1] = kn1.mk();
                    eH = ai;
                    break;

                case 26: // '\032'
                    int l1 = kn1.cR(kn1.mn());
                    int i1 = kn1.getPosition();
                    int k1;
                    for (k1 = 0; kn1.ms() > 0; k1++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(i1);
                    int ai1[];
                    if (eH == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = eH.length;
                    }
                    ai1 = new int[k1 + i1];
                    k1 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(eH, 0, ai1, 0, i1);
                        k1 = i1;
                    }
                    for (; k1 < ai1.length; k1++)
                    {
                        ai1[k1] = kn1.mk();
                    }

                    eH = ai1;
                    kn1.cS(l1);
                    break;

                case 32: // ' '
                    name = kn1.mk();
                    break;

                case 48: // '0'
                    eJ = kn1.ml();
                    break;
                }
            } while (true);
        }

        public b e()
        {
            eH = kw.aea;
            eI = 0;
            name = 0;
            eJ = false;
            eK = false;
            adU = null;
            adY = -1;
            return this;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof b))
            {
                return false;
            }
            obj = (b)obj;
            if (!kr.equals(eH, ((b) (obj)).eH))
            {
                return false;
            }
            if (eI != ((b) (obj)).eI)
            {
                return false;
            }
            if (name != ((b) (obj)).name)
            {
                return false;
            }
            if (eJ != ((b) (obj)).eJ)
            {
                return false;
            }
            if (eK != ((b) (obj)).eK)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((b) (obj)).adU == null || ((b) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((b) (obj)).adU);
            }
        }

        public int hashCode()
        {
            int l = kr.hashCode(eH);
            int i1 = eI;
            int j1 = name;
            char c1;
            char c2;
            int k;
            if (eJ)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            if (eK)
            {
                c2 = '\u04CF';
            } else
            {
                c2 = '\u04D5';
            }
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return (((((l + 527) * 31 + i1) * 31 + j1) * 31 + c1) * 31 + c2) * 31 + k;
        }

        public b()
        {
            e();
        }
    }

    public static final class c extends kp
    {

        private static volatile c eL[];
        public String eM;
        public long eN;
        public long eO;
        public boolean eP;
        public long eQ;

        public static c[] f()
        {
            if (eL == null)
            {
                synchronized (kr.adX)
                {
                    if (eL == null)
                    {
                        eL = new c[0];
                    }
                }
            }
            return eL;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            if (!eM.equals(""))
            {
                ko1.b(1, eM);
            }
            if (eN != 0L)
            {
                ko1.b(2, eN);
            }
            if (eO != 0x7fffffffL)
            {
                ko1.b(3, eO);
            }
            if (eP)
            {
                ko1.a(4, eP);
            }
            if (eQ != 0L)
            {
                ko1.b(5, eQ);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return d(kn1);
        }

        public int c()
        {
            int l = super.c();
            int k = l;
            if (!eM.equals(""))
            {
                k = l + ko.g(1, eM);
            }
            l = k;
            if (eN != 0L)
            {
                l = k + ko.d(2, eN);
            }
            k = l;
            if (eO != 0x7fffffffL)
            {
                k = l + ko.d(3, eO);
            }
            l = k;
            if (eP)
            {
                l = k + ko.b(4, eP);
            }
            k = l;
            if (eQ != 0L)
            {
                k = l + ko.d(5, eQ);
            }
            adY = k;
            return k;
        }

        public c d(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    eM = kn1.readString();
                    break;

                case 16: // '\020'
                    eN = kn1.mj();
                    break;

                case 24: // '\030'
                    eO = kn1.mj();
                    break;

                case 32: // ' '
                    eP = kn1.ml();
                    break;

                case 40: // '('
                    eQ = kn1.mj();
                    break;
                }
            } while (true);
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof c))
            {
                return false;
            }
            obj = (c)obj;
            if (eM == null)
            {
                if (((c) (obj)).eM != null)
                {
                    return false;
                }
            } else
            if (!eM.equals(((c) (obj)).eM))
            {
                return false;
            }
            if (eN != ((c) (obj)).eN)
            {
                return false;
            }
            if (eO != ((c) (obj)).eO)
            {
                return false;
            }
            if (eP != ((c) (obj)).eP)
            {
                return false;
            }
            if (eQ != ((c) (obj)).eQ)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((c) (obj)).adU == null || ((c) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((c) (obj)).adU);
            }
        }

        public c g()
        {
            eM = "";
            eN = 0L;
            eO = 0x7fffffffL;
            eP = false;
            eQ = 0L;
            adU = null;
            adY = -1;
            return this;
        }

        public int hashCode()
        {
            int k;
            char c1;
            int l;
            int i1;
            int j1;
            int k1;
            if (eM == null)
            {
                k = 0;
            } else
            {
                k = eM.hashCode();
            }
            i1 = (int)(eN ^ eN >>> 32);
            j1 = (int)(eO ^ eO >>> 32);
            if (eP)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            k1 = (int)(eQ ^ eQ >>> 32);
            if (adU == null || adU.isEmpty())
            {
                l = 0;
            } else
            {
                l = adU.hashCode();
            }
            return (((((k + 527) * 31 + i1) * 31 + j1) * 31 + c1) * 31 + k1) * 31 + l;
        }

        public c()
        {
            g();
        }
    }

    public static final class d extends kp
    {

        public d.a eR[];
        public d.a eS[];
        public c eT[];

        public void a(ko ko1)
            throws IOException
        {
            if (eR != null && eR.length > 0)
            {
                for (int k = 0; k < eR.length; k++)
                {
                    d.a a1 = eR[k];
                    if (a1 != null)
                    {
                        ko1.a(1, a1);
                    }
                }

            }
            if (eS != null && eS.length > 0)
            {
                for (int l = 0; l < eS.length; l++)
                {
                    d.a a2 = eS[l];
                    if (a2 != null)
                    {
                        ko1.a(2, a2);
                    }
                }

            }
            if (eT != null && eT.length > 0)
            {
                for (int i1 = 0; i1 < eT.length; i1++)
                {
                    c c1 = eT[i1];
                    if (c1 != null)
                    {
                        ko1.a(3, c1);
                    }
                }

            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return e(kn1);
        }

        public int c()
        {
            int l = super.c();
            int k = l;
            if (eR != null)
            {
                k = l;
                if (eR.length > 0)
                {
                    k = l;
                    for (l = 0; l < eR.length;)
                    {
                        d.a a1 = eR[l];
                        int j1 = k;
                        if (a1 != null)
                        {
                            j1 = k + ko.b(1, a1);
                        }
                        l++;
                        k = j1;
                    }

                }
            }
            l = k;
            if (eS != null)
            {
                l = k;
                if (eS.length > 0)
                {
                    for (l = 0; l < eS.length;)
                    {
                        d.a a2 = eS[l];
                        int k1 = k;
                        if (a2 != null)
                        {
                            k1 = k + ko.b(2, a2);
                        }
                        l++;
                        k = k1;
                    }

                    l = k;
                }
            }
            k = l;
            if (eT != null)
            {
                k = l;
                if (eT.length > 0)
                {
                    k = l;
                    for (int i1 = 0; i1 < eT.length;)
                    {
                        c c1 = eT[i1];
                        int l1 = k;
                        if (c1 != null)
                        {
                            l1 = k + ko.b(3, c1);
                        }
                        i1++;
                        k = l1;
                    }

                }
            }
            adY = k;
            return k;
        }

        public d e(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int k1 = kw.b(kn1, 10);
                    d.a aa[];
                    int l;
                    if (eR == null)
                    {
                        l = 0;
                    } else
                    {
                        l = eR.length;
                    }
                    aa = new d.a[k1 + l];
                    k1 = l;
                    if (l != 0)
                    {
                        System.arraycopy(eR, 0, aa, 0, l);
                        k1 = l;
                    }
                    for (; k1 < aa.length - 1; k1++)
                    {
                        aa[k1] = new d.a();
                        kn1.a(aa[k1]);
                        kn1.mh();
                    }

                    aa[k1] = new d.a();
                    kn1.a(aa[k1]);
                    eR = aa;
                    break;

                case 18: // '\022'
                    int l1 = kw.b(kn1, 18);
                    d.a aa1[];
                    int i1;
                    if (eS == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = eS.length;
                    }
                    aa1 = new d.a[l1 + i1];
                    l1 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(eS, 0, aa1, 0, i1);
                        l1 = i1;
                    }
                    for (; l1 < aa1.length - 1; l1++)
                    {
                        aa1[l1] = new d.a();
                        kn1.a(aa1[l1]);
                        kn1.mh();
                    }

                    aa1[l1] = new d.a();
                    kn1.a(aa1[l1]);
                    eS = aa1;
                    break;

                case 26: // '\032'
                    int i2 = kw.b(kn1, 26);
                    c ac[];
                    int j1;
                    if (eT == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = eT.length;
                    }
                    ac = new c[i2 + j1];
                    i2 = j1;
                    if (j1 != 0)
                    {
                        System.arraycopy(eT, 0, ac, 0, j1);
                        i2 = j1;
                    }
                    for (; i2 < ac.length - 1; i2++)
                    {
                        ac[i2] = new c();
                        kn1.a(ac[i2]);
                        kn1.mh();
                    }

                    ac[i2] = new c();
                    kn1.a(ac[i2]);
                    eT = ac;
                    break;
                }
            } while (true);
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof d))
            {
                return false;
            }
            obj = (d)obj;
            if (!kr.equals(eR, ((d) (obj)).eR))
            {
                return false;
            }
            if (!kr.equals(eS, ((d) (obj)).eS))
            {
                return false;
            }
            if (!kr.equals(eT, ((d) (obj)).eT))
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((d) (obj)).adU == null || ((d) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((d) (obj)).adU);
            }
        }

        public d h()
        {
            eR = com.google.android.gms.internal.d.a.r();
            eS = com.google.android.gms.internal.d.a.r();
            eT = c.f();
            adU = null;
            adY = -1;
            return this;
        }

        public int hashCode()
        {
            int l = kr.hashCode(eR);
            int i1 = kr.hashCode(eS);
            int j1 = kr.hashCode(eT);
            int k;
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return (((l + 527) * 31 + i1) * 31 + j1) * 31 + k;
        }

        public d()
        {
            h();
        }
    }

    public static final class e extends kp
    {

        private static volatile e eU[];
        public int key;
        public int value;

        public static e[] i()
        {
            if (eU == null)
            {
                synchronized (kr.adX)
                {
                    if (eU == null)
                    {
                        eU = new e[0];
                    }
                }
            }
            return eU;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            ko1.i(1, key);
            ko1.i(2, value);
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return f(kn1);
        }

        public int c()
        {
            int k = super.c() + ko.j(1, key) + ko.j(2, value);
            adY = k;
            return k;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof e))
            {
                return false;
            }
            obj = (e)obj;
            if (key != ((e) (obj)).key)
            {
                return false;
            }
            if (value != ((e) (obj)).value)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((e) (obj)).adU == null || ((e) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((e) (obj)).adU);
            }
        }

        public e f(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    key = kn1.mk();
                    break;

                case 16: // '\020'
                    value = kn1.mk();
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            int l = key;
            int i1 = value;
            int k;
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return ((l + 527) * 31 + i1) * 31 + k;
        }

        public e j()
        {
            key = 0;
            value = 0;
            adU = null;
            adY = -1;
            return this;
        }

        public e()
        {
            j();
        }
    }

    public static final class f extends kp
    {

        public String eV[];
        public String eW[];
        public d.a eX[];
        public e eY[];
        public b eZ[];
        public b fa[];
        public b fb[];
        public g fc[];
        public String fd;
        public String fe;
        public String ff;
        public String fg;
        public a fh;
        public float fi;
        public boolean fj;
        public String fk[];
        public int fl;

        public static f a(byte abyte0[])
            throws ks
        {
            return (f)kt.a(new f(), abyte0);
        }

        public void a(ko ko1)
            throws IOException
        {
            if (eW != null && eW.length > 0)
            {
                for (int l = 0; l < eW.length; l++)
                {
                    String s = eW[l];
                    if (s != null)
                    {
                        ko1.b(1, s);
                    }
                }

            }
            if (eX != null && eX.length > 0)
            {
                for (int i1 = 0; i1 < eX.length; i1++)
                {
                    d.a a1 = eX[i1];
                    if (a1 != null)
                    {
                        ko1.a(2, a1);
                    }
                }

            }
            if (eY != null && eY.length > 0)
            {
                for (int j1 = 0; j1 < eY.length; j1++)
                {
                    e e1 = eY[j1];
                    if (e1 != null)
                    {
                        ko1.a(3, e1);
                    }
                }

            }
            if (eZ != null && eZ.length > 0)
            {
                for (int k1 = 0; k1 < eZ.length; k1++)
                {
                    b b1 = eZ[k1];
                    if (b1 != null)
                    {
                        ko1.a(4, b1);
                    }
                }

            }
            if (fa != null && fa.length > 0)
            {
                for (int l1 = 0; l1 < fa.length; l1++)
                {
                    b b2 = fa[l1];
                    if (b2 != null)
                    {
                        ko1.a(5, b2);
                    }
                }

            }
            if (fb != null && fb.length > 0)
            {
                for (int i2 = 0; i2 < fb.length; i2++)
                {
                    b b3 = fb[i2];
                    if (b3 != null)
                    {
                        ko1.a(6, b3);
                    }
                }

            }
            if (fc != null && fc.length > 0)
            {
                for (int j2 = 0; j2 < fc.length; j2++)
                {
                    g g1 = fc[j2];
                    if (g1 != null)
                    {
                        ko1.a(7, g1);
                    }
                }

            }
            if (!fd.equals(""))
            {
                ko1.b(9, fd);
            }
            if (!fe.equals(""))
            {
                ko1.b(10, fe);
            }
            if (!ff.equals("0"))
            {
                ko1.b(12, ff);
            }
            if (!fg.equals(""))
            {
                ko1.b(13, fg);
            }
            if (fh != null)
            {
                ko1.a(14, fh);
            }
            if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F))
            {
                ko1.b(15, fi);
            }
            if (fk != null && fk.length > 0)
            {
                for (int k2 = 0; k2 < fk.length; k2++)
                {
                    String s1 = fk[k2];
                    if (s1 != null)
                    {
                        ko1.b(16, s1);
                    }
                }

            }
            if (fl != 0)
            {
                ko1.i(17, fl);
            }
            if (fj)
            {
                ko1.a(18, fj);
            }
            if (eV != null && eV.length > 0)
            {
                for (int l2 = 0; l2 < eV.length; l2++)
                {
                    String s2 = eV[l2];
                    if (s2 != null)
                    {
                        ko1.b(19, s2);
                    }
                }

            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return g(kn1);
        }

        public int c()
        {
            int k5 = super.c();
            int l = k5;
            if (eW != null)
            {
                l = k5;
                if (eW.length > 0)
                {
                    l = 0;
                    int i1 = 0;
                    int k1;
                    int i4;
                    for (k1 = 0; l < eW.length; k1 = i4)
                    {
                        String s = eW[l];
                        int l4 = i1;
                        i4 = k1;
                        if (s != null)
                        {
                            i4 = k1 + 1;
                            l4 = i1 + ko.cf(s);
                        }
                        l++;
                        i1 = l4;
                    }

                    l = k5 + i1 + k1 * 1;
                }
            }
            int j1 = l;
            if (eX != null)
            {
                j1 = l;
                if (eX.length > 0)
                {
                    for (j1 = 0; j1 < eX.length;)
                    {
                        d.a a1 = eX[j1];
                        int l1 = l;
                        if (a1 != null)
                        {
                            l1 = l + ko.b(2, a1);
                        }
                        j1++;
                        l = l1;
                    }

                    j1 = l;
                }
            }
            l = j1;
            if (eY != null)
            {
                l = j1;
                if (eY.length > 0)
                {
                    l = j1;
                    for (j1 = 0; j1 < eY.length;)
                    {
                        e e1 = eY[j1];
                        int i2 = l;
                        if (e1 != null)
                        {
                            i2 = l + ko.b(3, e1);
                        }
                        j1++;
                        l = i2;
                    }

                }
            }
            j1 = l;
            if (eZ != null)
            {
                j1 = l;
                if (eZ.length > 0)
                {
                    for (j1 = 0; j1 < eZ.length;)
                    {
                        b b1 = eZ[j1];
                        int j2 = l;
                        if (b1 != null)
                        {
                            j2 = l + ko.b(4, b1);
                        }
                        j1++;
                        l = j2;
                    }

                    j1 = l;
                }
            }
            l = j1;
            if (fa != null)
            {
                l = j1;
                if (fa.length > 0)
                {
                    l = j1;
                    for (j1 = 0; j1 < fa.length;)
                    {
                        b b2 = fa[j1];
                        int k2 = l;
                        if (b2 != null)
                        {
                            k2 = l + ko.b(5, b2);
                        }
                        j1++;
                        l = k2;
                    }

                }
            }
            j1 = l;
            if (fb != null)
            {
                j1 = l;
                if (fb.length > 0)
                {
                    for (j1 = 0; j1 < fb.length;)
                    {
                        b b3 = fb[j1];
                        int l2 = l;
                        if (b3 != null)
                        {
                            l2 = l + ko.b(6, b3);
                        }
                        j1++;
                        l = l2;
                    }

                    j1 = l;
                }
            }
            l = j1;
            if (fc != null)
            {
                l = j1;
                if (fc.length > 0)
                {
                    l = j1;
                    for (j1 = 0; j1 < fc.length;)
                    {
                        g g1 = fc[j1];
                        int i3 = l;
                        if (g1 != null)
                        {
                            i3 = l + ko.b(7, g1);
                        }
                        j1++;
                        l = i3;
                    }

                }
            }
            j1 = l;
            if (!fd.equals(""))
            {
                j1 = l + ko.g(9, fd);
            }
            l = j1;
            if (!fe.equals(""))
            {
                l = j1 + ko.g(10, fe);
            }
            j1 = l;
            if (!ff.equals("0"))
            {
                j1 = l + ko.g(12, ff);
            }
            l = j1;
            if (!fg.equals(""))
            {
                l = j1 + ko.g(13, fg);
            }
            j1 = l;
            if (fh != null)
            {
                j1 = l + ko.b(14, fh);
            }
            l = j1;
            if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F))
            {
                l = j1 + ko.c(15, fi);
            }
            j1 = l;
            if (fk != null)
            {
                j1 = l;
                if (fk.length > 0)
                {
                    j1 = 0;
                    int j3 = 0;
                    int j4;
                    int i5;
                    for (j4 = 0; j1 < fk.length; j4 = i5)
                    {
                        String s1 = fk[j1];
                        int l5 = j3;
                        i5 = j4;
                        if (s1 != null)
                        {
                            i5 = j4 + 1;
                            l5 = j3 + ko.cf(s1);
                        }
                        j1++;
                        j3 = l5;
                    }

                    j1 = l + j3 + j4 * 2;
                }
            }
            int k3 = j1;
            if (fl != 0)
            {
                k3 = j1 + ko.j(17, fl);
            }
            l = k3;
            if (fj)
            {
                l = k3 + ko.b(18, fj);
            }
            j1 = l;
            if (eV != null)
            {
                j1 = l;
                if (eV.length > 0)
                {
                    j1 = 0;
                    int l3 = 0;
                    int k4;
                    int j5;
                    for (k4 = 0; j1 < eV.length; k4 = j5)
                    {
                        String s2 = eV[j1];
                        int i6 = l3;
                        j5 = k4;
                        if (s2 != null)
                        {
                            j5 = k4 + 1;
                            i6 = l3 + ko.cf(s2);
                        }
                        j1++;
                        l3 = i6;
                    }

                    j1 = l + l3 + k4 * 2;
                }
            }
            adY = j1;
            return j1;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof f))
            {
                return false;
            }
            obj = (f)obj;
            if (!kr.equals(eV, ((f) (obj)).eV))
            {
                return false;
            }
            if (!kr.equals(eW, ((f) (obj)).eW))
            {
                return false;
            }
            if (!kr.equals(eX, ((f) (obj)).eX))
            {
                return false;
            }
            if (!kr.equals(eY, ((f) (obj)).eY))
            {
                return false;
            }
            if (!kr.equals(eZ, ((f) (obj)).eZ))
            {
                return false;
            }
            if (!kr.equals(fa, ((f) (obj)).fa))
            {
                return false;
            }
            if (!kr.equals(fb, ((f) (obj)).fb))
            {
                return false;
            }
            if (!kr.equals(fc, ((f) (obj)).fc))
            {
                return false;
            }
            if (fd == null)
            {
                if (((f) (obj)).fd != null)
                {
                    return false;
                }
            } else
            if (!fd.equals(((f) (obj)).fd))
            {
                return false;
            }
            if (fe == null)
            {
                if (((f) (obj)).fe != null)
                {
                    return false;
                }
            } else
            if (!fe.equals(((f) (obj)).fe))
            {
                return false;
            }
            if (ff == null)
            {
                if (((f) (obj)).ff != null)
                {
                    return false;
                }
            } else
            if (!ff.equals(((f) (obj)).ff))
            {
                return false;
            }
            if (fg == null)
            {
                if (((f) (obj)).fg != null)
                {
                    return false;
                }
            } else
            if (!fg.equals(((f) (obj)).fg))
            {
                return false;
            }
            if (fh == null)
            {
                if (((f) (obj)).fh != null)
                {
                    return false;
                }
            } else
            if (!fh.equals(((f) (obj)).fh))
            {
                return false;
            }
            if (Float.floatToIntBits(fi) != Float.floatToIntBits(((f) (obj)).fi))
            {
                return false;
            }
            if (fj != ((f) (obj)).fj)
            {
                return false;
            }
            if (!kr.equals(fk, ((f) (obj)).fk))
            {
                return false;
            }
            if (fl != ((f) (obj)).fl)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((f) (obj)).adU == null || ((f) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((f) (obj)).adU);
            }
        }

        public f g(kn kn1)
            throws IOException
        {
            do
            {
                int l = kn1.mh();
                switch (l)
                {
                default:
                    if (!a(kn1, l))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int j3 = kw.b(kn1, 10);
                    String as[];
                    int i1;
                    if (eW == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = eW.length;
                    }
                    as = new String[j3 + i1];
                    j3 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(eW, 0, as, 0, i1);
                        j3 = i1;
                    }
                    for (; j3 < as.length - 1; j3++)
                    {
                        as[j3] = kn1.readString();
                        kn1.mh();
                    }

                    as[j3] = kn1.readString();
                    eW = as;
                    break;

                case 18: // '\022'
                    int k3 = kw.b(kn1, 18);
                    d.a aa[];
                    int j1;
                    if (eX == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = eX.length;
                    }
                    aa = new d.a[k3 + j1];
                    k3 = j1;
                    if (j1 != 0)
                    {
                        System.arraycopy(eX, 0, aa, 0, j1);
                        k3 = j1;
                    }
                    for (; k3 < aa.length - 1; k3++)
                    {
                        aa[k3] = new d.a();
                        kn1.a(aa[k3]);
                        kn1.mh();
                    }

                    aa[k3] = new d.a();
                    kn1.a(aa[k3]);
                    eX = aa;
                    break;

                case 26: // '\032'
                    int l3 = kw.b(kn1, 26);
                    e ae[];
                    int k1;
                    if (eY == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = eY.length;
                    }
                    ae = new e[l3 + k1];
                    l3 = k1;
                    if (k1 != 0)
                    {
                        System.arraycopy(eY, 0, ae, 0, k1);
                        l3 = k1;
                    }
                    for (; l3 < ae.length - 1; l3++)
                    {
                        ae[l3] = new e();
                        kn1.a(ae[l3]);
                        kn1.mh();
                    }

                    ae[l3] = new e();
                    kn1.a(ae[l3]);
                    eY = ae;
                    break;

                case 34: // '"'
                    int i4 = kw.b(kn1, 34);
                    b ab[];
                    int l1;
                    if (eZ == null)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = eZ.length;
                    }
                    ab = new b[i4 + l1];
                    i4 = l1;
                    if (l1 != 0)
                    {
                        System.arraycopy(eZ, 0, ab, 0, l1);
                        i4 = l1;
                    }
                    for (; i4 < ab.length - 1; i4++)
                    {
                        ab[i4] = new b();
                        kn1.a(ab[i4]);
                        kn1.mh();
                    }

                    ab[i4] = new b();
                    kn1.a(ab[i4]);
                    eZ = ab;
                    break;

                case 42: // '*'
                    int j4 = kw.b(kn1, 42);
                    b ab1[];
                    int i2;
                    if (fa == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = fa.length;
                    }
                    ab1 = new b[j4 + i2];
                    j4 = i2;
                    if (i2 != 0)
                    {
                        System.arraycopy(fa, 0, ab1, 0, i2);
                        j4 = i2;
                    }
                    for (; j4 < ab1.length - 1; j4++)
                    {
                        ab1[j4] = new b();
                        kn1.a(ab1[j4]);
                        kn1.mh();
                    }

                    ab1[j4] = new b();
                    kn1.a(ab1[j4]);
                    fa = ab1;
                    break;

                case 50: // '2'
                    int k4 = kw.b(kn1, 50);
                    b ab2[];
                    int j2;
                    if (fb == null)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = fb.length;
                    }
                    ab2 = new b[k4 + j2];
                    k4 = j2;
                    if (j2 != 0)
                    {
                        System.arraycopy(fb, 0, ab2, 0, j2);
                        k4 = j2;
                    }
                    for (; k4 < ab2.length - 1; k4++)
                    {
                        ab2[k4] = new b();
                        kn1.a(ab2[k4]);
                        kn1.mh();
                    }

                    ab2[k4] = new b();
                    kn1.a(ab2[k4]);
                    fb = ab2;
                    break;

                case 58: // ':'
                    int l4 = kw.b(kn1, 58);
                    g ag[];
                    int k2;
                    if (fc == null)
                    {
                        k2 = 0;
                    } else
                    {
                        k2 = fc.length;
                    }
                    ag = new g[l4 + k2];
                    l4 = k2;
                    if (k2 != 0)
                    {
                        System.arraycopy(fc, 0, ag, 0, k2);
                        l4 = k2;
                    }
                    for (; l4 < ag.length - 1; l4++)
                    {
                        ag[l4] = new g();
                        kn1.a(ag[l4]);
                        kn1.mh();
                    }

                    ag[l4] = new g();
                    kn1.a(ag[l4]);
                    fc = ag;
                    break;

                case 74: // 'J'
                    fd = kn1.readString();
                    break;

                case 82: // 'R'
                    fe = kn1.readString();
                    break;

                case 98: // 'b'
                    ff = kn1.readString();
                    break;

                case 106: // 'j'
                    fg = kn1.readString();
                    break;

                case 114: // 'r'
                    if (fh == null)
                    {
                        fh = new a();
                    }
                    kn1.a(fh);
                    break;

                case 125: // '}'
                    fi = kn1.readFloat();
                    break;

                case 130: 
                    int i5 = kw.b(kn1, 130);
                    String as1[];
                    int l2;
                    if (fk == null)
                    {
                        l2 = 0;
                    } else
                    {
                        l2 = fk.length;
                    }
                    as1 = new String[i5 + l2];
                    i5 = l2;
                    if (l2 != 0)
                    {
                        System.arraycopy(fk, 0, as1, 0, l2);
                        i5 = l2;
                    }
                    for (; i5 < as1.length - 1; i5++)
                    {
                        as1[i5] = kn1.readString();
                        kn1.mh();
                    }

                    as1[i5] = kn1.readString();
                    fk = as1;
                    break;

                case 136: 
                    fl = kn1.mk();
                    break;

                case 144: 
                    fj = kn1.ml();
                    break;

                case 154: 
                    int j5 = kw.b(kn1, 154);
                    String as2[];
                    int i3;
                    if (eV == null)
                    {
                        i3 = 0;
                    } else
                    {
                        i3 = eV.length;
                    }
                    as2 = new String[j5 + i3];
                    j5 = i3;
                    if (i3 != 0)
                    {
                        System.arraycopy(eV, 0, as2, 0, i3);
                        j5 = i3;
                    }
                    for (; j5 < as2.length - 1; j5++)
                    {
                        as2[j5] = kn1.readString();
                        kn1.mh();
                    }

                    as2[j5] = kn1.readString();
                    eV = as2;
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            int j2 = kr.hashCode(eV);
            int k2 = kr.hashCode(eW);
            int l2 = kr.hashCode(eX);
            int i3 = kr.hashCode(eY);
            int j3 = kr.hashCode(eZ);
            int k3 = kr.hashCode(fa);
            int l3 = kr.hashCode(fb);
            int i4 = kr.hashCode(fc);
            int l;
            int i1;
            int j1;
            int k1;
            int l1;
            char c1;
            int i2;
            int j4;
            int k4;
            int l4;
            if (fd == null)
            {
                l = 0;
            } else
            {
                l = fd.hashCode();
            }
            if (fe == null)
            {
                i1 = 0;
            } else
            {
                i1 = fe.hashCode();
            }
            if (ff == null)
            {
                j1 = 0;
            } else
            {
                j1 = ff.hashCode();
            }
            if (fg == null)
            {
                k1 = 0;
            } else
            {
                k1 = fg.hashCode();
            }
            if (fh == null)
            {
                l1 = 0;
            } else
            {
                l1 = fh.hashCode();
            }
            j4 = Float.floatToIntBits(fi);
            if (fj)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            k4 = kr.hashCode(fk);
            l4 = fl;
            if (adU == null || adU.isEmpty())
            {
                i2 = 0;
            } else
            {
                i2 = adU.hashCode();
            }
            return (((((((((((((((((j2 + 527) * 31 + k2) * 31 + l2) * 31 + i3) * 31 + j3) * 31 + k3) * 31 + l3) * 31 + i4) * 31 + l) * 31 + i1) * 31 + j1) * 31 + k1) * 31 + l1) * 31 + j4) * 31 + c1) * 31 + k4) * 31 + l4) * 31 + i2;
        }

        public f k()
        {
            eV = kw.aef;
            eW = kw.aef;
            eX = com.google.android.gms.internal.d.a.r();
            eY = e.i();
            eZ = b.d();
            fa = b.d();
            fb = b.d();
            fc = g.l();
            fd = "";
            fe = "";
            ff = "0";
            fg = "";
            fh = null;
            fi = 0.0F;
            fj = false;
            fk = kw.aef;
            fl = 0;
            adU = null;
            adY = -1;
            return this;
        }

        public f()
        {
            k();
        }
    }

    public static final class g extends kp
    {

        private static volatile g fm[];
        public int fn[];
        public int fo[];
        public int fp[];
        public int fq[];
        public int fr[];
        public int fs[];
        public int ft[];
        public int fu[];
        public int fv[];
        public int fw[];

        public static g[] l()
        {
            if (fm == null)
            {
                synchronized (kr.adX)
                {
                    if (fm == null)
                    {
                        fm = new g[0];
                    }
                }
            }
            return fm;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            if (fn != null && fn.length > 0)
            {
                for (int k = 0; k < fn.length; k++)
                {
                    ko1.i(1, fn[k]);
                }

            }
            if (fo != null && fo.length > 0)
            {
                for (int i1 = 0; i1 < fo.length; i1++)
                {
                    ko1.i(2, fo[i1]);
                }

            }
            if (fp != null && fp.length > 0)
            {
                for (int j1 = 0; j1 < fp.length; j1++)
                {
                    ko1.i(3, fp[j1]);
                }

            }
            if (fq != null && fq.length > 0)
            {
                for (int k1 = 0; k1 < fq.length; k1++)
                {
                    ko1.i(4, fq[k1]);
                }

            }
            if (fr != null && fr.length > 0)
            {
                for (int l1 = 0; l1 < fr.length; l1++)
                {
                    ko1.i(5, fr[l1]);
                }

            }
            if (fs != null && fs.length > 0)
            {
                for (int i2 = 0; i2 < fs.length; i2++)
                {
                    ko1.i(6, fs[i2]);
                }

            }
            if (ft != null && ft.length > 0)
            {
                for (int j2 = 0; j2 < ft.length; j2++)
                {
                    ko1.i(7, ft[j2]);
                }

            }
            if (fu != null && fu.length > 0)
            {
                for (int k2 = 0; k2 < fu.length; k2++)
                {
                    ko1.i(8, fu[k2]);
                }

            }
            if (fv != null && fv.length > 0)
            {
                for (int l2 = 0; l2 < fv.length; l2++)
                {
                    ko1.i(9, fv[l2]);
                }

            }
            if (fw != null && fw.length > 0)
            {
                for (int i3 = 0; i3 < fw.length; i3++)
                {
                    ko1.i(10, fw[i3]);
                }

            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return h(kn1);
        }

        public int c()
        {
            int k1 = super.c();
            int k = k1;
            if (fn != null)
            {
                k = k1;
                if (fn.length > 0)
                {
                    k = 0;
                    int i1 = 0;
                    for (; k < fn.length; k++)
                    {
                        i1 += ko.cX(fn[k]);
                    }

                    k = k1 + i1 + fn.length * 1;
                }
            }
            int j1 = k;
            if (fo != null)
            {
                j1 = k;
                if (fo.length > 0)
                {
                    j1 = 0;
                    int l1 = 0;
                    for (; j1 < fo.length; j1++)
                    {
                        l1 += ko.cX(fo[j1]);
                    }

                    j1 = k + l1 + fo.length * 1;
                }
            }
            k = j1;
            if (fp != null)
            {
                k = j1;
                if (fp.length > 0)
                {
                    k = 0;
                    int i2 = 0;
                    for (; k < fp.length; k++)
                    {
                        i2 += ko.cX(fp[k]);
                    }

                    k = j1 + i2 + fp.length * 1;
                }
            }
            j1 = k;
            if (fq != null)
            {
                j1 = k;
                if (fq.length > 0)
                {
                    j1 = 0;
                    int j2 = 0;
                    for (; j1 < fq.length; j1++)
                    {
                        j2 += ko.cX(fq[j1]);
                    }

                    j1 = k + j2 + fq.length * 1;
                }
            }
            k = j1;
            if (fr != null)
            {
                k = j1;
                if (fr.length > 0)
                {
                    k = 0;
                    int k2 = 0;
                    for (; k < fr.length; k++)
                    {
                        k2 += ko.cX(fr[k]);
                    }

                    k = j1 + k2 + fr.length * 1;
                }
            }
            j1 = k;
            if (fs != null)
            {
                j1 = k;
                if (fs.length > 0)
                {
                    j1 = 0;
                    int l2 = 0;
                    for (; j1 < fs.length; j1++)
                    {
                        l2 += ko.cX(fs[j1]);
                    }

                    j1 = k + l2 + fs.length * 1;
                }
            }
            k = j1;
            if (ft != null)
            {
                k = j1;
                if (ft.length > 0)
                {
                    k = 0;
                    int i3 = 0;
                    for (; k < ft.length; k++)
                    {
                        i3 += ko.cX(ft[k]);
                    }

                    k = j1 + i3 + ft.length * 1;
                }
            }
            j1 = k;
            if (fu != null)
            {
                j1 = k;
                if (fu.length > 0)
                {
                    j1 = 0;
                    int j3 = 0;
                    for (; j1 < fu.length; j1++)
                    {
                        j3 += ko.cX(fu[j1]);
                    }

                    j1 = k + j3 + fu.length * 1;
                }
            }
            k = j1;
            if (fv != null)
            {
                k = j1;
                if (fv.length > 0)
                {
                    k = 0;
                    int k3 = 0;
                    for (; k < fv.length; k++)
                    {
                        k3 += ko.cX(fv[k]);
                    }

                    k = j1 + k3 + fv.length * 1;
                }
            }
            j1 = k;
            if (fw != null)
            {
                j1 = k;
                if (fw.length > 0)
                {
                    j1 = 0;
                    int l3 = 0;
                    for (; j1 < fw.length; j1++)
                    {
                        l3 += ko.cX(fw[j1]);
                    }

                    j1 = k + l3 + fw.length * 1;
                }
            }
            adY = j1;
            return j1;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof g))
            {
                return false;
            }
            obj = (g)obj;
            if (!kr.equals(fn, ((g) (obj)).fn))
            {
                return false;
            }
            if (!kr.equals(fo, ((g) (obj)).fo))
            {
                return false;
            }
            if (!kr.equals(fp, ((g) (obj)).fp))
            {
                return false;
            }
            if (!kr.equals(fq, ((g) (obj)).fq))
            {
                return false;
            }
            if (!kr.equals(fr, ((g) (obj)).fr))
            {
                return false;
            }
            if (!kr.equals(fs, ((g) (obj)).fs))
            {
                return false;
            }
            if (!kr.equals(ft, ((g) (obj)).ft))
            {
                return false;
            }
            if (!kr.equals(fu, ((g) (obj)).fu))
            {
                return false;
            }
            if (!kr.equals(fv, ((g) (obj)).fv))
            {
                return false;
            }
            if (!kr.equals(fw, ((g) (obj)).fw))
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((g) (obj)).adU == null || ((g) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((g) (obj)).adU);
            }
        }

        public g h(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    int i6 = kw.b(kn1, 8);
                    int ai[];
                    int i1;
                    if (fn == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = fn.length;
                    }
                    ai = new int[i6 + i1];
                    i6 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(fn, 0, ai, 0, i1);
                        i6 = i1;
                    }
                    for (; i6 < ai.length - 1; i6++)
                    {
                        ai[i6] = kn1.mk();
                        kn1.mh();
                    }

                    ai[i6] = kn1.mk();
                    fn = ai;
                    break;

                case 10: // '\n'
                    int i11 = kn1.cR(kn1.mn());
                    int j1 = kn1.getPosition();
                    int j6;
                    for (j6 = 0; kn1.ms() > 0; j6++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(j1);
                    int ai1[];
                    if (fn == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = fn.length;
                    }
                    ai1 = new int[j6 + j1];
                    j6 = j1;
                    if (j1 != 0)
                    {
                        System.arraycopy(fn, 0, ai1, 0, j1);
                        j6 = j1;
                    }
                    for (; j6 < ai1.length; j6++)
                    {
                        ai1[j6] = kn1.mk();
                    }

                    fn = ai1;
                    kn1.cS(i11);
                    break;

                case 16: // '\020'
                    int k6 = kw.b(kn1, 16);
                    int ai2[];
                    int k1;
                    if (fo == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = fo.length;
                    }
                    ai2 = new int[k6 + k1];
                    k6 = k1;
                    if (k1 != 0)
                    {
                        System.arraycopy(fo, 0, ai2, 0, k1);
                        k6 = k1;
                    }
                    for (; k6 < ai2.length - 1; k6++)
                    {
                        ai2[k6] = kn1.mk();
                        kn1.mh();
                    }

                    ai2[k6] = kn1.mk();
                    fo = ai2;
                    break;

                case 18: // '\022'
                    int j11 = kn1.cR(kn1.mn());
                    int l1 = kn1.getPosition();
                    int l6;
                    for (l6 = 0; kn1.ms() > 0; l6++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(l1);
                    int ai3[];
                    if (fo == null)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = fo.length;
                    }
                    ai3 = new int[l6 + l1];
                    l6 = l1;
                    if (l1 != 0)
                    {
                        System.arraycopy(fo, 0, ai3, 0, l1);
                        l6 = l1;
                    }
                    for (; l6 < ai3.length; l6++)
                    {
                        ai3[l6] = kn1.mk();
                    }

                    fo = ai3;
                    kn1.cS(j11);
                    break;

                case 24: // '\030'
                    int i7 = kw.b(kn1, 24);
                    int ai4[];
                    int i2;
                    if (fp == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = fp.length;
                    }
                    ai4 = new int[i7 + i2];
                    i7 = i2;
                    if (i2 != 0)
                    {
                        System.arraycopy(fp, 0, ai4, 0, i2);
                        i7 = i2;
                    }
                    for (; i7 < ai4.length - 1; i7++)
                    {
                        ai4[i7] = kn1.mk();
                        kn1.mh();
                    }

                    ai4[i7] = kn1.mk();
                    fp = ai4;
                    break;

                case 26: // '\032'
                    int k11 = kn1.cR(kn1.mn());
                    int j2 = kn1.getPosition();
                    int j7;
                    for (j7 = 0; kn1.ms() > 0; j7++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(j2);
                    int ai5[];
                    if (fp == null)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = fp.length;
                    }
                    ai5 = new int[j7 + j2];
                    j7 = j2;
                    if (j2 != 0)
                    {
                        System.arraycopy(fp, 0, ai5, 0, j2);
                        j7 = j2;
                    }
                    for (; j7 < ai5.length; j7++)
                    {
                        ai5[j7] = kn1.mk();
                    }

                    fp = ai5;
                    kn1.cS(k11);
                    break;

                case 32: // ' '
                    int k7 = kw.b(kn1, 32);
                    int ai6[];
                    int k2;
                    if (fq == null)
                    {
                        k2 = 0;
                    } else
                    {
                        k2 = fq.length;
                    }
                    ai6 = new int[k7 + k2];
                    k7 = k2;
                    if (k2 != 0)
                    {
                        System.arraycopy(fq, 0, ai6, 0, k2);
                        k7 = k2;
                    }
                    for (; k7 < ai6.length - 1; k7++)
                    {
                        ai6[k7] = kn1.mk();
                        kn1.mh();
                    }

                    ai6[k7] = kn1.mk();
                    fq = ai6;
                    break;

                case 34: // '"'
                    int l11 = kn1.cR(kn1.mn());
                    int l2 = kn1.getPosition();
                    int l7;
                    for (l7 = 0; kn1.ms() > 0; l7++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(l2);
                    int ai7[];
                    if (fq == null)
                    {
                        l2 = 0;
                    } else
                    {
                        l2 = fq.length;
                    }
                    ai7 = new int[l7 + l2];
                    l7 = l2;
                    if (l2 != 0)
                    {
                        System.arraycopy(fq, 0, ai7, 0, l2);
                        l7 = l2;
                    }
                    for (; l7 < ai7.length; l7++)
                    {
                        ai7[l7] = kn1.mk();
                    }

                    fq = ai7;
                    kn1.cS(l11);
                    break;

                case 40: // '('
                    int i8 = kw.b(kn1, 40);
                    int ai8[];
                    int i3;
                    if (fr == null)
                    {
                        i3 = 0;
                    } else
                    {
                        i3 = fr.length;
                    }
                    ai8 = new int[i8 + i3];
                    i8 = i3;
                    if (i3 != 0)
                    {
                        System.arraycopy(fr, 0, ai8, 0, i3);
                        i8 = i3;
                    }
                    for (; i8 < ai8.length - 1; i8++)
                    {
                        ai8[i8] = kn1.mk();
                        kn1.mh();
                    }

                    ai8[i8] = kn1.mk();
                    fr = ai8;
                    break;

                case 42: // '*'
                    int i12 = kn1.cR(kn1.mn());
                    int j3 = kn1.getPosition();
                    int j8;
                    for (j8 = 0; kn1.ms() > 0; j8++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(j3);
                    int ai9[];
                    if (fr == null)
                    {
                        j3 = 0;
                    } else
                    {
                        j3 = fr.length;
                    }
                    ai9 = new int[j8 + j3];
                    j8 = j3;
                    if (j3 != 0)
                    {
                        System.arraycopy(fr, 0, ai9, 0, j3);
                        j8 = j3;
                    }
                    for (; j8 < ai9.length; j8++)
                    {
                        ai9[j8] = kn1.mk();
                    }

                    fr = ai9;
                    kn1.cS(i12);
                    break;

                case 48: // '0'
                    int k8 = kw.b(kn1, 48);
                    int ai10[];
                    int k3;
                    if (fs == null)
                    {
                        k3 = 0;
                    } else
                    {
                        k3 = fs.length;
                    }
                    ai10 = new int[k8 + k3];
                    k8 = k3;
                    if (k3 != 0)
                    {
                        System.arraycopy(fs, 0, ai10, 0, k3);
                        k8 = k3;
                    }
                    for (; k8 < ai10.length - 1; k8++)
                    {
                        ai10[k8] = kn1.mk();
                        kn1.mh();
                    }

                    ai10[k8] = kn1.mk();
                    fs = ai10;
                    break;

                case 50: // '2'
                    int j12 = kn1.cR(kn1.mn());
                    int l3 = kn1.getPosition();
                    int l8;
                    for (l8 = 0; kn1.ms() > 0; l8++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(l3);
                    int ai11[];
                    if (fs == null)
                    {
                        l3 = 0;
                    } else
                    {
                        l3 = fs.length;
                    }
                    ai11 = new int[l8 + l3];
                    l8 = l3;
                    if (l3 != 0)
                    {
                        System.arraycopy(fs, 0, ai11, 0, l3);
                        l8 = l3;
                    }
                    for (; l8 < ai11.length; l8++)
                    {
                        ai11[l8] = kn1.mk();
                    }

                    fs = ai11;
                    kn1.cS(j12);
                    break;

                case 56: // '8'
                    int i9 = kw.b(kn1, 56);
                    int ai12[];
                    int i4;
                    if (ft == null)
                    {
                        i4 = 0;
                    } else
                    {
                        i4 = ft.length;
                    }
                    ai12 = new int[i9 + i4];
                    i9 = i4;
                    if (i4 != 0)
                    {
                        System.arraycopy(ft, 0, ai12, 0, i4);
                        i9 = i4;
                    }
                    for (; i9 < ai12.length - 1; i9++)
                    {
                        ai12[i9] = kn1.mk();
                        kn1.mh();
                    }

                    ai12[i9] = kn1.mk();
                    ft = ai12;
                    break;

                case 58: // ':'
                    int k12 = kn1.cR(kn1.mn());
                    int j4 = kn1.getPosition();
                    int j9;
                    for (j9 = 0; kn1.ms() > 0; j9++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(j4);
                    int ai13[];
                    if (ft == null)
                    {
                        j4 = 0;
                    } else
                    {
                        j4 = ft.length;
                    }
                    ai13 = new int[j9 + j4];
                    j9 = j4;
                    if (j4 != 0)
                    {
                        System.arraycopy(ft, 0, ai13, 0, j4);
                        j9 = j4;
                    }
                    for (; j9 < ai13.length; j9++)
                    {
                        ai13[j9] = kn1.mk();
                    }

                    ft = ai13;
                    kn1.cS(k12);
                    break;

                case 64: // '@'
                    int k9 = kw.b(kn1, 64);
                    int ai14[];
                    int k4;
                    if (fu == null)
                    {
                        k4 = 0;
                    } else
                    {
                        k4 = fu.length;
                    }
                    ai14 = new int[k9 + k4];
                    k9 = k4;
                    if (k4 != 0)
                    {
                        System.arraycopy(fu, 0, ai14, 0, k4);
                        k9 = k4;
                    }
                    for (; k9 < ai14.length - 1; k9++)
                    {
                        ai14[k9] = kn1.mk();
                        kn1.mh();
                    }

                    ai14[k9] = kn1.mk();
                    fu = ai14;
                    break;

                case 66: // 'B'
                    int l12 = kn1.cR(kn1.mn());
                    int l4 = kn1.getPosition();
                    int l9;
                    for (l9 = 0; kn1.ms() > 0; l9++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(l4);
                    int ai15[];
                    if (fu == null)
                    {
                        l4 = 0;
                    } else
                    {
                        l4 = fu.length;
                    }
                    ai15 = new int[l9 + l4];
                    l9 = l4;
                    if (l4 != 0)
                    {
                        System.arraycopy(fu, 0, ai15, 0, l4);
                        l9 = l4;
                    }
                    for (; l9 < ai15.length; l9++)
                    {
                        ai15[l9] = kn1.mk();
                    }

                    fu = ai15;
                    kn1.cS(l12);
                    break;

                case 72: // 'H'
                    int i10 = kw.b(kn1, 72);
                    int ai16[];
                    int i5;
                    if (fv == null)
                    {
                        i5 = 0;
                    } else
                    {
                        i5 = fv.length;
                    }
                    ai16 = new int[i10 + i5];
                    i10 = i5;
                    if (i5 != 0)
                    {
                        System.arraycopy(fv, 0, ai16, 0, i5);
                        i10 = i5;
                    }
                    for (; i10 < ai16.length - 1; i10++)
                    {
                        ai16[i10] = kn1.mk();
                        kn1.mh();
                    }

                    ai16[i10] = kn1.mk();
                    fv = ai16;
                    break;

                case 74: // 'J'
                    int i13 = kn1.cR(kn1.mn());
                    int j5 = kn1.getPosition();
                    int j10;
                    for (j10 = 0; kn1.ms() > 0; j10++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(j5);
                    int ai17[];
                    if (fv == null)
                    {
                        j5 = 0;
                    } else
                    {
                        j5 = fv.length;
                    }
                    ai17 = new int[j10 + j5];
                    j10 = j5;
                    if (j5 != 0)
                    {
                        System.arraycopy(fv, 0, ai17, 0, j5);
                        j10 = j5;
                    }
                    for (; j10 < ai17.length; j10++)
                    {
                        ai17[j10] = kn1.mk();
                    }

                    fv = ai17;
                    kn1.cS(i13);
                    break;

                case 80: // 'P'
                    int k10 = kw.b(kn1, 80);
                    int ai18[];
                    int k5;
                    if (fw == null)
                    {
                        k5 = 0;
                    } else
                    {
                        k5 = fw.length;
                    }
                    ai18 = new int[k10 + k5];
                    k10 = k5;
                    if (k5 != 0)
                    {
                        System.arraycopy(fw, 0, ai18, 0, k5);
                        k10 = k5;
                    }
                    for (; k10 < ai18.length - 1; k10++)
                    {
                        ai18[k10] = kn1.mk();
                        kn1.mh();
                    }

                    ai18[k10] = kn1.mk();
                    fw = ai18;
                    break;

                case 82: // 'R'
                    int j13 = kn1.cR(kn1.mn());
                    int l5 = kn1.getPosition();
                    int l10;
                    for (l10 = 0; kn1.ms() > 0; l10++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(l5);
                    int ai19[];
                    if (fw == null)
                    {
                        l5 = 0;
                    } else
                    {
                        l5 = fw.length;
                    }
                    ai19 = new int[l10 + l5];
                    l10 = l5;
                    if (l5 != 0)
                    {
                        System.arraycopy(fw, 0, ai19, 0, l5);
                        l10 = l5;
                    }
                    for (; l10 < ai19.length; l10++)
                    {
                        ai19[l10] = kn1.mk();
                    }

                    fw = ai19;
                    kn1.cS(j13);
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            int i1 = kr.hashCode(fn);
            int j1 = kr.hashCode(fo);
            int k1 = kr.hashCode(fp);
            int l1 = kr.hashCode(fq);
            int i2 = kr.hashCode(fr);
            int j2 = kr.hashCode(fs);
            int k2 = kr.hashCode(ft);
            int l2 = kr.hashCode(fu);
            int i3 = kr.hashCode(fv);
            int j3 = kr.hashCode(fw);
            int k;
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return ((((((((((i1 + 527) * 31 + j1) * 31 + k1) * 31 + l1) * 31 + i2) * 31 + j2) * 31 + k2) * 31 + l2) * 31 + i3) * 31 + j3) * 31 + k;
        }

        public g m()
        {
            fn = kw.aea;
            fo = kw.aea;
            fp = kw.aea;
            fq = kw.aea;
            fr = kw.aea;
            fs = kw.aea;
            ft = kw.aea;
            fu = kw.aea;
            fv = kw.aea;
            fw = kw.aea;
            adU = null;
            adY = -1;
            return this;
        }

        public g()
        {
            m();
        }
    }

    public static final class h extends kp
    {

        public static final kq fx = kq.a(11, com/google/android/gms/internal/c$h, 810);
        private static final h fy[] = new h[0];
        public int fA[];
        public int fB[];
        public int fC;
        public int fD[];
        public int fE;
        public int fF;
        public int fz[];

        public void a(ko ko1)
            throws IOException
        {
            if (fz != null && fz.length > 0)
            {
                for (int k = 0; k < fz.length; k++)
                {
                    ko1.i(1, fz[k]);
                }

            }
            if (fA != null && fA.length > 0)
            {
                for (int l = 0; l < fA.length; l++)
                {
                    ko1.i(2, fA[l]);
                }

            }
            if (fB != null && fB.length > 0)
            {
                for (int i1 = 0; i1 < fB.length; i1++)
                {
                    ko1.i(3, fB[i1]);
                }

            }
            if (fC != 0)
            {
                ko1.i(4, fC);
            }
            if (fD != null && fD.length > 0)
            {
                for (int j1 = 0; j1 < fD.length; j1++)
                {
                    ko1.i(5, fD[j1]);
                }

            }
            if (fE != 0)
            {
                ko1.i(6, fE);
            }
            if (fF != 0)
            {
                ko1.i(7, fF);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return i(kn1);
        }

        public int c()
        {
            int j1 = super.c();
            int k = j1;
            if (fz != null)
            {
                k = j1;
                if (fz.length > 0)
                {
                    k = 0;
                    int l = 0;
                    for (; k < fz.length; k++)
                    {
                        l += ko.cX(fz[k]);
                    }

                    k = j1 + l + fz.length * 1;
                }
            }
            int i1 = k;
            if (fA != null)
            {
                i1 = k;
                if (fA.length > 0)
                {
                    i1 = 0;
                    j1 = 0;
                    for (; i1 < fA.length; i1++)
                    {
                        j1 += ko.cX(fA[i1]);
                    }

                    i1 = k + j1 + fA.length * 1;
                }
            }
            j1 = i1;
            if (fB != null)
            {
                j1 = i1;
                if (fB.length > 0)
                {
                    k = 0;
                    j1 = 0;
                    for (; k < fB.length; k++)
                    {
                        j1 += ko.cX(fB[k]);
                    }

                    j1 = i1 + j1 + fB.length * 1;
                }
            }
            k = j1;
            if (fC != 0)
            {
                k = j1 + ko.j(4, fC);
            }
            i1 = k;
            if (fD != null)
            {
                i1 = k;
                if (fD.length > 0)
                {
                    i1 = 0;
                    int k1 = 0;
                    for (; i1 < fD.length; i1++)
                    {
                        k1 += ko.cX(fD[i1]);
                    }

                    i1 = k + k1 + fD.length * 1;
                }
            }
            k = i1;
            if (fE != 0)
            {
                k = i1 + ko.j(6, fE);
            }
            i1 = k;
            if (fF != 0)
            {
                i1 = k + ko.j(7, fF);
            }
            adY = i1;
            return i1;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof h))
            {
                return false;
            }
            obj = (h)obj;
            if (!kr.equals(fz, ((h) (obj)).fz))
            {
                return false;
            }
            if (!kr.equals(fA, ((h) (obj)).fA))
            {
                return false;
            }
            if (!kr.equals(fB, ((h) (obj)).fB))
            {
                return false;
            }
            if (fC != ((h) (obj)).fC)
            {
                return false;
            }
            if (!kr.equals(fD, ((h) (obj)).fD))
            {
                return false;
            }
            if (fE != ((h) (obj)).fE)
            {
                return false;
            }
            if (fF != ((h) (obj)).fF)
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((h) (obj)).adU == null || ((h) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((h) (obj)).adU);
            }
        }

        public int hashCode()
        {
            int l = kr.hashCode(fz);
            int i1 = kr.hashCode(fA);
            int j1 = kr.hashCode(fB);
            int k1 = fC;
            int l1 = kr.hashCode(fD);
            int i2 = fE;
            int j2 = fF;
            int k;
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return (((((((l + 527) * 31 + i1) * 31 + j1) * 31 + k1) * 31 + l1) * 31 + i2) * 31 + j2) * 31 + k;
        }

        public h i(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    int l2 = kw.b(kn1, 8);
                    int ai[];
                    int l;
                    if (fz == null)
                    {
                        l = 0;
                    } else
                    {
                        l = fz.length;
                    }
                    ai = new int[l2 + l];
                    l2 = l;
                    if (l != 0)
                    {
                        System.arraycopy(fz, 0, ai, 0, l);
                        l2 = l;
                    }
                    for (; l2 < ai.length - 1; l2++)
                    {
                        ai[l2] = kn1.mk();
                        kn1.mh();
                    }

                    ai[l2] = kn1.mk();
                    fz = ai;
                    break;

                case 10: // '\n'
                    int l4 = kn1.cR(kn1.mn());
                    int i1 = kn1.getPosition();
                    int i3;
                    for (i3 = 0; kn1.ms() > 0; i3++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(i1);
                    int ai1[];
                    if (fz == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = fz.length;
                    }
                    ai1 = new int[i3 + i1];
                    i3 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(fz, 0, ai1, 0, i1);
                        i3 = i1;
                    }
                    for (; i3 < ai1.length; i3++)
                    {
                        ai1[i3] = kn1.mk();
                    }

                    fz = ai1;
                    kn1.cS(l4);
                    break;

                case 16: // '\020'
                    int j3 = kw.b(kn1, 16);
                    int ai2[];
                    int j1;
                    if (fA == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = fA.length;
                    }
                    ai2 = new int[j3 + j1];
                    j3 = j1;
                    if (j1 != 0)
                    {
                        System.arraycopy(fA, 0, ai2, 0, j1);
                        j3 = j1;
                    }
                    for (; j3 < ai2.length - 1; j3++)
                    {
                        ai2[j3] = kn1.mk();
                        kn1.mh();
                    }

                    ai2[j3] = kn1.mk();
                    fA = ai2;
                    break;

                case 18: // '\022'
                    int i5 = kn1.cR(kn1.mn());
                    int k1 = kn1.getPosition();
                    int k3;
                    for (k3 = 0; kn1.ms() > 0; k3++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(k1);
                    int ai3[];
                    if (fA == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = fA.length;
                    }
                    ai3 = new int[k3 + k1];
                    k3 = k1;
                    if (k1 != 0)
                    {
                        System.arraycopy(fA, 0, ai3, 0, k1);
                        k3 = k1;
                    }
                    for (; k3 < ai3.length; k3++)
                    {
                        ai3[k3] = kn1.mk();
                    }

                    fA = ai3;
                    kn1.cS(i5);
                    break;

                case 24: // '\030'
                    int l3 = kw.b(kn1, 24);
                    int ai4[];
                    int l1;
                    if (fB == null)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = fB.length;
                    }
                    ai4 = new int[l3 + l1];
                    l3 = l1;
                    if (l1 != 0)
                    {
                        System.arraycopy(fB, 0, ai4, 0, l1);
                        l3 = l1;
                    }
                    for (; l3 < ai4.length - 1; l3++)
                    {
                        ai4[l3] = kn1.mk();
                        kn1.mh();
                    }

                    ai4[l3] = kn1.mk();
                    fB = ai4;
                    break;

                case 26: // '\032'
                    int j5 = kn1.cR(kn1.mn());
                    int i2 = kn1.getPosition();
                    int i4;
                    for (i4 = 0; kn1.ms() > 0; i4++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(i2);
                    int ai5[];
                    if (fB == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = fB.length;
                    }
                    ai5 = new int[i4 + i2];
                    i4 = i2;
                    if (i2 != 0)
                    {
                        System.arraycopy(fB, 0, ai5, 0, i2);
                        i4 = i2;
                    }
                    for (; i4 < ai5.length; i4++)
                    {
                        ai5[i4] = kn1.mk();
                    }

                    fB = ai5;
                    kn1.cS(j5);
                    break;

                case 32: // ' '
                    fC = kn1.mk();
                    break;

                case 40: // '('
                    int j4 = kw.b(kn1, 40);
                    int ai6[];
                    int j2;
                    if (fD == null)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = fD.length;
                    }
                    ai6 = new int[j4 + j2];
                    j4 = j2;
                    if (j2 != 0)
                    {
                        System.arraycopy(fD, 0, ai6, 0, j2);
                        j4 = j2;
                    }
                    for (; j4 < ai6.length - 1; j4++)
                    {
                        ai6[j4] = kn1.mk();
                        kn1.mh();
                    }

                    ai6[j4] = kn1.mk();
                    fD = ai6;
                    break;

                case 42: // '*'
                    int k5 = kn1.cR(kn1.mn());
                    int k2 = kn1.getPosition();
                    int k4;
                    for (k4 = 0; kn1.ms() > 0; k4++)
                    {
                        kn1.mk();
                    }

                    kn1.cT(k2);
                    int ai7[];
                    if (fD == null)
                    {
                        k2 = 0;
                    } else
                    {
                        k2 = fD.length;
                    }
                    ai7 = new int[k4 + k2];
                    k4 = k2;
                    if (k2 != 0)
                    {
                        System.arraycopy(fD, 0, ai7, 0, k2);
                        k4 = k2;
                    }
                    for (; k4 < ai7.length; k4++)
                    {
                        ai7[k4] = kn1.mk();
                    }

                    fD = ai7;
                    kn1.cS(k5);
                    break;

                case 48: // '0'
                    fE = kn1.mk();
                    break;

                case 56: // '8'
                    fF = kn1.mk();
                    break;
                }
            } while (true);
        }

        public h n()
        {
            fz = kw.aea;
            fA = kw.aea;
            fB = kw.aea;
            fC = 0;
            fD = kw.aea;
            fE = 0;
            fF = 0;
            adU = null;
            adY = -1;
            return this;
        }


        public h()
        {
            n();
        }
    }

    public static final class i extends kp
    {

        private static volatile i fG[];
        public d.a fH;
        public d fI;
        public String name;

        public static i[] o()
        {
            if (fG == null)
            {
                synchronized (kr.adX)
                {
                    if (fG == null)
                    {
                        fG = new i[0];
                    }
                }
            }
            return fG;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ko ko1)
            throws IOException
        {
            if (!name.equals(""))
            {
                ko1.b(1, name);
            }
            if (fH != null)
            {
                ko1.a(2, fH);
            }
            if (fI != null)
            {
                ko1.a(3, fI);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return j(kn1);
        }

        public int c()
        {
            int l = super.c();
            int k = l;
            if (!name.equals(""))
            {
                k = l + ko.g(1, name);
            }
            l = k;
            if (fH != null)
            {
                l = k + ko.b(2, fH);
            }
            k = l;
            if (fI != null)
            {
                k = l + ko.b(3, fI);
            }
            adY = k;
            return k;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof i))
            {
                return false;
            }
            obj = (i)obj;
            if (name == null)
            {
                if (((i) (obj)).name != null)
                {
                    return false;
                }
            } else
            if (!name.equals(((i) (obj)).name))
            {
                return false;
            }
            if (fH == null)
            {
                if (((i) (obj)).fH != null)
                {
                    return false;
                }
            } else
            if (!fH.equals(((i) (obj)).fH))
            {
                return false;
            }
            if (fI == null)
            {
                if (((i) (obj)).fI != null)
                {
                    return false;
                }
            } else
            if (!fI.equals(((i) (obj)).fI))
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((i) (obj)).adU == null || ((i) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((i) (obj)).adU);
            }
        }

        public int hashCode()
        {
            int k;
            int l;
            int i1;
            int j1;
            if (name == null)
            {
                k = 0;
            } else
            {
                k = name.hashCode();
            }
            if (fH == null)
            {
                l = 0;
            } else
            {
                l = fH.hashCode();
            }
            if (fI == null)
            {
                i1 = 0;
            } else
            {
                i1 = fI.hashCode();
            }
            if (adU == null || adU.isEmpty())
            {
                j1 = 0;
            } else
            {
                j1 = adU.hashCode();
            }
            return (((k + 527) * 31 + l) * 31 + i1) * 31 + j1;
        }

        public i j(kn kn1)
            throws IOException
        {
            do
            {
                int k = kn1.mh();
                switch (k)
                {
                default:
                    if (!a(kn1, k))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    name = kn1.readString();
                    break;

                case 18: // '\022'
                    if (fH == null)
                    {
                        fH = new d.a();
                    }
                    kn1.a(fH);
                    break;

                case 26: // '\032'
                    if (fI == null)
                    {
                        fI = new d();
                    }
                    kn1.a(fI);
                    break;
                }
            } while (true);
        }

        public i p()
        {
            name = "";
            fH = null;
            fI = null;
            adU = null;
            adY = -1;
            return this;
        }

        public i()
        {
            p();
        }
    }

    public static final class j extends kp
    {

        public i fJ[];
        public f fK;
        public String fL;

        public static j b(byte abyte0[])
            throws ks
        {
            return (j)kt.a(new j(), abyte0);
        }

        public void a(ko ko1)
            throws IOException
        {
            if (fJ != null && fJ.length > 0)
            {
                for (int i1 = 0; i1 < fJ.length; i1++)
                {
                    i l = fJ[i1];
                    if (l != null)
                    {
                        ko1.a(1, l);
                    }
                }

            }
            if (fK != null)
            {
                ko1.a(2, fK);
            }
            if (!fL.equals(""))
            {
                ko1.b(3, fL);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return k(kn1);
        }

        public int c()
        {
            int j1 = super.c();
            int i1 = j1;
            if (fJ != null)
            {
                i1 = j1;
                if (fJ.length > 0)
                {
                    i1 = j1;
                    for (j1 = 0; j1 < fJ.length;)
                    {
                        i l = fJ[j1];
                        int k1 = i1;
                        if (l != null)
                        {
                            k1 = i1 + ko.b(1, l);
                        }
                        j1++;
                        i1 = k1;
                    }

                }
            }
            j1 = i1;
            if (fK != null)
            {
                j1 = i1 + ko.b(2, fK);
            }
            i1 = j1;
            if (!fL.equals(""))
            {
                i1 = j1 + ko.g(3, fL);
            }
            adY = i1;
            return i1;
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            }
            if (!(obj instanceof j))
            {
                return false;
            }
            obj = (j)obj;
            if (!kr.equals(fJ, ((j) (obj)).fJ))
            {
                return false;
            }
            if (fK == null)
            {
                if (((j) (obj)).fK != null)
                {
                    return false;
                }
            } else
            if (!fK.equals(((j) (obj)).fK))
            {
                return false;
            }
            if (fL == null)
            {
                if (((j) (obj)).fL != null)
                {
                    return false;
                }
            } else
            if (!fL.equals(((j) (obj)).fL))
            {
                return false;
            }
            if (adU == null || adU.isEmpty())
            {
                return ((j) (obj)).adU == null || ((j) (obj)).adU.isEmpty();
            } else
            {
                return adU.equals(((j) (obj)).adU);
            }
        }

        public int hashCode()
        {
            int k1 = kr.hashCode(fJ);
            int l;
            int i1;
            int j1;
            if (fK == null)
            {
                l = 0;
            } else
            {
                l = fK.hashCode();
            }
            if (fL == null)
            {
                i1 = 0;
            } else
            {
                i1 = fL.hashCode();
            }
            if (adU == null || adU.isEmpty())
            {
                j1 = 0;
            } else
            {
                j1 = adU.hashCode();
            }
            return (((k1 + 527) * 31 + l) * 31 + i1) * 31 + j1;
        }

        public j k(kn kn1)
            throws IOException
        {
            do
            {
                int l = kn1.mh();
                switch (l)
                {
                default:
                    if (!a(kn1, l))
                    {
                        return this;
                    }
                    break;

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int j1 = kw.b(kn1, 10);
                    i ai[];
                    int i1;
                    if (fJ == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = fJ.length;
                    }
                    ai = new i[j1 + i1];
                    j1 = i1;
                    if (i1 != 0)
                    {
                        System.arraycopy(fJ, 0, ai, 0, i1);
                        j1 = i1;
                    }
                    for (; j1 < ai.length - 1; j1++)
                    {
                        ai[j1] = new i();
                        kn1.a(ai[j1]);
                        kn1.mh();
                    }

                    ai[j1] = new i();
                    kn1.a(ai[j1]);
                    fJ = ai;
                    break;

                case 18: // '\022'
                    if (fK == null)
                    {
                        fK = new f();
                    }
                    kn1.a(fK);
                    break;

                case 26: // '\032'
                    fL = kn1.readString();
                    break;
                }
            } while (true);
        }

        public j q()
        {
            fJ = i.o();
            fK = null;
            fL = "";
            adU = null;
            adY = -1;
            return this;
        }

        public j()
        {
            q();
        }
    }

}
