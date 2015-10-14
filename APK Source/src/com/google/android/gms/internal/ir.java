// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class ir
    implements android.os.Parcelable.Creator
{

    public ir()
    {
    }

    static void a(ih.h h, Parcel parcel, int i)
    {
        i = b.p(parcel);
        Set set = h.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, h.getVersionCode());
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.c(parcel, 3, h.jN());
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, h.getValue(), true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, h.getLabel(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.c(parcel, 6, h.getType());
        }
        b.F(parcel, i);
    }

    public ih.h aW(Parcel parcel)
    {
        String s;
        String s1;
        HashSet hashset;
        int i;
        int j;
        int k;
        int l;
        s = null;
        j = 0;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        i = 0;
        s1 = null;
        k = 0;
_L8:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_265;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 6: default 88
    //                   1 113
    //                   2 88
    //                   3 144
    //                   4 175
    //                   5 205
    //                   6 233;
           goto _L1 _L2 _L1 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_233;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        String s2 = s1;
        s1 = s;
        s = s2;
_L9:
        String s3 = s;
        s = s1;
        s1 = s3;
        if (true) goto _L8; else goto _L7
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        hashset.add(Integer.valueOf(1));
        String s4 = s;
        s = s1;
        s1 = s4;
          goto _L9
_L3:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        hashset.add(Integer.valueOf(3));
        String s5 = s;
        s = s1;
        s1 = s5;
          goto _L9
_L4:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        hashset.add(Integer.valueOf(4));
        String s6 = s;
        s = s1;
        s1 = s6;
          goto _L9
_L5:
        String s7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        hashset.add(Integer.valueOf(5));
        s = s1;
        s1 = s7;
          goto _L9
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        hashset.add(Integer.valueOf(6));
        String s8 = s;
        s = s1;
        s1 = s8;
          goto _L9
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new ih.h(hashset, j, s, k, s1, i);
        }
    }

    public ih.h[] bZ(int i)
    {
        return new ih.h[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aW(parcel);
    }

    public Object[] newArray(int i)
    {
        return bZ(i);
    }
}
