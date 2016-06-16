// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class ip
    implements android.os.Parcelable.Creator
{

    public ip()
    {
    }

    static void a(ih.f f, Parcel parcel, int i)
    {
        i = b.p(parcel);
        Set set = f.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, f.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, f.getDepartment(), true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, f.getDescription(), true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, f.getEndDate(), true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, f.getLocation(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, f.getName(), true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, f.isPrimary());
        }
        if (set.contains(Integer.valueOf(8)))
        {
            b.a(parcel, 8, f.getStartDate(), true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            b.a(parcel, 9, f.getTitle(), true);
        }
        if (set.contains(Integer.valueOf(10)))
        {
            b.c(parcel, 10, f.getType());
        }
        b.F(parcel, i);
    }

    public ih.f aU(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        HashSet hashset;
        int i;
        int j;
        int k;
        boolean flag;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        j = 0;
        s = null;
        s6 = null;
        s2 = null;
        s4 = null;
        s3 = null;
        flag = false;
        s5 = null;
        s1 = null;
        i = 0;
_L13:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_754;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 10: default 116
    //                   1 201
    //                   2 256
    //                   3 308
    //                   4 363
    //                   5 414
    //                   6 469
    //                   7 521
    //                   8 577
    //                   9 637
    //                   10 698;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_698;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        String s19 = s6;
        String s7 = s5;
        String s30 = s4;
        String s31 = s3;
        String s32 = s1;
        s6 = s;
        s5 = s19;
        s4 = s2;
        s3 = s30;
        s2 = s31;
        s1 = s7;
        s = s32;
_L14:
        String s8 = s2;
        s2 = s4;
        String s20 = s;
        s = s6;
        s6 = s5;
        s4 = s3;
        s3 = s8;
        s5 = s1;
        s1 = s20;
        if (true) goto _L13; else goto _L12
_L12:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(1));
        String s9 = s2;
        String s21 = s;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s9;
        s5 = s6;
        s6 = s21;
          goto _L14
_L3:
        String s22 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(2));
        String s10 = s2;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s10;
        s5 = s6;
        s6 = s22;
          goto _L14
_L4:
        s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(3));
        String s11 = s2;
        String s23 = s;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s11;
        s5 = s6;
        s6 = s23;
          goto _L14
_L5:
        String s12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(4));
        s2 = s3;
        String s24 = s;
        s = s1;
        s1 = s5;
        s3 = s4;
        s4 = s12;
        s5 = s6;
        s6 = s24;
          goto _L14
_L6:
        s4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(5));
        String s13 = s2;
        String s25 = s;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s13;
        s5 = s6;
        s6 = s25;
          goto _L14
_L7:
        String s26 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(6));
        s3 = s4;
        s4 = s2;
        String s14 = s;
        s = s1;
        s1 = s5;
        s2 = s26;
        s5 = s6;
        s6 = s14;
          goto _L14
_L8:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        hashset.add(Integer.valueOf(7));
        String s15 = s2;
        String s27 = s;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s15;
        s5 = s6;
        s6 = s27;
          goto _L14
_L9:
        String s16 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(8));
        s5 = s6;
        s6 = s16;
        s16 = s2;
        String s28 = s;
        s = s1;
        s1 = s6;
        s2 = s3;
        s3 = s4;
        s4 = s16;
        s6 = s28;
          goto _L14
_L10:
        String s17 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(9));
        s1 = s5;
        s5 = s2;
        s2 = s17;
        s17 = s;
        s = s2;
        s2 = s3;
        s3 = s4;
        s4 = s5;
        s5 = s6;
        s6 = s17;
          goto _L14
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(10));
        String s18 = s2;
        String s29 = s;
        s = s1;
        s1 = s5;
        s2 = s3;
        s3 = s4;
        s4 = s18;
        s5 = s6;
        s6 = s29;
          goto _L14
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new ih.f(hashset, j, s, s6, s2, s4, s3, flag, s5, s1, i);
        }
    }

    public ih.f[] bX(int i)
    {
        return new ih.f[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aU(parcel);
    }

    public Object[] newArray(int i)
    {
        return bX(i);
    }
}
