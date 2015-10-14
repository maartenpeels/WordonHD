// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, ks, kt, ko, 
//            kn

public interface it
{
    public static final class a extends kp
    {

        public long aaY;
        public c.j aaZ;
        public c.f fK;

        public static a l(byte abyte0[])
            throws ks
        {
            return (a)kt.a(new a(), abyte0);
        }

        public void a(ko ko1)
            throws IOException
        {
            ko1.b(1, aaY);
            if (fK != null)
            {
                ko1.a(2, fK);
            }
            if (aaZ != null)
            {
                ko1.a(3, aaZ);
            }
            super.a(ko1);
        }

        public kt b(kn kn1)
            throws IOException
        {
            return n(kn1);
        }

        public int c()
        {
            int j = super.c() + ko.d(1, aaY);
            int i = j;
            if (fK != null)
            {
                i = j + ko.b(2, fK);
            }
            j = i;
            if (aaZ != null)
            {
                j = i + ko.b(3, aaZ);
            }
            adY = j;
            return j;
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
            if (aaY != ((a) (obj)).aaY)
            {
                return false;
            }
            if (fK == null)
            {
                if (((a) (obj)).fK != null)
                {
                    return false;
                }
            } else
            if (!fK.equals(((a) (obj)).fK))
            {
                return false;
            }
            if (aaZ == null)
            {
                if (((a) (obj)).aaZ != null)
                {
                    return false;
                }
            } else
            if (!aaZ.equals(((a) (obj)).aaZ))
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
            int i1 = (int)(aaY ^ aaY >>> 32);
            int i;
            int j;
            int k;
            if (fK == null)
            {
                i = 0;
            } else
            {
                i = fK.hashCode();
            }
            if (aaZ == null)
            {
                j = 0;
            } else
            {
                j = aaZ.hashCode();
            }
            if (adU == null || adU.isEmpty())
            {
                k = 0;
            } else
            {
                k = adU.hashCode();
            }
            return (((i1 + 527) * 31 + i) * 31 + j) * 31 + k;
        }

        public a lV()
        {
            aaY = 0L;
            fK = null;
            aaZ = null;
            adU = null;
            adY = -1;
            return this;
        }

        public a n(kn kn1)
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
                    aaY = kn1.mj();
                    break;

                case 18: // '\022'
                    if (fK == null)
                    {
                        fK = new c.f();
                    }
                    kn1.a(fK);
                    break;

                case 26: // '\032'
                    if (aaZ == null)
                    {
                        aaZ = new c.j();
                    }
                    kn1.a(aaZ);
                    break;
                }
            } while (true);
        }

        public a()
        {
            lV();
        }
    }

}
