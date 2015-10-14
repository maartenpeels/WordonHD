// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class io
    implements android.os.Parcelable.Creator
{

    public io()
    {
    }

    static void a(ih.d d, Parcel parcel, int i)
    {
        i = b.p(parcel);
        Set set = d.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, d.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, d.getFamilyName(), true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, d.getFormatted(), true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, d.getGivenName(), true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, d.getHonorificPrefix(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, d.getHonorificSuffix(), true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, d.getMiddleName(), true);
        }
        b.F(parcel, i);
    }

    public ih.d aT(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        HashSet hashset;
        int i;
        int j;
        s = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        i = 0;
        s4 = null;
        s1 = null;
        s2 = null;
        s5 = null;
        s3 = null;
_L10:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 7: default 96
    //                   1 125
    //                   2 158
    //                   3 188
    //                   4 221
    //                   5 258
    //                   6 295
    //                   7 330;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_330;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        String s6 = s4;
        s4 = s;
        s = s6;
_L11:
        String s7 = s;
        s = s4;
        s4 = s7;
        if (true) goto _L10; else goto _L9
_L9:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        hashset.add(Integer.valueOf(1));
        String s8 = s4;
        s4 = s;
        s = s8;
          goto _L11
_L3:
        String s9 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(2));
        s = s4;
        s4 = s9;
          goto _L11
_L4:
        s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(3));
        String s10 = s4;
        s4 = s;
        s = s10;
          goto _L11
_L5:
        String s11 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(4));
        s5 = s4;
        s4 = s;
        s = s5;
        s5 = s11;
          goto _L11
_L6:
        String s12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(5));
        s2 = s4;
        s4 = s;
        s = s2;
        s2 = s12;
          goto _L11
_L7:
        String s13 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(6));
        s1 = s4;
        s4 = s;
        s = s1;
        s1 = s13;
          goto _L11
        String s14 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(7));
        s4 = s;
        s = s14;
          goto _L11
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new ih.d(hashset, i, s, s3, s5, s2, s1, s4);
        }
    }

    public ih.d[] bW(int i)
    {
        return new ih.d[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aT(parcel);
    }

    public Object[] newArray(int i)
    {
        return bW(i);
    }
}
