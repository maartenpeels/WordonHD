// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import java.io.IOException;
import java.util.List;

public final class y extends kp
{

    public String FC;
    public long FD;
    public long FE;
    public int versionCode;

    public y()
    {
        fH();
    }

    public static y g(byte abyte0[])
        throws ks
    {
        return (y)kt.a(new y(), abyte0);
    }

    public void a(ko ko1)
        throws IOException
    {
        ko1.i(1, versionCode);
        ko1.b(2, FC);
        ko1.c(3, FD);
        ko1.c(4, FE);
        super.a(ko1);
    }

    public kt b(kn kn1)
        throws IOException
    {
        return m(kn1);
    }

    public int c()
    {
        int i = super.c() + ko.j(1, versionCode) + ko.g(2, FC) + ko.e(3, FD) + ko.e(4, FE);
        adY = i;
        return i;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof y))
        {
            return false;
        }
        obj = (y)obj;
        if (versionCode != ((y) (obj)).versionCode)
        {
            return false;
        }
        if (FC == null)
        {
            if (((y) (obj)).FC != null)
            {
                return false;
            }
        } else
        if (!FC.equals(((y) (obj)).FC))
        {
            return false;
        }
        if (FD != ((y) (obj)).FD)
        {
            return false;
        }
        if (FE != ((y) (obj)).FE)
        {
            return false;
        }
        if (adU == null || adU.isEmpty())
        {
            return ((y) (obj)).adU == null || ((y) (obj)).adU.isEmpty();
        } else
        {
            return adU.equals(((y) (obj)).adU);
        }
    }

    public y fH()
    {
        versionCode = 1;
        FC = "";
        FD = -1L;
        FE = -1L;
        adU = null;
        adY = -1;
        return this;
    }

    public int hashCode()
    {
        int k = versionCode;
        int i;
        int j;
        int l;
        int i1;
        if (FC == null)
        {
            i = 0;
        } else
        {
            i = FC.hashCode();
        }
        l = (int)(FD ^ FD >>> 32);
        i1 = (int)(FE ^ FE >>> 32);
        if (adU == null || adU.isEmpty())
        {
            j = 0;
        } else
        {
            j = adU.hashCode();
        }
        return ((((k + 527) * 31 + i) * 31 + l) * 31 + i1) * 31 + j;
    }

    public y m(kn kn1)
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
                versionCode = kn1.mk();
                break;

            case 18: // '\022'
                FC = kn1.readString();
                break;

            case 24: // '\030'
                FD = kn1.mm();
                break;

            case 32: // ' '
                FE = kn1.mm();
                break;
            }
        } while (true);
    }
}
