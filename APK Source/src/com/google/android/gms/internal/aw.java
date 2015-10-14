// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            av

public class aw
    implements android.os.Parcelable.Creator
{

    public aw()
    {
    }

    static void a(av av1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, av1.versionCode);
        b.c(parcel, 2, av1.mq);
        b.c(parcel, 3, av1.backgroundColor);
        b.c(parcel, 4, av1.mr);
        b.c(parcel, 5, av1.ms);
        b.c(parcel, 6, av1.mt);
        b.c(parcel, 7, av1.mu);
        b.c(parcel, 8, av1.mv);
        b.c(parcel, 9, av1.mw);
        b.a(parcel, 10, av1.mx, false);
        b.c(parcel, 11, av1.my);
        b.a(parcel, 12, av1.mz, false);
        b.c(parcel, 13, av1.mA);
        b.c(parcel, 14, av1.mB);
        b.a(parcel, 15, av1.mC, false);
        b.F(parcel, i);
    }

    public av c(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i12;
        i12 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k2 = 0;
        i = 0;
        j2 = 0;
        k = 0;
        l1 = 0;
        l = 0;
        j1 = 0;
        l2 = 0;
        i1 = 0;
        s1 = null;
        k1 = 0;
        s = null;
        i2 = 0;
        j = 0;
        s2 = null;
_L18:
        int i3;
        if (parcel.dataPosition() >= i12)
        {
            break MISSING_BLOCK_LABEL_1518;
        }
        i3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i3);
        JVM INSTR tableswitch 1 15: default 144
    //                   1 297
    //                   2 384
    //                   3 463
    //                   4 546
    //                   5 629
    //                   6 712
    //                   7 795
    //                   8 878
    //                   9 965
    //                   10 1040
    //                   11 1126
    //                   12 1197
    //                   13 1277
    //                   14 1356
    //                   15 1439;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L16:
        break MISSING_BLOCK_LABEL_1439;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i3);
        String s3 = s2;
        int j11 = j2;
        i3 = i2;
        int k11 = l1;
        int j3 = k1;
        int l11 = j1;
        int k7 = i1;
        int i11 = j;
        j2 = i;
        i2 = j11;
        l1 = k;
        k1 = k11;
        j1 = l;
        i1 = l11;
        l = k7;
        s2 = s1;
        k = j3;
        s1 = s;
        j = i3;
        i = i11;
        s = s3;
_L19:
        String s4 = s;
        int k3 = k1;
        k1 = k;
        int l7 = i1;
        i1 = l;
        l = j1;
        s = s1;
        k = l1;
        i3 = i;
        i = j2;
        j2 = i2;
        l1 = k3;
        j1 = l7;
        s1 = s2;
        i2 = j;
        j = i3;
        s2 = s4;
        if (true) goto _L18; else goto _L17
_L17:
        int i8 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s5 = s2;
        i3 = i2;
        int l3 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        k2 = i;
        s = s5;
        i = j;
        j = i3;
        k = l3;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = k2;
        k2 = i8;
          goto _L19
_L3:
        i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s6 = s2;
        int i4 = i2;
        int j8 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i = j;
        s = s6;
        j = i4;
        k = j8;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L4:
        j2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s7 = s2;
        int j4 = i2;
        int k8 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s7;
        i = j;
        j = j4;
        k = k8;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L5:
        i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s8 = s2;
        k = i2;
        int k4 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = i3;
        i3 = i;
        s = s8;
        i = j;
        j = k;
        k = k4;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L6:
        l1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s9 = s2;
        int l4 = i2;
        int l8 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s9;
        i = j;
        j = l4;
        k = l8;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L7:
        i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s10 = s2;
        l = i2;
        int i5 = k1;
        s2 = s1;
        k1 = i3;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s10;
        i = j;
        j = l;
        k = i5;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L8:
        j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s11 = s2;
        int j5 = i2;
        int i9 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s11;
        i = j;
        j = j5;
        k = i9;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L9:
        int j9 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s12 = s2;
        l2 = i2;
        int k5 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s12;
        i = j;
        j = l2;
        k = k5;
        l = i1;
        l2 = j9;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L10:
        int k9 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s13 = s2;
        int l5 = i2;
        i1 = j1;
        s2 = s1;
        j1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s13;
        i = j;
        j = l5;
        k = k1;
        l = k9;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L11:
        String s14 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i3);
        s1 = s2;
        int i6 = i2;
        int l9 = k1;
        s2 = s14;
        k1 = l;
        s14 = s;
        i2 = k;
        i3 = i;
        s = s1;
        i = j;
        j = i6;
        s1 = s14;
        k = l9;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L12:
        int i10 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s15 = s2;
        k1 = l1;
        s2 = s1;
        int j6 = l;
        s1 = s;
        l1 = k;
        i3 = i;
        s = s15;
        i = j;
        j = i2;
        k = i10;
        l = i1;
        i1 = j1;
        j1 = j6;
        i2 = j2;
        j2 = i3;
          goto _L19
_L13:
        String s16 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i3);
        s = s2;
        int k6 = i2;
        int j10 = k1;
        s2 = s1;
        k1 = l;
        s1 = s16;
        i2 = k;
        i3 = i;
        i = j;
        j = k6;
        k = j10;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
_L14:
        int l6 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s17 = s2;
        i2 = j2;
        int k10 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        j2 = k;
        i3 = i;
        s = s17;
        i = j;
        j = l6;
        k = k10;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = j2;
        j2 = i3;
          goto _L19
_L15:
        i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i3);
        String s18 = s2;
        j = i2;
        int i7 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        k = i3;
        i3 = i;
        s = s18;
        i = k;
        k = i7;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
        String s19 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i3);
        int j7 = i2;
        int l10 = k1;
        s2 = s1;
        k1 = l;
        s1 = s;
        i2 = k;
        i3 = i;
        s = s19;
        i = j;
        j = j7;
        k = l10;
        l = i1;
        i1 = j1;
        j1 = k1;
        k1 = l1;
        l1 = i2;
        i2 = j2;
        j2 = i3;
          goto _L19
        if (parcel.dataPosition() != i12)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i12).toString(), parcel);
        } else
        {
            return new av(k2, i, j2, k, l1, l, j1, l2, i1, s1, k1, s, i2, j, s2);
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return c(parcel);
    }

    public av[] e(int i)
    {
        return new av[i];
    }

    public Object[] newArray(int i)
    {
        return e(i);
    }
}
