// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            FieldWithSortOrder

public class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(FieldWithSortOrder fieldwithsortorder, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1000, fieldwithsortorder.xH);
        b.a(parcel, 1, fieldwithsortorder.FM, false);
        b.a(parcel, 2, fieldwithsortorder.GJ);
        b.F(parcel, i);
    }

    public FieldWithSortOrder[] aK(int i)
    {
        return new FieldWithSortOrder[i];
    }

    public FieldWithSortOrder ag(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        boolean flag = false;
        String s = null;
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

                case 1000: 
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 1: // '\001'
                    s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
                    break;

                case 2: // '\002'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new FieldWithSortOrder(i, s, flag);
            }
        } while (true);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ag(parcel);
    }

    public Object[] newArray(int i)
    {
        return aK(i);
    }
}
