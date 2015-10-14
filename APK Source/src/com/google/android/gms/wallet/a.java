// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.wallet:
//            Address

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(Address address, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, address.getVersionCode());
        b.a(parcel, 2, address.name, false);
        b.a(parcel, 3, address.NB, false);
        b.a(parcel, 4, address.NC, false);
        b.a(parcel, 5, address.ND, false);
        b.a(parcel, 6, address.qd, false);
        b.a(parcel, 7, address.aba, false);
        b.a(parcel, 8, address.abb, false);
        b.a(parcel, 9, address.NI, false);
        b.a(parcel, 10, address.NK, false);
        b.a(parcel, 11, address.NL);
        b.a(parcel, 12, address.NM, false);
        b.F(parcel, i);
    }

    public Address aX(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        int i;
        int j;
        boolean flag;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        s = null;
        s8 = null;
        s1 = null;
        s6 = null;
        s3 = null;
        s4 = null;
        s5 = null;
        s2 = null;
        s7 = null;
        flag = false;
        s9 = null;
_L15:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_703;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 12: default 124
    //                   1 197
    //                   2 240
    //                   3 280
    //                   4 323
    //                   5 363
    //                   6 406
    //                   7 445
    //                   8 488
    //                   9 531
    //                   10 574
    //                   11 617
    //                   12 660;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_660;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        String s10 = s9;
        String s24 = s7;
        String s38 = s5;
        s9 = s;
        s7 = s1;
        s5 = s3;
        s3 = s38;
        s1 = s24;
        s = s10;
_L16:
        String s11 = s;
        String s25 = s1;
        String s39 = s3;
        s3 = s5;
        s1 = s7;
        s = s9;
        s5 = s39;
        s7 = s25;
        s9 = s11;
        if (true) goto _L15; else goto _L14
_L14:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        String s26 = s3;
        String s40 = s1;
        String s12 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s26;
        s7 = s40;
        s9 = s12;
          goto _L16
_L3:
        String s41 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s = s9;
        String s13 = s3;
        String s27 = s1;
        s9 = s41;
        s1 = s7;
        s3 = s5;
        s5 = s13;
        s7 = s27;
          goto _L16
_L4:
        s8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s28 = s3;
        String s42 = s1;
        String s14 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s28;
        s7 = s42;
        s9 = s14;
          goto _L16
_L5:
        String s29 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s1 = s7;
        s7 = s3;
        String s15 = s;
        s = s9;
        s3 = s5;
        s5 = s7;
        s7 = s29;
        s9 = s15;
          goto _L16
_L6:
        s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s30 = s3;
        String s43 = s1;
        String s16 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s30;
        s7 = s43;
        s9 = s16;
          goto _L16
_L7:
        String s17 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s3 = s5;
        s5 = s17;
        String s31 = s1;
        s17 = s;
        s = s9;
        s1 = s7;
        s7 = s31;
        s9 = s17;
          goto _L16
_L8:
        s4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s32 = s3;
        String s44 = s1;
        String s18 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s32;
        s7 = s44;
        s9 = s18;
          goto _L16
_L9:
        s5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s33 = s3;
        String s45 = s1;
        String s19 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s33;
        s7 = s45;
        s9 = s19;
          goto _L16
_L10:
        s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s34 = s3;
        String s46 = s1;
        String s20 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s34;
        s7 = s46;
        s9 = s20;
          goto _L16
_L11:
        s7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s35 = s3;
        String s47 = s1;
        String s21 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s35;
        s7 = s47;
        s9 = s21;
          goto _L16
_L12:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        String s36 = s3;
        String s48 = s1;
        String s22 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s36;
        s7 = s48;
        s9 = s22;
          goto _L16
        s9 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s37 = s3;
        String s49 = s1;
        String s23 = s;
        s = s9;
        s1 = s7;
        s3 = s5;
        s5 = s37;
        s7 = s49;
        s9 = s23;
          goto _L16
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new Address(i, s, s8, s1, s6, s3, s4, s5, s2, s7, flag, s9);
        }
    }

    public Address[] cj(int i)
    {
        return new Address[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aX(parcel);
    }

    public Object[] newArray(int i)
    {
        return cj(i);
    }
}
