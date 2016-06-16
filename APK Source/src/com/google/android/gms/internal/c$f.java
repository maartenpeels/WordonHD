// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, ks, kt, 
//            ko, kr, kn, kw

public static final class k extends kp
{

    public String eV[];
    public String eW[];
    public adY eX[];
    public adY eY[];
    public adY eZ[];
    public adY fa[];
    public adY fb[];
    public adY fc[];
    public String fd;
    public String fe;
    public String ff;
    public String fg;
    public adY fh;
    public float fi;
    public boolean fj;
    public String fk[];
    public int fl;

    public static k a(byte abyte0[])
        throws ks
    {
        return (k)kt.a(new <init>(), abyte0);
    }

    public void a(ko ko1)
        throws IOException
    {
        if (eW != null && eW.length > 0)
        {
            for (int i = 0; i < eW.length; i++)
            {
                String s = eW[i];
                if (s != null)
                {
                    ko1.b(1, s);
                }
            }

        }
        if (eX != null && eX.length > 0)
        {
            for (int j = 0; j < eX.length; j++)
            {
                <init> <init>1 = eX[j];
                if (<init>1 != null)
                {
                    ko1.a(2, <init>1);
                }
            }

        }
        if (eY != null && eY.length > 0)
        {
            for (int l = 0; l < eY.length; l++)
            {
                <init> <init>2 = eY[l];
                if (<init>2 != null)
                {
                    ko1.a(3, <init>2);
                }
            }

        }
        if (eZ != null && eZ.length > 0)
        {
            for (int i1 = 0; i1 < eZ.length; i1++)
            {
                <init> <init>3 = eZ[i1];
                if (<init>3 != null)
                {
                    ko1.a(4, <init>3);
                }
            }

        }
        if (fa != null && fa.length > 0)
        {
            for (int j1 = 0; j1 < fa.length; j1++)
            {
                <init> <init>4 = fa[j1];
                if (<init>4 != null)
                {
                    ko1.a(5, <init>4);
                }
            }

        }
        if (fb != null && fb.length > 0)
        {
            for (int k1 = 0; k1 < fb.length; k1++)
            {
                <init> <init>5 = fb[k1];
                if (<init>5 != null)
                {
                    ko1.a(6, <init>5);
                }
            }

        }
        if (fc != null && fc.length > 0)
        {
            for (int l1 = 0; l1 < fc.length; l1++)
            {
                <init> <init>6 = fc[l1];
                if (<init>6 != null)
                {
                    ko1.a(7, <init>6);
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
            for (int i2 = 0; i2 < fk.length; i2++)
            {
                String s1 = fk[i2];
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
            for (int j2 = 0; j2 < eV.length; j2++)
            {
                String s2 = eV[j2];
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
        int i5 = super.c();
        int i = i5;
        if (eW != null)
        {
            i = i5;
            if (eW.length > 0)
            {
                i = 0;
                int j = 0;
                int i1;
                int k3;
                for (i1 = 0; i < eW.length; i1 = k3)
                {
                    String s = eW[i];
                    int j4 = j;
                    k3 = i1;
                    if (s != null)
                    {
                        k3 = i1 + 1;
                        j4 = j + ko.cf(s);
                    }
                    i++;
                    j = j4;
                }

                i = i5 + j + i1 * 1;
            }
        }
        int l = i;
        if (eX != null)
        {
            l = i;
            if (eX.length > 0)
            {
                for (l = 0; l < eX.length;)
                {
                    g g1 = eX[l];
                    int j1 = i;
                    if (g1 != null)
                    {
                        j1 = i + ko.b(2, g1);
                    }
                    l++;
                    i = j1;
                }

                l = i;
            }
        }
        i = l;
        if (eY != null)
        {
            i = l;
            if (eY.length > 0)
            {
                i = l;
                for (l = 0; l < eY.length;)
                {
                    g g2 = eY[l];
                    int k1 = i;
                    if (g2 != null)
                    {
                        k1 = i + ko.b(3, g2);
                    }
                    l++;
                    i = k1;
                }

            }
        }
        l = i;
        if (eZ != null)
        {
            l = i;
            if (eZ.length > 0)
            {
                for (l = 0; l < eZ.length;)
                {
                    g g3 = eZ[l];
                    int l1 = i;
                    if (g3 != null)
                    {
                        l1 = i + ko.b(4, g3);
                    }
                    l++;
                    i = l1;
                }

                l = i;
            }
        }
        i = l;
        if (fa != null)
        {
            i = l;
            if (fa.length > 0)
            {
                i = l;
                for (l = 0; l < fa.length;)
                {
                    g g4 = fa[l];
                    int i2 = i;
                    if (g4 != null)
                    {
                        i2 = i + ko.b(5, g4);
                    }
                    l++;
                    i = i2;
                }

            }
        }
        l = i;
        if (fb != null)
        {
            l = i;
            if (fb.length > 0)
            {
                for (l = 0; l < fb.length;)
                {
                    g g5 = fb[l];
                    int j2 = i;
                    if (g5 != null)
                    {
                        j2 = i + ko.b(6, g5);
                    }
                    l++;
                    i = j2;
                }

                l = i;
            }
        }
        i = l;
        if (fc != null)
        {
            i = l;
            if (fc.length > 0)
            {
                i = l;
                for (l = 0; l < fc.length;)
                {
                    g g6 = fc[l];
                    int k2 = i;
                    if (g6 != null)
                    {
                        k2 = i + ko.b(7, g6);
                    }
                    l++;
                    i = k2;
                }

            }
        }
        l = i;
        if (!fd.equals(""))
        {
            l = i + ko.g(9, fd);
        }
        i = l;
        if (!fe.equals(""))
        {
            i = l + ko.g(10, fe);
        }
        l = i;
        if (!ff.equals("0"))
        {
            l = i + ko.g(12, ff);
        }
        i = l;
        if (!fg.equals(""))
        {
            i = l + ko.g(13, fg);
        }
        l = i;
        if (fh != null)
        {
            l = i + ko.b(14, fh);
        }
        i = l;
        if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F))
        {
            i = l + ko.c(15, fi);
        }
        l = i;
        if (fk != null)
        {
            l = i;
            if (fk.length > 0)
            {
                l = 0;
                int l2 = 0;
                int l3;
                int k4;
                for (l3 = 0; l < fk.length; l3 = k4)
                {
                    String s1 = fk[l];
                    int j5 = l2;
                    k4 = l3;
                    if (s1 != null)
                    {
                        k4 = l3 + 1;
                        j5 = l2 + ko.cf(s1);
                    }
                    l++;
                    l2 = j5;
                }

                l = i + l2 + l3 * 2;
            }
        }
        int i3 = l;
        if (fl != 0)
        {
            i3 = l + ko.j(17, fl);
        }
        i = i3;
        if (fj)
        {
            i = i3 + ko.b(18, fj);
        }
        l = i;
        if (eV != null)
        {
            l = i;
            if (eV.length > 0)
            {
                l = 0;
                int j3 = 0;
                int i4;
                int l4;
                for (i4 = 0; l < eV.length; i4 = l4)
                {
                    String s2 = eV[l];
                    int k5 = j3;
                    l4 = i4;
                    if (s2 != null)
                    {
                        l4 = i4 + 1;
                        k5 = j3 + ko.cf(s2);
                    }
                    l++;
                    j3 = k5;
                }

                l = i + j3 + i4 * 2;
            }
        }
        adY = l;
        return l;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof adY))
        {
            return false;
        }
        obj = (adY)obj;
        if (!kr.equals(eV, ((eV) (obj)).eV))
        {
            return false;
        }
        if (!kr.equals(eW, ((eW) (obj)).eW))
        {
            return false;
        }
        if (!kr.equals(eX, ((eX) (obj)).eX))
        {
            return false;
        }
        if (!kr.equals(eY, ((eY) (obj)).eY))
        {
            return false;
        }
        if (!kr.equals(eZ, ((eZ) (obj)).eZ))
        {
            return false;
        }
        if (!kr.equals(fa, ((fa) (obj)).fa))
        {
            return false;
        }
        if (!kr.equals(fb, ((fb) (obj)).fb))
        {
            return false;
        }
        if (!kr.equals(fc, ((fc) (obj)).fc))
        {
            return false;
        }
        if (fd == null)
        {
            if (((fd) (obj)).fd != null)
            {
                return false;
            }
        } else
        if (!fd.equals(((fd) (obj)).fd))
        {
            return false;
        }
        if (fe == null)
        {
            if (((fe) (obj)).fe != null)
            {
                return false;
            }
        } else
        if (!fe.equals(((fe) (obj)).fe))
        {
            return false;
        }
        if (ff == null)
        {
            if (((ff) (obj)).ff != null)
            {
                return false;
            }
        } else
        if (!ff.equals(((ff) (obj)).ff))
        {
            return false;
        }
        if (fg == null)
        {
            if (((fg) (obj)).fg != null)
            {
                return false;
            }
        } else
        if (!fg.equals(((fg) (obj)).fg))
        {
            return false;
        }
        if (fh == null)
        {
            if (((fh) (obj)).fh != null)
            {
                return false;
            }
        } else
        if (!fh.equals(((equals) (obj)).fh))
        {
            return false;
        }
        if (Float.floatToIntBits(fi) != Float.floatToIntBits(((fi) (obj)).fi))
        {
            return false;
        }
        if (fj != ((fj) (obj)).fj)
        {
            return false;
        }
        if (!kr.equals(fk, ((fk) (obj)).fk))
        {
            return false;
        }
        if (fl != ((fl) (obj)).fl)
        {
            return false;
        }
        if (adU == null || adU.isEmpty())
        {
            return ((adU) (obj)).adU == null || ((adU) (obj)).adU.isEmpty();
        } else
        {
            return adU.equals(((adU) (obj)).adU);
        }
    }

    public adU g(kn kn1)
        throws IOException
    {
        do
        {
            int i = kn1.mh();
            switch (i)
            {
            default:
                if (!a(kn1, i))
                {
                    return this;
                }
                break;

            case 0: // '\0'
                return this;

            case 10: // '\n'
                int l2 = kw.b(kn1, 10);
                String as[];
                int j;
                if (eW == null)
                {
                    j = 0;
                } else
                {
                    j = eW.length;
                }
                as = new String[l2 + j];
                l2 = j;
                if (j != 0)
                {
                    System.arraycopy(eW, 0, as, 0, j);
                    l2 = j;
                }
                for (; l2 < as.length - 1; l2++)
                {
                    as[l2] = kn1.readString();
                    kn1.mh();
                }

                as[l2] = kn1.readString();
                eW = as;
                break;

            case 18: // '\022'
                int i3 = kw.b(kn1, 18);
                adU aadu[];
                int l;
                if (eX == null)
                {
                    l = 0;
                } else
                {
                    l = eX.length;
                }
                aadu = new eX[i3 + l];
                i3 = l;
                if (l != 0)
                {
                    System.arraycopy(eX, 0, aadu, 0, l);
                    i3 = l;
                }
                for (; i3 < aadu.length - 1; i3++)
                {
                    aadu[i3] = new <init>();
                    kn1.a(aadu[i3]);
                    kn1.mh();
                }

                aadu[i3] = new <init>();
                kn1.a(aadu[i3]);
                eX = aadu;
                break;

            case 26: // '\032'
                int j3 = kw.b(kn1, 26);
                adU aadu1[];
                int i1;
                if (eY == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = eY.length;
                }
                aadu1 = new eY[j3 + i1];
                j3 = i1;
                if (i1 != 0)
                {
                    System.arraycopy(eY, 0, aadu1, 0, i1);
                    j3 = i1;
                }
                for (; j3 < aadu1.length - 1; j3++)
                {
                    aadu1[j3] = new <init>();
                    kn1.a(aadu1[j3]);
                    kn1.mh();
                }

                aadu1[j3] = new <init>();
                kn1.a(aadu1[j3]);
                eY = aadu1;
                break;

            case 34: // '"'
                int k3 = kw.b(kn1, 34);
                adU aadu2[];
                int j1;
                if (eZ == null)
                {
                    j1 = 0;
                } else
                {
                    j1 = eZ.length;
                }
                aadu2 = new eZ[k3 + j1];
                k3 = j1;
                if (j1 != 0)
                {
                    System.arraycopy(eZ, 0, aadu2, 0, j1);
                    k3 = j1;
                }
                for (; k3 < aadu2.length - 1; k3++)
                {
                    aadu2[k3] = new <init>();
                    kn1.a(aadu2[k3]);
                    kn1.mh();
                }

                aadu2[k3] = new <init>();
                kn1.a(aadu2[k3]);
                eZ = aadu2;
                break;

            case 42: // '*'
                int l3 = kw.b(kn1, 42);
                adU aadu3[];
                int k1;
                if (fa == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = fa.length;
                }
                aadu3 = new fa[l3 + k1];
                l3 = k1;
                if (k1 != 0)
                {
                    System.arraycopy(fa, 0, aadu3, 0, k1);
                    l3 = k1;
                }
                for (; l3 < aadu3.length - 1; l3++)
                {
                    aadu3[l3] = new <init>();
                    kn1.a(aadu3[l3]);
                    kn1.mh();
                }

                aadu3[l3] = new <init>();
                kn1.a(aadu3[l3]);
                fa = aadu3;
                break;

            case 50: // '2'
                int i4 = kw.b(kn1, 50);
                adU aadu4[];
                int l1;
                if (fb == null)
                {
                    l1 = 0;
                } else
                {
                    l1 = fb.length;
                }
                aadu4 = new fb[i4 + l1];
                i4 = l1;
                if (l1 != 0)
                {
                    System.arraycopy(fb, 0, aadu4, 0, l1);
                    i4 = l1;
                }
                for (; i4 < aadu4.length - 1; i4++)
                {
                    aadu4[i4] = new <init>();
                    kn1.a(aadu4[i4]);
                    kn1.mh();
                }

                aadu4[i4] = new <init>();
                kn1.a(aadu4[i4]);
                fb = aadu4;
                break;

            case 58: // ':'
                int j4 = kw.b(kn1, 58);
                adU aadu5[];
                int i2;
                if (fc == null)
                {
                    i2 = 0;
                } else
                {
                    i2 = fc.length;
                }
                aadu5 = new fc[j4 + i2];
                j4 = i2;
                if (i2 != 0)
                {
                    System.arraycopy(fc, 0, aadu5, 0, i2);
                    j4 = i2;
                }
                for (; j4 < aadu5.length - 1; j4++)
                {
                    aadu5[j4] = new <init>();
                    kn1.a(aadu5[j4]);
                    kn1.mh();
                }

                aadu5[j4] = new <init>();
                kn1.a(aadu5[j4]);
                fc = aadu5;
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
                    fh = new <init>();
                }
                kn1.a(fh);
                break;

            case 125: // '}'
                fi = kn1.readFloat();
                break;

            case 130: 
                int k4 = kw.b(kn1, 130);
                String as1[];
                int j2;
                if (fk == null)
                {
                    j2 = 0;
                } else
                {
                    j2 = fk.length;
                }
                as1 = new String[k4 + j2];
                k4 = j2;
                if (j2 != 0)
                {
                    System.arraycopy(fk, 0, as1, 0, j2);
                    k4 = j2;
                }
                for (; k4 < as1.length - 1; k4++)
                {
                    as1[k4] = kn1.readString();
                    kn1.mh();
                }

                as1[k4] = kn1.readString();
                fk = as1;
                break;

            case 136: 
                fl = kn1.mk();
                break;

            case 144: 
                fj = kn1.ml();
                break;

            case 154: 
                int l4 = kw.b(kn1, 154);
                String as2[];
                int k2;
                if (eV == null)
                {
                    k2 = 0;
                } else
                {
                    k2 = eV.length;
                }
                as2 = new String[l4 + k2];
                l4 = k2;
                if (k2 != 0)
                {
                    System.arraycopy(eV, 0, as2, 0, k2);
                    l4 = k2;
                }
                for (; l4 < as2.length - 1; l4++)
                {
                    as2[l4] = kn1.readString();
                    kn1.mh();
                }

                as2[l4] = kn1.readString();
                eV = as2;
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        int l1 = kr.hashCode(eV);
        int i2 = kr.hashCode(eW);
        int j2 = kr.hashCode(eX);
        int k2 = kr.hashCode(eY);
        int l2 = kr.hashCode(eZ);
        int i3 = kr.hashCode(fa);
        int j3 = kr.hashCode(fb);
        int k3 = kr.hashCode(fc);
        int i;
        int j;
        int l;
        int i1;
        int j1;
        char c1;
        int k1;
        int l3;
        int i4;
        int j4;
        if (fd == null)
        {
            i = 0;
        } else
        {
            i = fd.hashCode();
        }
        if (fe == null)
        {
            j = 0;
        } else
        {
            j = fe.hashCode();
        }
        if (ff == null)
        {
            l = 0;
        } else
        {
            l = ff.hashCode();
        }
        if (fg == null)
        {
            i1 = 0;
        } else
        {
            i1 = fg.hashCode();
        }
        if (fh == null)
        {
            j1 = 0;
        } else
        {
            j1 = fh.hashCode();
        }
        l3 = Float.floatToIntBits(fi);
        if (fj)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        i4 = kr.hashCode(fk);
        j4 = fl;
        if (adU == null || adU.isEmpty())
        {
            k1 = 0;
        } else
        {
            k1 = adU.hashCode();
        }
        return (((((((((((((((((l1 + 527) * 31 + i2) * 31 + j2) * 31 + k2) * 31 + l2) * 31 + i3) * 31 + j3) * 31 + k3) * 31 + i) * 31 + j) * 31 + l) * 31 + i1) * 31 + j1) * 31 + l3) * 31 + c1) * 31 + i4) * 31 + j4) * 31 + k1;
    }

    public adU k()
    {
        eV = kw.aef;
        eW = kw.aef;
        eX = r();
        eY = i();
        eZ = d();
        fa = d();
        fb = d();
        fc = l();
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

    public ()
    {
        k();
    }
}
