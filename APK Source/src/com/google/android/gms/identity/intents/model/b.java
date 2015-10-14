// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;

// Referenced classes of package com.google.android.gms.identity.intents.model:
//            UserAddress

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(UserAddress useraddress, Parcel parcel, int i)
    {
        i = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, useraddress.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, useraddress.name, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, useraddress.NB, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, useraddress.NC, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, useraddress.ND, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, useraddress.NE, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, useraddress.NF, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, useraddress.NG, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, useraddress.NH, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, useraddress.qd, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, useraddress.NI, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, useraddress.NJ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, useraddress.NK, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, useraddress.NL);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, useraddress.NM, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, useraddress.NN, false);
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, i);
    }

    public UserAddress aA(Parcel parcel)
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
        String s10;
        String s11;
        String s12;
        String s13;
        int i;
        int j;
        boolean flag;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        s = null;
        s12 = null;
        s2 = null;
        s11 = null;
        s4 = null;
        s9 = null;
        s6 = null;
        s7 = null;
        s8 = null;
        s5 = null;
        s10 = null;
        s3 = null;
        flag = false;
        s1 = null;
        s13 = null;
_L19:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_1469;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 16: default 152
    //                   1 301
    //                   2 374
    //                   3 444
    //                   4 517
    //                   5 586
    //                   6 659
    //                   7 728
    //                   8 801
    //                   9 870
    //                   10 943
    //                   11 1020
    //                   12 1097
    //                   13 1174
    //                   14 1251
    //                   15 1324
    //                   16 1396;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17
_L17:
        break MISSING_BLOCK_LABEL_1396;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        String s14 = s13;
        String s68 = s11;
        String s32 = s10;
        String s82 = s9;
        String s50 = s8;
        String s83 = s7;
        String s84 = s5;
        String s85 = s3;
        s13 = s;
        s11 = s2;
        s10 = s68;
        s9 = s4;
        s8 = s82;
        s7 = s6;
        s6 = s83;
        s5 = s50;
        s4 = s84;
        s3 = s32;
        s2 = s85;
        s = s14;
_L20:
        String s15 = s;
        String s33 = s6;
        s6 = s7;
        String s51 = s4;
        s4 = s9;
        String s69 = s2;
        s2 = s11;
        s = s13;
        s11 = s10;
        s9 = s8;
        s7 = s33;
        s8 = s5;
        s5 = s51;
        s10 = s3;
        s3 = s69;
        s13 = s15;
        if (true) goto _L19; else goto _L18
_L18:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        String s16 = s6;
        String s34 = s4;
        String s52 = s2;
        String s70 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s16;
        s8 = s9;
        s9 = s34;
        s10 = s11;
        s11 = s52;
        s13 = s70;
          goto _L20
_L3:
        String s53 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s = s13;
        s13 = s6;
        String s17 = s4;
        String s35 = s2;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s13;
        s8 = s9;
        s9 = s17;
        s10 = s11;
        s11 = s35;
        s13 = s53;
          goto _L20
_L4:
        s12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s18 = s6;
        String s36 = s4;
        String s54 = s2;
        String s71 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s18;
        s8 = s9;
        s9 = s36;
        s10 = s11;
        s11 = s54;
        s13 = s71;
          goto _L20
_L5:
        String s55 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s19 = s6;
        String s37 = s4;
        s2 = s3;
        String s72 = s;
        s = s13;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s19;
        s8 = s9;
        s9 = s37;
        s10 = s11;
        s11 = s55;
        s13 = s72;
          goto _L20
_L6:
        s11 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s20 = s6;
        String s38 = s4;
        String s56 = s2;
        String s73 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s20;
        s8 = s9;
        s9 = s38;
        s10 = s11;
        s11 = s56;
        s13 = s73;
          goto _L20
_L7:
        String s39 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s21 = s6;
        s4 = s5;
        String s57 = s2;
        String s74 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s5 = s8;
        s6 = s7;
        s7 = s21;
        s8 = s9;
        s9 = s39;
        s10 = s11;
        s11 = s57;
        s13 = s74;
          goto _L20
_L8:
        s9 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s22 = s6;
        String s40 = s4;
        String s58 = s2;
        String s75 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s22;
        s8 = s9;
        s9 = s40;
        s10 = s11;
        s11 = s58;
        s13 = s75;
          goto _L20
_L9:
        String s23 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s6 = s7;
        s7 = s23;
        s23 = s4;
        String s41 = s2;
        String s59 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s8 = s9;
        s9 = s23;
        s10 = s11;
        s11 = s41;
        s13 = s59;
          goto _L20
_L10:
        s7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s24 = s6;
        String s42 = s4;
        String s60 = s2;
        String s76 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s24;
        s8 = s9;
        s9 = s42;
        s10 = s11;
        s11 = s60;
        s13 = s76;
          goto _L20
_L11:
        String s25 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s8 = s9;
        s9 = s25;
        s25 = s6;
        String s43 = s4;
        String s61 = s2;
        String s77 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s9;
        s6 = s7;
        s7 = s25;
        s9 = s43;
        s10 = s11;
        s11 = s61;
        s13 = s77;
          goto _L20
_L12:
        String s26 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s5 = s8;
        s8 = s6;
        s6 = s26;
        s26 = s4;
        String s44 = s2;
        String s62 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s6;
        s6 = s7;
        s7 = s8;
        s8 = s9;
        s9 = s26;
        s10 = s11;
        s11 = s44;
        s13 = s62;
          goto _L20
_L13:
        String s27 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s10 = s11;
        s11 = s27;
        s27 = s6;
        String s45 = s4;
        String s63 = s2;
        String s78 = s;
        s = s13;
        s2 = s3;
        s3 = s11;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s27;
        s8 = s9;
        s9 = s45;
        s11 = s63;
        s13 = s78;
          goto _L20
_L14:
        String s46 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s3 = s10;
        s10 = s6;
        String s28 = s4;
        s4 = s46;
        s46 = s2;
        String s64 = s;
        s = s13;
        s2 = s4;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s10;
        s8 = s9;
        s9 = s28;
        s10 = s11;
        s11 = s46;
        s13 = s64;
          goto _L20
_L15:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        String s29 = s6;
        String s47 = s4;
        String s65 = s2;
        String s79 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s29;
        s8 = s9;
        s9 = s47;
        s10 = s11;
        s11 = s65;
        s13 = s79;
          goto _L20
_L16:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s30 = s6;
        String s48 = s4;
        String s66 = s2;
        String s80 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s30;
        s8 = s9;
        s9 = s48;
        s10 = s11;
        s11 = s66;
        s13 = s80;
          goto _L20
        s13 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s31 = s6;
        String s49 = s4;
        String s67 = s2;
        String s81 = s;
        s = s13;
        s2 = s3;
        s3 = s10;
        s4 = s5;
        s5 = s8;
        s6 = s7;
        s7 = s31;
        s8 = s9;
        s9 = s49;
        s10 = s11;
        s11 = s67;
        s13 = s81;
          goto _L20
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new UserAddress(i, s, s12, s2, s11, s4, s9, s6, s7, s8, s5, s10, s3, flag, s1, s13);
        }
    }

    public UserAddress[] bu(int i)
    {
        return new UserAddress[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aA(parcel);
    }

    public Object[] newArray(int i)
    {
        return bu(i);
    }
}
