// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, ko, kn, 
//            kw, kr, kt

public static final class h extends kp
{

    public adU eR[];
    public adU eS[];
    public adU eT[];

    public void a(ko ko1)
        throws IOException
    {
        if (eR != null && eR.length > 0)
        {
            for (int i = 0; i < eR.length; i++)
            {
                h h1 = eR[i];
                if (h1 != null)
                {
                    ko1.a(1, h1);
                }
            }

        }
        if (eS != null && eS.length > 0)
        {
            for (int j = 0; j < eS.length; j++)
            {
                h h2 = eS[j];
                if (h2 != null)
                {
                    ko1.a(2, h2);
                }
            }

        }
        if (eT != null && eT.length > 0)
        {
            for (int k = 0; k < eT.length; k++)
            {
                h h3 = eT[k];
                if (h3 != null)
                {
                    ko1.a(3, h3);
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
        int j = super.c();
        int i = j;
        if (eR != null)
        {
            i = j;
            if (eR.length > 0)
            {
                i = j;
                for (j = 0; j < eR.length;)
                {
                    e e1 = eR[j];
                    int l = i;
                    if (e1 != null)
                    {
                        l = i + ko.b(1, e1);
                    }
                    j++;
                    i = l;
                }

            }
        }
        j = i;
        if (eS != null)
        {
            j = i;
            if (eS.length > 0)
            {
                for (j = 0; j < eS.length;)
                {
                    e e2 = eS[j];
                    int i1 = i;
                    if (e2 != null)
                    {
                        i1 = i + ko.b(2, e2);
                    }
                    j++;
                    i = i1;
                }

                j = i;
            }
        }
        i = j;
        if (eT != null)
        {
            i = j;
            if (eT.length > 0)
            {
                i = j;
                for (int k = 0; k < eT.length;)
                {
                    e e3 = eT[k];
                    int j1 = i;
                    if (e3 != null)
                    {
                        j1 = i + ko.b(3, e3);
                    }
                    k++;
                    i = j1;
                }

            }
        }
        adY = i;
        return i;
    }

    public adY e(kn kn1)
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
                adY aady[];
                int j;
                if (eR == null)
                {
                    j = 0;
                } else
                {
                    j = eR.length;
                }
                aady = new eR[i1 + j];
                i1 = j;
                if (j != 0)
                {
                    System.arraycopy(eR, 0, aady, 0, j);
                    i1 = j;
                }
                for (; i1 < aady.length - 1; i1++)
                {
                    aady[i1] = new <init>();
                    kn1.a(aady[i1]);
                    kn1.mh();
                }

                aady[i1] = new <init>();
                kn1.a(aady[i1]);
                eR = aady;
                break;

            case 18: // '\022'
                int j1 = kw.b(kn1, 18);
                adY aady1[];
                int k;
                if (eS == null)
                {
                    k = 0;
                } else
                {
                    k = eS.length;
                }
                aady1 = new eS[j1 + k];
                j1 = k;
                if (k != 0)
                {
                    System.arraycopy(eS, 0, aady1, 0, k);
                    j1 = k;
                }
                for (; j1 < aady1.length - 1; j1++)
                {
                    aady1[j1] = new <init>();
                    kn1.a(aady1[j1]);
                    kn1.mh();
                }

                aady1[j1] = new <init>();
                kn1.a(aady1[j1]);
                eS = aady1;
                break;

            case 26: // '\032'
                int k1 = kw.b(kn1, 26);
                adY aady2[];
                int l;
                if (eT == null)
                {
                    l = 0;
                } else
                {
                    l = eT.length;
                }
                aady2 = new eT[k1 + l];
                k1 = l;
                if (l != 0)
                {
                    System.arraycopy(eT, 0, aady2, 0, l);
                    k1 = l;
                }
                for (; k1 < aady2.length - 1; k1++)
                {
                    aady2[k1] = new <init>();
                    kn1.a(aady2[k1]);
                    kn1.mh();
                }

                aady2[k1] = new <init>();
                kn1.a(aady2[k1]);
                eT = aady2;
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
        if (!(obj instanceof eT))
        {
            return false;
        }
        obj = (eT)obj;
        if (!kr.equals(eR, ((eR) (obj)).eR))
        {
            return false;
        }
        if (!kr.equals(eS, ((eS) (obj)).eS))
        {
            return false;
        }
        if (!kr.equals(eT, ((eT) (obj)).eT))
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

    public adU h()
    {
        eR = r();
        eS = r();
        eT = f();
        adU = null;
        adY = -1;
        return this;
    }

    public int hashCode()
    {
        int j = kr.hashCode(eR);
        int k = kr.hashCode(eS);
        int l = kr.hashCode(eT);
        int i;
        if (adU == null || adU.isEmpty())
        {
            i = 0;
        } else
        {
            i = adU.hashCode();
        }
        return (((j + 527) * 31 + k) * 31 + l) * 31 + i;
    }

    public ()
    {
        h();
    }
}
