// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, kr, ko, 
//            kn, kt

public static final class g extends kp
{

    private static volatile adU eL[];
    public String eM;
    public long eN;
    public long eO;
    public boolean eP;
    public long eQ;

    public static g[] f()
    {
        if (eL == null)
        {
            synchronized (kr.adX)
            {
                if (eL == null)
                {
                    eL = new eL[0];
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
        int j = super.c();
        int i = j;
        if (!eM.equals(""))
        {
            i = j + ko.g(1, eM);
        }
        j = i;
        if (eN != 0L)
        {
            j = i + ko.d(2, eN);
        }
        i = j;
        if (eO != 0x7fffffffL)
        {
            i = j + ko.d(3, eO);
        }
        j = i;
        if (eP)
        {
            j = i + ko.b(4, eP);
        }
        i = j;
        if (eQ != 0L)
        {
            i = j + ko.d(5, eQ);
        }
        adY = i;
        return i;
    }

    public adY d(kn kn1)
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
        if (!(obj instanceof j))
        {
            return false;
        }
        obj = (j)obj;
        if (eM == null)
        {
            if (((eM) (obj)).eM != null)
            {
                return false;
            }
        } else
        if (!eM.equals(((eM) (obj)).eM))
        {
            return false;
        }
        if (eN != ((eN) (obj)).eN)
        {
            return false;
        }
        if (eO != ((eO) (obj)).eO)
        {
            return false;
        }
        if (eP != ((eP) (obj)).eP)
        {
            return false;
        }
        if (eQ != ((eQ) (obj)).eQ)
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

    public adU g()
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
        int i;
        char c1;
        int j;
        int k;
        int l;
        int i1;
        if (eM == null)
        {
            i = 0;
        } else
        {
            i = eM.hashCode();
        }
        k = (int)(eN ^ eN >>> 32);
        l = (int)(eO ^ eO >>> 32);
        if (eP)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        i1 = (int)(eQ ^ eQ >>> 32);
        if (adU == null || adU.isEmpty())
        {
            j = 0;
        } else
        {
            j = adU.hashCode();
        }
        return (((((i + 527) * 31 + k) * 31 + l) * 31 + c1) * 31 + i1) * 31 + j;
    }

    public ()
    {
        g();
    }
}
