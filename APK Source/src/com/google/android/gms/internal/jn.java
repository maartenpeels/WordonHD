// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jm, gi, jk

public class jn
    implements android.os.Parcelable.Creator
{

    public jn()
    {
    }

    static void a(jm jm1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, jm1.getVersionCode());
        b.a(parcel, 2, jm1.add, false);
        b.a(parcel, 3, jm1.ade, false);
        b.b(parcel, 4, jm1.adf, false);
        b.F(parcel, i);
    }

    public jm br(Parcel parcel)
    {
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        java.util.ArrayList arraylist = gi.fs();
        int i = 0;
        String s1 = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.R(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, jk.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new jm(i, s, s1, arraylist);
            }
        } while (true);
    }

    public jm[] cF(int i)
    {
        return new jm[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return br(parcel);
    }

    public Object[] newArray(int i)
    {
        return cF(i);
    }
}
