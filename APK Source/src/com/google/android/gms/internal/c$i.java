// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, kr, ko, 
//            kn, kt

public static final class p extends kp
{

    private static volatile adY fG[];
    public adY fH;
    public adY fI;
    public String name;

    public static p[] o()
    {
        if (fG == null)
        {
            synchronized (kr.adX)
            {
                if (fG == null)
                {
                    fG = new fG[0];
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
        if (!(obj instanceof adY))
        {
            return false;
        }
        obj = (adY)obj;
        if (name == null)
        {
            if (((name) (obj)).name != null)
            {
                return false;
            }
        } else
        if (!name.equals(((name) (obj)).name))
        {
            return false;
        }
        if (fH == null)
        {
            if (((fH) (obj)).fH != null)
            {
                return false;
            }
        } else
        if (!fH.equals(((equals) (obj)).fH))
        {
            return false;
        }
        if (fI == null)
        {
            if (((fI) (obj)).fI != null)
            {
                return false;
            }
        } else
        if (!fI.equals(((equals) (obj)).fI))
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

    public adU j(kn kn1)
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
                    fH = new <init>();
                }
                kn1.a(fH);
                break;

            case 26: // '\032'
                if (fI == null)
                {
                    fI = new <init>();
                }
                kn1.a(fI);
                break;
            }
        } while (true);
    }

    public fI p()
    {
        name = "";
        fH = null;
        fI = null;
        adU = null;
        adY = -1;
        return this;
    }

    public ()
    {
        p();
    }
}
