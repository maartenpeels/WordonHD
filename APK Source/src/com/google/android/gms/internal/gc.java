// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class gc
    implements android.os.Parcelable.Creator
{

    public gc()
    {
    }

    static void a(gd.b b1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, b1.versionCode);
        b.a(parcel, 2, b1.eM, false);
        b.a(parcel, 3, b1.Em, i, false);
        b.F(parcel, j);
    }

    public gd.b[] W(int i)
    {
        return new gd.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return u(parcel);
    }

    public Object[] newArray(int i)
    {
        return W(i);
    }

    public gd.b u(Parcel parcel)
    {
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        ga.a a1 = null;
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
                    a1 = (ga.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ga.a.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new gd.b(i, s, a1);
            }
        } while (true);
    }
}
