// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, kr, ko, 
//            kn, kw, kt

public static final class e extends kp
{

    private static volatile adU eG[];
    public int eH[];
    public int eI;
    public boolean eJ;
    public boolean eK;
    public int name;

    public static e[] d()
    {
        if (eG == null)
        {
            synchronized (kr.adX)
            {
                if (eG == null)
                {
                    eG = new eG[0];
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
            for (int i = 0; i < eH.length; i++)
            {
                ko1.i(3, eH[i]);
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
        int j = super.c();
        int i = j;
        if (eK)
        {
            i = j + ko.b(1, eK);
        }
        int k = i + ko.j(2, eI);
        i = k;
        if (eH != null)
        {
            i = k;
            if (eH.length > 0)
            {
                i = 0;
                j = 0;
                for (; i < eH.length; i++)
                {
                    j += ko.cX(eH[i]);
                }

                i = k + j + eH.length * 1;
            }
        }
        j = i;
        if (name != 0)
        {
            j = i + ko.j(4, name);
        }
        i = j;
        if (eJ)
        {
            i = j + ko.b(6, eJ);
        }
        adY = i;
        return i;
    }

    public adY c(kn kn1)
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

            case 8: // '\b'
                eK = kn1.ml();
                break;

            case 16: // '\020'
                eI = kn1.mk();
                break;

            case 24: // '\030'
                int l = kw.b(kn1, 24);
                int ai[];
                int j;
                if (eH == null)
                {
                    j = 0;
                } else
                {
                    j = eH.length;
                }
                ai = new int[l + j];
                l = j;
                if (j != 0)
                {
                    System.arraycopy(eH, 0, ai, 0, j);
                    l = j;
                }
                for (; l < ai.length - 1; l++)
                {
                    ai[l] = kn1.mk();
                    kn1.mh();
                }

                ai[l] = kn1.mk();
                eH = ai;
                break;

            case 26: // '\032'
                int j1 = kn1.cR(kn1.mn());
                int k = kn1.getPosition();
                int i1;
                for (i1 = 0; kn1.ms() > 0; i1++)
                {
                    kn1.mk();
                }

                kn1.cT(k);
                int ai1[];
                if (eH == null)
                {
                    k = 0;
                } else
                {
                    k = eH.length;
                }
                ai1 = new int[i1 + k];
                i1 = k;
                if (k != 0)
                {
                    System.arraycopy(eH, 0, ai1, 0, k);
                    i1 = k;
                }
                for (; i1 < ai1.length; i1++)
                {
                    ai1[i1] = kn1.mk();
                }

                eH = ai1;
                kn1.cS(j1);
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

    public l e()
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
        if (!(obj instanceof adY))
        {
            return false;
        }
        obj = (adY)obj;
        if (!kr.equals(eH, ((eH) (obj)).eH))
        {
            return false;
        }
        if (eI != ((eI) (obj)).eI)
        {
            return false;
        }
        if (name != ((name) (obj)).name)
        {
            return false;
        }
        if (eJ != ((eJ) (obj)).eJ)
        {
            return false;
        }
        if (eK != ((eK) (obj)).eK)
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
        int j = kr.hashCode(eH);
        int k = eI;
        int l = name;
        char c1;
        char c2;
        int i;
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
            i = 0;
        } else
        {
            i = adU.hashCode();
        }
        return (((((j + 527) * 31 + k) * 31 + l) * 31 + c1) * 31 + c2) * 31 + i;
    }

    public ()
    {
        e();
    }
}
