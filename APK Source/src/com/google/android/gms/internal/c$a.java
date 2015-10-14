// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, c, kn, ko, 
//            kt

public static final class b extends kp
{

    public int eE;
    public int eF;
    public int level;

    public b a(kn kn1)
        throws IOException
    {
_L7:
        int i = kn1.mh();
        i;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 59
    //                   8: 61
    //                   16: 103
    //                   24: 114;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (a(kn1, i)) goto _L7; else goto _L6
_L6:
        return this;
_L2:
        return this;
_L3:
        int j = kn1.mk();
        switch (j)
        {
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            level = j;
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

    public  b()
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
        int j = super.c();
        int i = j;
        if (level != 1)
        {
            i = j + ko.j(1, level);
        }
        j = i;
        if (eE != 0)
        {
            j = i + ko.j(2, eE);
        }
        i = j;
        if (eF != 0)
        {
            i = j + ko.j(3, eF);
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
        if (level != ((level) (obj)).level)
        {
            return false;
        }
        if (eE != ((eE) (obj)).eE)
        {
            return false;
        }
        if (eF != ((eF) (obj)).eF)
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
        int j = level;
        int k = eE;
        int l = eF;
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
        b();
    }
}
