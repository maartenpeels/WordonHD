// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, ks, kt, 
//            ko, kr, kn, kw

public static final class q extends kp
{

    public adY fJ[];
    public adY fK;
    public String fL;

    public static q b(byte abyte0[])
        throws ks
    {
        return (q)kt.a(new <init>(), abyte0);
    }

    public void a(ko ko1)
        throws IOException
    {
        if (fJ != null && fJ.length > 0)
        {
            for (int i = 0; i < fJ.length; i++)
            {
                <init> <init>1 = fJ[i];
                if (<init>1 != null)
                {
                    ko1.a(1, <init>1);
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
        int l = super.c();
        int i = l;
        if (fJ != null)
        {
            i = l;
            if (fJ.length > 0)
            {
                i = l;
                for (l = 0; l < fJ.length;)
                {
                    k k1 = fJ[l];
                    int i1 = i;
                    if (k1 != null)
                    {
                        i1 = i + ko.b(1, k1);
                    }
                    l++;
                    i = i1;
                }

            }
        }
        l = i;
        if (fK != null)
        {
            l = i + ko.b(2, fK);
        }
        i = l;
        if (!fL.equals(""))
        {
            i = l + ko.g(3, fL);
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
        if (!(obj instanceof adY))
        {
            return false;
        }
        obj = (adY)obj;
        if (!kr.equals(fJ, ((fJ) (obj)).fJ))
        {
            return false;
        }
        if (fK == null)
        {
            if (((fK) (obj)).fK != null)
            {
                return false;
            }
        } else
        if (!fK.equals(((equals) (obj)).fK))
        {
            return false;
        }
        if (fL == null)
        {
            if (((fL) (obj)).fL != null)
            {
                return false;
            }
        } else
        if (!fL.equals(((fL) (obj)).fL))
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

    public int hashCode()
    {
        int j1 = kr.hashCode(fJ);
        int i;
        int l;
        int i1;
        if (fK == null)
        {
            i = 0;
        } else
        {
            i = fK.hashCode();
        }
        if (fL == null)
        {
            l = 0;
        } else
        {
            l = fL.hashCode();
        }
        if (adU == null || adU.isEmpty())
        {
            i1 = 0;
        } else
        {
            i1 = adU.hashCode();
        }
        return (((j1 + 527) * 31 + i) * 31 + l) * 31 + i1;
    }

    public adU k(kn kn1)
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
                int i1 = kw.b(kn1, 10);
                adU aadu[];
                int l;
                if (fJ == null)
                {
                    l = 0;
                } else
                {
                    l = fJ.length;
                }
                aadu = new fJ[i1 + l];
                i1 = l;
                if (l != 0)
                {
                    System.arraycopy(fJ, 0, aadu, 0, l);
                    i1 = l;
                }
                for (; i1 < aadu.length - 1; i1++)
                {
                    aadu[i1] = new <init>();
                    kn1.a(aadu[i1]);
                    kn1.mh();
                }

                aadu[i1] = new <init>();
                kn1.a(aadu[i1]);
                fJ = aadu;
                break;

            case 18: // '\022'
                if (fK == null)
                {
                    fK = new <init>();
                }
                kn1.a(fK);
                break;

            case 26: // '\032'
                fL = kn1.readString();
                break;
            }
        } while (true);
    }

    public eadString q()
    {
        fJ = o();
        fK = null;
        fL = "";
        adU = null;
        adY = -1;
        return this;
    }

    public ()
    {
        q();
    }
}
